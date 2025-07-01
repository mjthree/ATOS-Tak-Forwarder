# Git Setup Guide for ATOS Tracker

This guide will help you set up Git for your ATOS tracker project and deploy it to Raspberry Pi.

## Initial Git Setup (if not already done)

### 1. Initialize Git Repository (if needed)
```bash
git init
git add .
git commit -m "Initial commit: ATOS tracker dashboard with Raspberry Pi service setup"
```

### 2. Create Remote Repository

You have several options for hosting your Git repository:

#### Option A: GitHub
1. Go to [GitHub](https://github.com) and create a new repository
2. Name it something like `atos-tracker-dashboard`
3. Make it private if you prefer
4. Don't initialize with README (since you already have one)

#### Option B: GitLab
1. Go to [GitLab](https://gitlab.com) and create a new project
2. Name it `atos-tracker-dashboard`
3. Choose visibility level

#### Option C: Self-hosted Git
If you have your own Git server, create a repository there.

### 3. Add Remote and Push
```bash
# Replace with your actual repository URL
git remote add origin https://github.com/yourusername/atos-tracker-dashboard.git
git branch -M main
git push -u origin main
```

## Raspberry Pi Deployment

### 1. Install Git on Raspberry Pi
```bash
sudo apt update
sudo apt install git
```

### 2. Clone the Repository
```bash
cd /home/pi
git clone https://github.com/yourusername/atos-tracker-dashboard.git atos-newest
cd atos-newest
```

### 3. Install and Configure
```bash
# Make scripts executable
chmod +x install_service.sh setup_firewall.sh

# Install the service
sudo ./install_service.sh

# Configure firewall
sudo ./setup_firewall.sh
```

### 4. Configure Serial Port
Edit `marshall_tak.py` and change the serial port:
```python
# Change from:
ser = serial.Serial('COM4', 115200, timeout=1)

# To:
ser = serial.Serial('/dev/ttyUSB0', 115200, timeout=1)
```

### 5. Start the Service
```bash
sudo systemctl start atos-tracker
sudo systemctl enable atos-tracker
```

## Updating the Application

### From Development Machine

1. **Make your changes**
2. **Commit and push:**
   ```bash
   git add .
   git commit -m "Description of your changes"
   git push
   ```

### On Raspberry Pi

1. **Pull the latest changes:**
   ```bash
   cd /home/pi/atos-newest
   git pull
   ```

2. **Restart the service:**
   ```bash
   sudo systemctl restart atos-tracker
   ```

## Git Workflow Best Practices

### 1. Branching Strategy
```bash
# Create a feature branch
git checkout -b feature/new-feature

# Make changes and commit
git add .
git commit -m "Add new feature"

# Push branch
git push origin feature/new-feature

# Merge to main (on GitHub/GitLab or locally)
git checkout main
git merge feature/new-feature
git push origin main
```

### 2. Configuration Management
The repository includes configuration files that might need to be customized per deployment:

- `tak_server_config.json` - TAK server settings
- `forwarding_config.json` - Tag forwarding settings
- `templates.json` - Saved templates

**Option 1: Keep configs in repo (current setup)**
- Pros: Easy deployment, version controlled
- Cons: Sensitive data in repo

**Option 2: Use environment-specific configs**
```bash
# Create environment-specific configs
cp tak_server_config.json tak_server_config.production.json
cp forwarding_config.json forwarding_config.production.json

# Add to .gitignore
echo "tak_server_config.production.json" >> .gitignore
echo "forwarding_config.production.json" >> .gitignore
```

### 3. Tagging Releases
```bash
# Create a release tag
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0

# On Raspberry Pi, checkout specific version
git checkout v1.0.0
```

## Troubleshooting

### Git Issues
```bash
# Check Git status
git status

# Check remote configuration
git remote -v

# Reset to last commit (if needed)
git reset --hard HEAD

# Clean untracked files
git clean -fd
```

### Deployment Issues
```bash
# Check if files were updated
ls -la

# Check service status
sudo systemctl status atos-tracker

# View service logs
sudo journalctl -u atos-tracker -f
```

## Security Considerations

1. **Repository Access**: Use private repositories if the code contains sensitive information
2. **SSH Keys**: Set up SSH keys for secure Git access
3. **Configuration**: Consider using environment variables for sensitive config data
4. **Backup**: Keep local backups of important configuration files

## Quick Commands Reference

### Development Machine
```bash
# Check status
git status

# Add all changes
git add .

# Commit changes
git commit -m "Your commit message"

# Push to remote
git push

# Create new branch
git checkout -b branch-name

# Switch branches
git checkout main
```

### Raspberry Pi
```bash
# Update from remote
git pull

# Check current branch
git branch

# Check commit history
git log --oneline -10

# Reset to specific commit
git reset --hard <commit-hash>
``` 