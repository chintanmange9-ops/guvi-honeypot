# 🚀 Railway Deployment Guide for PS-2 Honeypot

## 📋 **What You Need to Do**

### **Step 1: Prepare Your Repository**

1. **Initialize Git Repository**
   ```bash
   git init
   git add .
   git commit -m "PS-2 Agentic Honeypot System - Ready for deployment"
   ```

2. **Create GitHub Repository**
   - Go to https://github.com
   - Click "New Repository"
   - Name: `ps2-agentic-honeypot`
   - Make it **Public** (required for free Railway deployment)
   - Don't initialize with README (you already have one)

3. **Push to GitHub**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/ps2-agentic-honeypot.git
   git branch -M main
   git push -u origin main
   ```

### **Step 2: Deploy on Railway**

1. **Create Railway Account**
   - Go to https://railway.app
   - Click "Login" → "Login with GitHub"
   - Authorize Railway to access your GitHub

2. **Create New Project**
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose your `ps2-agentic-honeypot` repository
   - Click "Deploy Now"

3. **Configure Environment Variables**
   - Go to your project dashboard
   - Click "Variables" tab
   - Add these variables:
     ```
     X_API_KEY=hackathon-2026-secure-key
     DEPLOYMENT_MODE=production
     ```

4. **Get Your Permanent URL**
   - Go to "Settings" tab
   - Click "Generate Domain"
   - Your permanent URL will be: `https://your-project-name.up.railway.app`
   - **This URL never changes!**

### **Step 3: Test Your Deployment**

1. **Health Check**
   ```bash
   curl https://your-project-name.up.railway.app/
   ```

2. **API Test**
   ```bash
   curl -X POST https://your-project-name.up.railway.app/honeypot \
     -H "Content-Type: application/json" \
     -H "x-api-key: hackathon-2026-secure-key" \
     -d '{"message": "URGENT: Account blocked! Send 5000 to verify."}'
   ```

3. **PS-2 Format Test**
   ```bash
   curl -X POST https://your-project-name.up.railway.app/honeypot \
     -H "Content-Type: application/json" \
     -H "x-api-key: hackathon-2026-secure-key" \
     -d '{
       "sessionId": "test-001",
       "message": {
         "sender": "scammer",
         "text": "Your bank account will be blocked today. Verify immediately.",
         "timestamp": 1770005528731
       },
       "conversationHistory": [],
       "metadata": {
         "channel": "SMS",
         "language": "English",
         "locale": "IN"
       }
     }'
   ```

## ✅ **Verification Checklist**

Before submitting to hackathon:

- [ ] Repository is public on GitHub
- [ ] Railway deployment is successful
- [ ] Permanent URL is working
- [ ] Health check returns 200 OK
- [ ] API endpoints respond correctly
- [ ] PS-2 format is supported
- [ ] Environment variables are set
- [ ] GUVI callback is configured

## 🎯 **Final Steps for Hackathon Submission**

1. **Copy Your Permanent URL**
   - Example: `https://ps2-honeypot-production.up.railway.app`

2. **Submit to Hackathon Platform**
   - Use this permanent URL in your submission
   - Include API key: `hackathon-2026-secure-key`

3. **Keep Deployment Running**
   - Railway free tier: 500 hours/month
   - Your app will stay online during evaluation

## 🔧 **Troubleshooting**

### **Build Fails**
- Check `requirements.txt` is present
- Ensure all dependencies are listed
- Check Railway build logs

### **App Crashes**
- Check Railway logs in dashboard
- Verify environment variables are set
- Ensure port configuration is correct

### **API Not Responding**
- Test health endpoint first: `/health`
- Check if Railway domain is generated
- Verify firewall/network settings

## 💡 **Pro Tips**

- **Railway automatically detects Python** and installs dependencies
- **Logs are available** in Railway dashboard for debugging
- **Free tier is sufficient** for hackathon evaluation
- **URL never changes** once generated
- **Auto-deploys** when you push to GitHub

## 🆘 **Need Help?**

If you encounter issues:
1. Check Railway dashboard logs
2. Test locally first: `python honeypot_server.py`
3. Verify GitHub repository is public
4. Ensure all files are committed and pushed

---

**🎯 Result: Permanent URL ready for hackathon submission!**