# Base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the Flask port
EXPOSE 5000

ENTRYPOINT ["sh", "-c", "flask --app src init-db && flask --app src run --host=0.0.0.0 -p 8080 --debug"]
