# Use the official Python 3.8 image as base
FROM python:3.8

# Set working directory
WORKDIR /app

# Copy application files to the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
