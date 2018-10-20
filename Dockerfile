# Use an official Python runtime as a parent image
FROM python:3.7-slim

# Set the working directory
WORKDIR /prova

COPY requirements.txt /prova

# Install any needed packages specified in requirements.txt
RUN pip install django
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80
