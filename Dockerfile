# Use the official imar from the docker hub
FROM python:3.9-slim

# Set the wokring directory
WORKDIR /app

#Copy the current directory contents in the container at  /app
COPY . /app

# Install any needed package specified in requirements.txt
RUN pip install flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the contained launches
CMD ["python","app.py"]