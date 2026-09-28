# Hugging Face Spaces Setup Guide for Telegram Bot

Is project me **2:00 AM IST (India Time)** daily reset system apply kar diya gaya hai. Kyonki Hugging Face Spaces UTC timezone me chalta hai, Python code automatically UTC aur IST offset convert karke har raat **02:00 AM IST** par sabhi users ka limit reset kar dega!

## 🚀 Hugging Face Spaces deployment steps:

1. **Create Space**:
   - Go to [Hugging Face Spaces](https://huggingface.co/new-space).
   - Space name set karein.
   - SDK Select karein: **Gradio** or **Docker**.
   
2. **Upload Files**:
   Is project directory ke sabhi files ko upload / push karein:
   - `app.py`
   - `bot.py`
   - `database.py`
   - `config.py`
   - `requirements.txt`

3. **Set Secrets / Environment Variables in HF Space Settings**:
   Space -> **Settings** -> **Variables and secrets**:
   - `BOT_TOKEN` = `8801935577:AAGEehNQczG7pS9-3hejpFzphOFS2xz-L6o`
   - `BOT_USERNAME` = `TESRYINN_BOT`
   - `ADMIN_USER_ID` = `your_numeric_telegram_user_id`
   - `DAILY_LIMIT` = `5`

   *(Optional if Hugging Face server blocks Telegram API directly):*
   - `TELEGRAM_PROXY` = `http://your-proxy-address:port` (or `socks5://...`)
   - `TELEGRAM_BASE_URL` = `https://api.telegram.org/bot` (or custom Cloudflare reverse proxy URL)

4. **Network Timeout & Retry Fix Applied**:
   Code automatically handles Hugging Face network delays using 60s HTTPX timeouts and `bootstrap_retries=-1` (infinite startup reconnect loop).

5. **Done!**
   App build hote hi Hugging Face Spaces par bot background me start ho jayega aur dashboard Gradio UI par show hoga.

