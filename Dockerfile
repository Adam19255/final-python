# Use Python 3.7 base image
FROM python:3.7-slim

# Set working directory in container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Create database directory
RUN mkdir -p /app/data

# Run the application
CMD ["python", "app.py"]