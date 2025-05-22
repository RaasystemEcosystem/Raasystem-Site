# deploy.ps1

Write-Host "🚀 Deploying Raasystem site..."

# Change directory to your site folder
cd "C:\Users\hp\raasystem-site"

# Git push
git add .
git commit -m "Automated deploy: latest updates"
git push origin main

# Sync with AWS S3
aws s3 sync . s3://raasystem-site --delete

Write-Host "✅ Deployment complete: GitHub and S3 are up to date."

