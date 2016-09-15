FROM ubuntu:14.04

RUN apt-get update && apt-get upgrade

# install all packages you need
RUN apt-get install vim \
  python \
  git

ADD testfile /temp

# Compressing your run commands to as little lines possible shrinks the overall image (docker best practice) 

# in terminal (~)
# ~ docker build . (dot specifies this `Dockerfile`) -t my-docker-image

# once built you want to be able to run this image as container locally

# ~ docker run -it (i for interactive) my-docker-image bash
# you should now be dropped to a bash shell (~)
 

# ADD - adds a file to this image, uncomment the line below to test

# ~ cd /temp
# ~ ls
# (you should now see testfile that you added)
