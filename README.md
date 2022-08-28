[![CircleCI](https://circleci.com/gh/ogagaoghene/udacity-microservices-project-4.svg?style=svg)](https://circleci.com/gh/ogagaoghene/udacity-microservices-project-4)

## What is this?

The primary purpose of this project is to demonstrate how to containerize a machine learning project with `docker`and `kubernetes`. 

It is made as part of the curriculum of Udacity's Cloud DevOps Engineer Nanodegree Program, project Operationalize a Machine Learning Microservice API.
This work is based on [Udacity's starter code](https://github.com/udacity/DevOps_Microservices).   
In this repo a pre-trained, `sklearn` model is included that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).  

## Installation
### Setup the Environment (for native use)
* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

Linux, Mac and Windows 10 WSL:
```bash
$ python -m venv ~/.devops/bin/activate
$ source ~/.devops/bin/activate
(.devops)$ make install
```
## Usage
### Using with docker
```bash
$ ./run_docker.sh
```
### Using with kubernetes
```bash
$ ./run_kubernetes.sh
```
### Make a prediction
Either run `make_prediction.sh` or send a http `POST` request to the the respective endpoint, `http://localhost:80/predict`. Study the `make_prediction.sh` file as to how the payload should look like.
