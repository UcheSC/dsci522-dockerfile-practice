# dsci522-dockerfile-practice
Docker file Practice

# Steps
- Ensure conda-lock is installed
```bash conda install -c conda-forge conda-lock```

Below are the commands used in this practice section
```bash
docker build --tag practice-1 --platform=linux/amd64 . 
docker images
docker run --rm -it --platform=linux/amd64 practice-1 /bin/bash
docker run --rm -it --platform=linux/amd64 practice-1 bash
docker build --tag practice-1 --platform=linux/amd64 .
```

Commands from within the container
```bash
mamba update --file /tmp/conda-linux-64.lock 
```

Create and run the web app of the new container
```bash
docker build --tag practice-2 --platform=linux/amd64 .
docker run --rm -p 8888:8888 --platform=linux/amd64 practice-2
```

Setup Github Actions: simply put this is a workflow that performs certain steps based on triggers.

Setup a secret because the github Action requires authentication to Dockerhub

# Note
- Run the commands at each step, save debug man-hours
- Run the installations command locally to ensure they work before adding them to the Dockerfile
- **Diff between running commands in different layers and in one layer**
- **Why do we want a dockerfile for an image**
    - Ensure a paper trail: to know what the container actually does.

# License
Sodtware licensed under the [MIT License](https://spdx.org/licenses/MIT.html). View the [License file](LICENSE.md) for more information 

