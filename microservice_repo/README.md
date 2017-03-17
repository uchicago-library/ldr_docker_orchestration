To Setup Up:
```
$ bash setup.sh
```

To run
```
# docker-compose up -d
```

To exit
```
# docker-compose down
```


setup.sh clones the relevant git repositories and builds/copies configs into the directories

The included Dockerfiles handle building the images and reading the configs

The docker-compose.yml file stitches all of these together into a networked stack and properly configures environmental variables in each machine.

Operation can be customized via setting the appropriate environment variables before running docker-compose up for the first time (or docker-compose up --build after that) or by editing the .env file.

Everything is currently set up to fire up a series of Docker containers appropriate for dev/test environments. Productionizing this setup (once complete) will require some edits to the configs and potentially to the docker-compose/dockerfiles, depending on what storage backends are being used, what kind of logging is desired, etc.

OPTIONS

UNIFIER_EXTERNAL_PORT

The port for the unifier load balancer to listen on (the port everything will be accessible to from the outside world)


DB_PATH

The path on the host to bind inside of the container to hold the mongodb


REFRESH

How often for the DNS records/caches in the load balancers to update

TIMEOUT

How long (in seconds) for the load balancers, webservers, and gunicorn instances to allow any single connection to remain open for


MAX_FSIZE

The maximum file size
