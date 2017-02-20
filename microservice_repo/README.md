To Setup Up:
```
$ sh setup.sh
```

To run
```
# docker-compose up -d
```

To exit
```
# docker-compose down
```


setup.sh clones the relevant git repositories and copies configs into the directories

The included Dockerfiles handle building the images and reading the configs

The docker-compose.yml file stitches all of these together into a networked stack and properly configures environmental variables in each machine.

Operation can be customized via setting the appropriate environment variables before running docker-compose up for the first time (or docker-compose up --build after that) or by editing the .env file.

OPTIONS

INGRESS_EXTERNAL_PORT

The port on the host that the ingress service listens on.

ACCS_EXTERNAL_PORT

The port on the host that the idnest service for accessions listens on.

MATERIALSUITE_EXTERNAL_PORT

The port on the host that the materialsuite endpoint service listens on

LTS_PATH

The path on the host to bind inside of the container to serve as the long term storage environment

PREMIS_PATH

The path on the host to bind inside of the container to serve as the live premis environment

DB_PATH

The path on the host to bind inside of the container to hold the mongodb which powers the idnest
