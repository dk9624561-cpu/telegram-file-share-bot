# Telegram File Share Bot

A Telegram bot and Gradio dashboard for indexing and sharing files/lectures from private source channels to index/destination channels, with download limits, multi-admin management, and subscription control.

## 📁 Project Structure

- `bot.py`: Main Telegram bot logic and command handlers
- `app.py`: Gradio web dashboard + background bot runner
- `database.py`: SQLite database operations (lectures, users, admins, mappings, downloads)
- `config.py`: Environment configuration loader and validator
- `requirements.txt`: Python dependencies
- `.env.example`: Template for environment variables

## 🚀 Setup Instructions

1. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

2. **Configure Environment:**
   - Copy `.env.example` to `.env`
   - Fill in your `BOT_TOKEN`, `BOT_USERNAME`, and `ADMIN_USER_ID`.

3. **Run the Project:**
   - To run the bot with the web dashboard:
     ```bash
     python app.py
     ```
   - Or run only the bot directly:
     ```bash
     python bot.py
     ```
