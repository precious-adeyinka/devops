FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
RUN pip install --upgrade pip==20.2.2 &&\
pip install -r requirements.txt

#hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 8080

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

