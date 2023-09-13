# set base image (host OS)
FROM python:3.8-slim AS reduce_docker_image

# RUN update-ca-certificates

# set the working directory in the container
WORKDIR /code
ENV path ./rooms

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt

# defines the environment to development
ENV FLASK_ENV=development

# install curl
RUN apt-get update && apt-get install -y curl

# HEALTHCHECK
HEALTHCHECK --interval=60s --timeout=60s \
    CMD curl --fail http://localhost:3000 || exit 1  

# copy the content of the local src directory to the working directory
COPY . .

# #stage 2: reduce docker image size runtime
# FROM reduce_docker_image

# # set the working directory in the container
# WORKDIR /code

# COPY --from=reduce_docker_image /code /code

# command to run on container start
CMD [ "python", "chatApp.py" ]