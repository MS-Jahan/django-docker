# Use the official Python image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and change to the app directory
WORKDIR /usr/src/app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the local code to the container image
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Run the web service on container startup
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]