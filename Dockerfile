# Use the official Python image from the Docker Hub
FROM python:3.10

# Expose port 5005
EXPOSE 5005

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt to the working directory
COPY ./requirements.txt requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy all files to the working directory
COPY . /app

# Command to run the application
CMD ["python", "app.py"]

