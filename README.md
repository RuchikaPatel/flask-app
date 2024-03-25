Here, we are containerizing Flask applications.

So to do that we need to first develop the Dockerfile, where we will give an instruction on how to build docker image.
Once you have build the Dockerfile, fire below command to build an image:
docker build -t <imagename>:<tag> .     (imagename= the name you want to give to your image, give a tag, let say latest, . means current directory)
you can check your image by docker images

once you have build an image, you can run docker container by using following command
docker run -d -p 80:80 <imagename> (-p mapping your container port to host port, -d run in detach mode)
you can check list of container running by : docker ps -a

you can also check on browser by <IPaddress>:80
you will see an output on browser saying: Hey, You succesfully containerized the application!!
