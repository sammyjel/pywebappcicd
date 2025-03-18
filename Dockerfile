FROM python:3.12

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-apt \
    python3-debian \
    libdbus-1-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
