#!/bin/bash

# ATOS TAK Forwarder - Optimized Version Uninstaller
# This script removes the optimized version and restores from backup if available

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Configuration
SERVICE_NAME="atos-tracker"
SERVICE_FILE="/etc/systemd/system/${SERVICE_NAME}.service"
INSTALL_DIR="/opt/atos-tak-forwarder"
BACKUP_DIR="${INSTALL_DIR}/backup"
LOG_DIR="/var/log/atos-tak-forwarder"
CONFIG_DIR="/etc/atos-tak-forwarder"

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_header() {
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================${NC}"
}

# Function to check if running as root
check_root() {
    if [[ $EUID -ne 0 ]]; then
        print_error "This script must be run as root (use sudo)"
        exit 1
    fi
}

# Function to stop and disable service
stop_service() {
    print_header "Stopping Service"
    
    if systemctl is-active --quiet "$SERVICE_NAME"; then
        print_status "Stopping $SERVICE_NAME service"
        systemctl stop "$SERVICE_NAME"
        sleep 2
    else
        print_status "Service $SERVICE_NAME is not running"
    fi
    
    if systemctl is-enabled --quiet "$SERVICE_NAME"; then
        print_status "Disabling $SERVICE_NAME service"
        systemctl disable "$SERVICE_NAME"
    fi
}

# Function to remove service file
remove_service() {
    print_header "Removing Service File"
    
    if [[ -f "$SERVICE_FILE" ]]; then
        print_status "Removing service file: $SERVICE_FILE"
        rm -f "$SERVICE_FILE"
        systemctl daemon-reload
        print_status "Service file removed"
    else
        print_status "Service file not found"
    fi
}

# Function to remove installation files
remove_files() {
    print_header "Removing Installation Files"
    
    if [[ -d "$INSTALL_DIR" ]]; then
        print_status "Removing installation directory: $INSTALL_DIR"
        rm -rf "$INSTALL_DIR"
        print_status "Installation directory removed"
    else
        print_status "Installation directory not found"
    fi
    
    if [[ -d "$LOG_DIR" ]]; then
        print_status "Removing log directory: $LOG_DIR"
        rm -rf "$LOG_DIR"
        print_status "Log directory removed"
    fi
    
    if [[ -d "$CONFIG_DIR" ]]; then
        print_status "Removing config directory: $CONFIG_DIR"
        rm -rf "$CONFIG_DIR"
        print_status "Config directory removed"
    fi
}

# Function to remove log rotation
remove_log_rotation() {
    print_header "Removing Log Rotation"
    
    if [[ -f "/etc/logrotate.d/atos-tak-forwarder" ]]; then
        print_status "Removing log rotation configuration"
        rm -f "/etc/logrotate.d/atos-tak-forwarder"
        print_status "Log rotation configuration removed"
    else
        print_status "Log rotation configuration not found"
    fi
}

# Function to restore from backup
restore_backup() {
    print_header "Checking for Backups"
    
    if [[ -d "$BACKUP_DIR" ]]; then
        print_status "Found backup directory: $BACKUP_DIR"
        
        # List available backups
        BACKUPS=($(ls -1 "$BACKUP_DIR" | grep "^backup_" | sort -r))
        
        if [[ ${#BACKUPS[@]} -eq 0 ]]; then
            print_status "No backups found"
            return
        fi
        
        echo -e "${CYAN}Available backups:${NC}"
        for i in "${!BACKUPS[@]}"; do
            echo -e "  $((i+1)). ${BACKUPS[$i]}"
        done
        
        echo
        read -p "Do you want to restore from backup? (y/N): " -n 1 -r
        echo
        
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            if [[ ${#BACKUPS[@]} -eq 1 ]]; then
                SELECTED_BACKUP="${BACKUPS[0]}"
            else
                read -p "Enter backup number (1-${#BACKUPS[@]}): " BACKUP_NUM
                if [[ $BACKUP_NUM -ge 1 && $BACKUP_NUM -le ${#BACKUPS[@]} ]]; then
                    SELECTED_BACKUP="${BACKUPS[$((BACKUP_NUM-1))]}"
                else
                    print_error "Invalid backup number"
                    return
                fi
            fi
            
            print_status "Restoring from backup: $SELECTED_BACKUP"
            
            # Restore installation
            if [[ -d "$BACKUP_DIR/$SELECTED_BACKUP" ]]; then
                cp -r "$BACKUP_DIR/$SELECTED_BACKUP" "$INSTALL_DIR"
                print_status "Installation restored"
            fi
            
            # Restore service file
            if [[ -f "${BACKUP_DIR}/${SELECTED_BACKUP}_service" ]]; then
                cp "${BACKUP_DIR}/${SELECTED_BACKUP}_service" "$SERVICE_FILE"
                systemctl daemon-reload
                print_status "Service file restored"
            fi
            
            # Restore config files
            if [[ -d "${BACKUP_DIR}/${SELECTED_BACKUP}_config" ]]; then
                cp -r "${BACKUP_DIR}/${SELECTED_BACKUP}_config" "$CONFIG_DIR"
                print_status "Configuration files restored"
            fi
            
            print_status "Backup restoration completed"
        fi
    else
        print_status "No backup directory found"
    fi
}

# Function to show uninstall summary
show_summary() {
    print_header "Uninstall Summary"
    
    echo -e "${GREEN}✅ Uninstallation completed successfully!${NC}"
    echo
    
    if [[ -d "$BACKUP_DIR" ]]; then
        echo -e "${CYAN}Backup Information:${NC}"
        echo -e "  Backup directory: $BACKUP_DIR"
        echo -e "  Backups available: $(ls -1 "$BACKUP_DIR" | grep "^backup_" | wc -l)"
        echo
        echo -e "${YELLOW}To restore from backup, run:${NC}"
        echo -e "  sudo ./uninstall_optimized.sh --restore"
        echo
    fi
    
    echo -e "${CYAN}Removed Components:${NC}"
    echo -e "  ✅ Service: $SERVICE_NAME"
    echo -e "  ✅ Installation: $INSTALL_DIR"
    echo -e "  ✅ Logs: $LOG_DIR"
    echo -e "  ✅ Config: $CONFIG_DIR"
    echo -e "  ✅ Log rotation: /etc/logrotate.d/atos-tak-forwarder"
    echo
    echo -e "${GREEN}Optimized ATOS TAK Forwarder has been removed.${NC}"
}

# Function to show help
show_help() {
    echo -e "${BLUE}ATOS TAK Forwarder - Optimized Version Uninstaller${NC}"
    echo
    echo "Usage: $0 [OPTIONS]"
    echo
    echo "Options:"
    echo "  --restore    Restore from backup after uninstall"
    echo "  --help       Show this help message"
    echo
    echo "This script will:"
    echo "  1. Stop and disable the atos-tracker service"
    echo "  2. Remove the service file"
    echo "  3. Remove installation files"
    echo "  4. Remove log rotation configuration"
    echo "  5. Optionally restore from backup"
    echo
}

# Main uninstall function
main() {
    local RESTORE_FROM_BACKUP=false
    
    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            --restore)
                RESTORE_FROM_BACKUP=true
                shift
                ;;
            --help)
                show_help
                exit 0
                ;;
            *)
                print_error "Unknown option: $1"
                show_help
                exit 1
                ;;
        esac
    done
    
    print_header "ATOS TAK Forwarder - Optimized Version Uninstaller"
    echo -e "${CYAN}This will remove the optimized version and all associated files${NC}"
    echo
    
    # Check if running as root
    check_root
    
    # Confirm uninstallation
    echo -e "${YELLOW}This will permanently remove the optimized ATOS TAK Forwarder.${NC}"
    echo -e "${YELLOW}All configuration and log files will be deleted.${NC}"
    echo
    read -p "Are you sure you want to continue? (y/N): " -n 1 -r
    echo
    
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_status "Uninstallation cancelled"
        exit 0
    fi
    
    # Stop service
    stop_service
    
    # Remove service file
    remove_service
    
    # Remove files
    remove_files
    
    # Remove log rotation
    remove_log_rotation
    
    # Restore from backup if requested
    if [[ "$RESTORE_FROM_BACKUP" == true ]]; then
        restore_backup
    fi
    
    # Show summary
    show_summary
}

# Run main uninstall
main "$@" 