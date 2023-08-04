# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir Flask

# Expose the application's port
EXPOSE 5000

# Set the entry point to run the application
CMD ["python", "app.py"]

