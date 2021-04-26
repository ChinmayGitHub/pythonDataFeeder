# docker run -d --name pythonDataFeeder -p 5000:5000 pythondatafeeder

# set base image (host OS)
FROM python:2.7-slim

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY api/ .

# command to run on container start
CMD [ "python", "./api.py" ]