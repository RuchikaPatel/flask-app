# Base Image
FROM python:3.9

# Current working directory
WORKDIR /app

#Copy the source file to the container's working directory
COPY . .

# install all the required dependencies (that is mentioned in requirments.txt)
RUN pip install -r requirements.txt

# Run the python app
CMD ["python","run.py"] 
