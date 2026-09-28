FROM python:3.11-slim

WORKDIR /app

# Prefer IPv4 over IPv6 to prevent Telegram API handshake timeouts on cloud
RUN echo "precedence ::ffff:0:0/96 100" >> /etc/gai.conf

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose default Hugging Face port
EXPOSE 7860

# Start Gradio dashboard & background Telegram bot
CMD ["python", "app.py"]
