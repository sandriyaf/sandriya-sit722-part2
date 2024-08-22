# Dockerfile for book_catalog microservice
# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY book_catalog/requirements.txt 

# Install any required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container 
COPY book_catalog 

# Command to run the FastAPI application using Uvicorn
CMD ["uvicorn", "book_catalog.main:app", "--host", "0.0.0.0", "--port", "80"]
