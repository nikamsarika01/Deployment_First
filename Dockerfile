# Use an existing base image
FROM python:3.8.13-slim-buster

# Set the working directory inside the container
WORKDIR /usr/src/app


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Copy the requirements.txt file to the working directory
COPY ./requirements.txt /usr/src/app

# Install the required dependencies
RUN pip install  -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . /usr/src/app



# Expose any necessary ports
EXPOSE 8000

# Define the command to run when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
