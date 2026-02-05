# 🚀 Render Deployment Guide for PS-2 Honeypot

🌐 **Live System:** https://guvi-honeypot-1iv9.onrender.com/

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
   - Make it **Public** (required for free Render deployment)
   - Don't initialize with README (you already have one)

3. **Push to GitHub**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/ps2-agentic-honeypot.git
   git branch -M main
   git push -u origin main
   ```

### **Step 2: Deploy on Render**

1. **Go to Render**
   - Visit https://render.com
   - Click "Get Started for Free"
   - Sign up with GitHub account

2. **Create New Web Service**
   - Click "New" → "Web Service"
   - Click "Connect" next to your GitHub repository
   - Select your `ps2-agentic-honeypot` repository

3. **Configure Deployment Settings**
   ```
   Name: guvi-honeypot (or your preferred name)
   Environment: Python 3
   Build Command: pip install -r requirements.txt
   Start Command: python honeypot_server.py
   ```

4. **Set Environment Variables**
   - Click "Environment" tab
   - Add these variables:
   ```
   X_API_KEY = hackathon-2026-secure-key
   DEPLOYMENT_MODE = production
   ```

5. **Deploy**
   - Click "Create Web Service"
   - Wait 3-5 minutes for deployment
   - Your URL will be: `https://your-service-name.onrender.com`

### **Step 3: Test Your Deployment**

1. **Health Check**
   ```bash
   curl https://your-service-name.onrender.com/
   ```

2. **API Test**
   ```bash
   curl -X POST https://your-service-name.onrender.com/honeypot \
     -H "Content-Type: application/json" \
     -H "x-api-key: hackathon-2026-secure-key" \
     -d '{"message": "URGENT: Account blocked! Send 5000 to verify."}'
   ```

3. **PS-2 Format Test**
   ```bash
   curl -X POST https://your-service-name.onrender.com/honeypot \
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

## 🔧 **Troubleshooting**

### **Common Issues**

1. **Build Fails**
   - Check `requirements.txt` has all dependencies
   - Ensure Python version compatibility

2. **Service Won't Start**
   - Verify `python honeypot_server.py` works locally
   - Check environment variables are set

3. **API Returns Errors**
   - Test locally first: `python honeypot_server.py`
   - Check logs in Render dashboard

### **Render Free Tier Limits**

- ✅ **750 hours/month** of runtime
- ✅ **Automatic sleep** after 15 minutes of inactivity
- ✅ **Automatic wake** on first request
- ✅ **Perfect for hackathon evaluation**

## 🎯 **For Hackathon Submission**

### **Your Permanent URL**
Once deployed, your URL will be:
```
https://your-service-name.onrender.com
```

### **Submit This URL**
- Provide this URL to hackathon evaluators
- URL never changes (permanent)
- Always accessible during evaluation
- No need to keep your computer running

## ✅ **Success Checklist**

- [ ] Repository pushed to GitHub
- [ ] Render service created and deployed
- [ ] Environment variables configured
- [ ] Health check returns 200 OK
- [ ] API test returns scam detection response
- [ ] PS-2 format test works correctly
- [ ] URL submitted to hackathon platform

## 🚀 **Live Example**

**Working System:** https://guvi-honeypot-1iv9.onrender.com/

This is a live example of the PS-2 Agentic Honeypot System deployed on Render, ready for hackathon evaluation.

---

**🎉 Your PS-2 Agentic Honeypot System is now live and ready for evaluation!**