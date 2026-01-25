# ================================
# Fully Automated Frontend Deployment (S3 + GitHub)
# ================================

Write-Host "🚀 Deploying Raasystem frontend site..."

# ------------------------------
# Step 1: Change to site directory
# ------------------------------
$siteDir = "C:\Users\hp\raasystem-site"
Set-Location $siteDir

# ------------------------------
# Step 2: Git commit & push
# ------------------------------
try {
    git add .
    git commit -m "Automated deploy: latest updates"
    git push origin main
    Write-Output "✅ GitHub repository updated"
} catch {
    Write-Warning "⚠️ No changes to commit or Git failed"
}

# ------------------------------
# Step 3: Sync with AWS S3
# ------------------------------
$bucketName = "raasystem-site"
try {
    aws s3 sync . s3://$bucketName --delete
    Write-Output "✅ S3 bucket '$bucketName' synced successfully"
} catch {
    Write-Error "❌ S3 sync failed. Check AWS CLI and bucket permissions."
    exit 1
}

# ------------------------------
# Step 4: Output site URL
# ------------------------------
$siteUrl = "https://$bucketName.s3.amazonaws.com/index.html"
Write-Output "✅ Frontend deployment complete!"
Write-Output "Site URL: $siteUrl"
Start-Process $siteUrl
