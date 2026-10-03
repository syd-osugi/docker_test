# 1. Use an official lightweight Python runtime as a base image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the requirements file first to leverage Docker cache
# COPY requirements.txt .

# 4. Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your application code into the container
COPY . .

# 6. Run your script when the container launches
CMD ["python", "hello.py"]
