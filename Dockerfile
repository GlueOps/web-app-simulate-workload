# Use an official Python runtime as a parent image
FROM python:3.11.8-alpine3.19@sha256:455fc75cfc2cae74520425036b62c6181079f7f6cc1dc0083aa5686dca2edb00

# Copy the files into the Docker image
COPY . .

# Install dependencies
# RUN pip install --no-cache-dir fastapi uvicorn[standard] gunicorn qrcode[pil]
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8000

# Run the command to start uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
