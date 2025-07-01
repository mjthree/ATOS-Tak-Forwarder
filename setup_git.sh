#!/bin/bash

# ATOS Tracker Git Setup Script
# This script helps set up Git for the ATOS tracker project

set -e

echo "🔧 ATOS Tracker Git Setup"
echo "========================="

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in a Git repository
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Check current status
echo ""
echo "📊 Current Git status:"
git status

echo ""
echo "🔍 Files that will be tracked:"
git ls-files | head -20
if [ $(git ls-files | wc -l) -gt 20 ]; then
    echo "... and $(($(git ls-files | wc -l) - 20)) more files"
fi

echo ""
echo "📋 Next steps:"
echo ""
echo "1. Review the files above to ensure they should be tracked"
echo "2. Add all files to Git:"
echo "   git add ."
echo ""
echo "3. Make your first commit:"
echo "   git commit -m \"Initial commit: ATOS tracker dashboard with Raspberry Pi service setup\""
echo ""
echo "4. Create a remote repository on GitHub/GitLab:"
echo "   - Go to GitHub.com or GitLab.com"
echo "   - Create a new repository named 'atos-tracker-dashboard'"
echo "   - Don't initialize with README (you already have one)"
echo ""
echo "5. Add remote and push:"
echo "   git remote add origin https://github.com/yourusername/atos-tracker-dashboard.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "6. On Raspberry Pi, clone the repository:"
echo "   cd /home/pi"
echo "   git clone https://github.com/yourusername/atos-tracker-dashboard.git atos-newest"
echo ""
echo "📖 See GIT_SETUP.md for detailed instructions and best practices" 