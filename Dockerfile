FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy python wheel from dist folder
COPY /dist/data_formulator-0.1.7-py3-none-any.whl /app

# Install python wheel using pip
RUN pip install data_formulator-0.1.7-py3-none-any.whl

EXPOSE 80

# Run the application - ideally on port 80?
CMD ["python", "-m", "data_formulator", "--port", "80"]