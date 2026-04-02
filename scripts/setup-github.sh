#!/bin/bash

# oh-my-qwen GitHub Setup Script
# This script helps you publish oh-my-qwen to GitHub

set -e

echo "🚀 oh-my-qwen GitHub Setup"
echo "=========================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git is not installed. Please install Git first.${NC}"
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo -e "${RED}❌ npm is not installed. Please install Node.js and npm first.${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Prerequisites check passed${NC}"
echo ""

# Get GitHub username
echo -n "Enter your GitHub username: "
read GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo -e "${RED}❌ GitHub username cannot be empty${NC}"
    exit 1
fi

REPO_NAME="oh-my-qwen"
REPO_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo "📋 Configuration:"
echo "   GitHub Username: ${GITHUB_USERNAME}"
echo "   Repository Name: ${REPO_NAME}"
echo "   Repository URL: ${REPO_URL}"
echo ""

# Check if repository exists
echo "🔍 Checking if repository exists..."
if curl -s -f "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}" > /dev/null 2>&1; then
    echo -e "${YELLOW}⚠️  Repository already exists!${NC}"
    echo -n "Do you want to continue and push to existing repository? (y/N): "
    read CONTINUE
    if [[ ! $CONTINUE =~ ^[Yy]$ ]]; then
        echo "Aborted."
        exit 0
    fi
else
    echo -e "${GREEN}✅ Repository does not exist yet${NC}"
    echo ""
    echo "📝 Please create a new repository on GitHub:"
    echo "   1. Go to https://github.com/new"
    echo "   2. Repository name: ${REPO_NAME}"
    echo "   3. Description: Multi-agent orchestration layer for Qwen Code CLI"
    echo "   4. Visibility: Public"
    echo "   5. ⚠️  DO NOT initialize with README, .gitignore, or license"
    echo "   6. Click 'Create repository'"
    echo ""
    echo -n "Press Enter after you've created the repository..."
    read
fi

echo ""
echo "🔧 Setting up repository..."

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    git init
    echo -e "${GREEN}✅ Initialized Git repository${NC}"
fi

# Update package.json with user info
echo ""
echo "📝 Updating package.json..."
if command -v jq &> /dev/null; then
    # Use jq if available
    jq --arg username "$GITHUB_USERNAME" --arg email "" '
      .author = ($username + (if $email != "" then " <" + $email + ">" else "" end)) |
      .repository.url = ("git+https://github.com/" + $username + "/oh-my-qwen.git") |
      .homepage = ("https://github.com/" + $username + "/oh-my-qwen") |
      .bugs.url = ("https://github.com/" + $username + "/oh-my-qwen/issues")
    ' package.json > package.json.tmp && mv package.json.tmp package.json
    echo -e "${GREEN}✅ Updated package.json${NC}"
else
    echo -e "${YELLOW}⚠️  jq not found. Please manually update package.json:${NC}"
    echo "   - author"
    echo "   - repository.url"
    echo "   - homepage"
    echo "   - bugs.url"
fi

# Add remote
echo ""
echo "🔗 Adding Git remote..."
if git remote | grep -q "^origin$"; then
    echo -e "${YELLOW}⚠️  Remote 'origin' already exists${NC}"
    echo -n "Do you want to update it? (y/N): "
    read UPDATE_REMOTE
    if [[ $UPDATE_REMOTE =~ ^[Yy]$ ]]; then
        git remote set-url origin "$REPO_URL"
    fi
else
    git remote add origin "$REPO_URL"
fi
echo -e "${GREEN}✅ Remote configured${NC}"

# Install dependencies
echo ""
echo "📦 Installing dependencies..."
npm install
echo -e "${GREEN}✅ Dependencies installed${NC}"

# Build project
echo ""
echo "🔨 Building project..."
npm run build
echo -e "${GREEN}✅ Build completed${NC}"

# Add files
echo ""
echo "📂 Adding files..."
git add .
echo -e "${GREEN}✅ Files added${NC}"

# Commit
echo ""
echo "💾 Creating initial commit..."
git commit -m "Initial commit: oh-my-qwen for Qwen Code

- Forked from oh-my-codex (https://github.com/Yeachan-Heo/oh-my-codex)
- Adapted for Qwen Code CLI
- Updated models to qwen-max, qwen-plus, qwen-turbo
- Changed CLI from 'omx' to 'omq'
- Added installation guide for OpenCode and Cline"
echo -e "${GREEN}✅ Initial commit created${NC}"

# Rename branch to main
echo ""
echo "🌿 Renaming branch to main..."
git branch -M main
echo -e "${GREEN}✅ Branch renamed${NC}"

# Push
echo ""
echo "🚀 Pushing to GitHub..."
git push -u origin main
echo -e "${GREEN}✅ Code pushed to GitHub${NC}"

echo ""
echo "=========================="
echo -e "${GREEN}🎉 Setup Complete!${NC}"
echo "=========================="
echo ""
echo "📍 Your repository is now live at:"
echo "   ${REPO_URL}"
echo ""
echo "📝 Next steps:"
echo "   1. ⭐ Star your repository"
echo "   2. 📝 Update README.md with your information"
echo "   3. 🏷️  Create your first release: git tag -a v1.0.0 -m 'Initial release'"
echo "   4. 🚀 Push tag: git push origin v1.0.0"
echo "   5. 📦 Publish to npm: npm publish --access public"
echo "   6. 🌐 Setup GitHub Pages (optional)"
echo "   7. 🐛 Create issue templates (already in .github/ISSUE_TEMPLATE/)"
echo "   8. ⚙️  Enable GitHub Actions in repository settings"
echo ""
echo "📚 Documentation:"
echo "   - See .github/README_PUBLISH.md for detailed guide"
echo "   - See INSTALL-OPENCODE-CLINE.md for integration guides"
echo "   - See MIGRATION_TO_QWEN.md for migration details"
echo ""
echo "🎊 Congratulations on publishing oh-my-qwen!"
echo ""
