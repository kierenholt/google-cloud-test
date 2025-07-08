# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy app files
COPY . .

# Expose port for Cloud Run
EXPOSE 8080

# Start the app
CMD ["python", "main.py"]
