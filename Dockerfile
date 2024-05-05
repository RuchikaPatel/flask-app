#------------------ STAGE 1 --------------------------
# Base Image
FROM python:3.9 AS backend-builder

# Set working directory
WORKDIR /app

# Copy the source files to the container's working directory
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# ------------------- STAGE 2 ----------------------------
FROM python:3.9-alpine

# Set working directory
WORKDIR /app

# Copy installed Python packages from the backend-builder stage
COPY --from=backend-builder /usr/local/lib/python3.9/site-packages/ /usr/local/lib/python3.9/site-packages/

# Copy application files
COPY --from=backend-builder /app /app

# Expose port if needed
#EXPOSE 5000

# Run the Python application
CMD ["python", "run.py"]

