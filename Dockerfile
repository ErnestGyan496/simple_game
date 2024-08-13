

# Use the official Python image from the Docker Hub
FROM python:3.12-alpine3.19

# Install dependencies needed for tkinter and turtle
RUN apk add --no-cache \
    tcl-dev \
    tk-dev \
    linux-headers \
    gcc \
    musl-dev \
    libc-dev \
    libffi-dev

# Create a working directory inside the container
WORKDIR /app

# Copy the Python script to the working directory inside the container
COPY geometry_game.v2.py /app/

# Run the Python script when the container starts
CMD ["python3", "geometry_game.v2.py"]
