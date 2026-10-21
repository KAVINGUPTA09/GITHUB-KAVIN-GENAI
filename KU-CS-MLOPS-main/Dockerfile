# Pull the python image from Docker HUB
# Use a lightweight python image
FROM python:3.14-slim

# set the working directory inside container
WORKDIR /app

# Copy dependency list before copying application code
COPY requirement.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# copy application code and save model inside /app

COPY . .

# Document the port used by the FastAPI application
EXPOSE 8000

# Start the API server when container is ready
# 0.0.0.0 - allows connections through the container's network interface
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]