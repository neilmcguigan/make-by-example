# Images

Build `Dockerfile` into an image:

`docker build .`

List images:

`docker images`

Remove image:

`docker rmi $name`

Prune all images: 

`docker image prune`

# Containers

Run a container:
`-d` for detached
`--rm` to autoremove on stop

`docker run -it -p local:remote -d $tagname` 

Start a stopped container (`-a` for attached):

`docker start $name`

List running containers:

`docker ps -a`

Stop a container:

`docker stop $name`

Attach:

`docker attach $name`

Show logs: (-f to follow)

`docker logs $name`

Remove (a stopped container):

`docker rm $name`

Prune containers:

`docker container prune`