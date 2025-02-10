# Docker introduction
Docker helps development by providing a tool called a container. A container is a lightweight, isolated environment that shares the host OS kernel but runs independently. Unlike traditional virtual machines, containers don’t require an entire guest OS, making them much more efficient. Instead of consuming large amounts of resources, containers share system resources with the host but use only what they need.

## Terminology:
* `Docker Image`: A blueprint for creating containers. It includes everything needed to run an application—code, runtime, libraries, and dependencies. Images are read-only and can be shared via Docker registries.

* `Docker Hub`: A cloud-based registry where users can store, share, and retrieve Docker images. It is the default registry for Docker images but alternatives exist, such as AWS Elastic Container Registry (ECR) or Google Container Registry (GCR).

* `Docker Container`: A running instance of a Docker image. It provides an isolated runtime environment, ensuring that an application runs with all its dependencies bundled inside. Containers are lightweight, fast, and portable across different environments.

* `Docker CLI`: A tool used to interact with Docker. It allows users to manage containers, images, and other Docker resources using commands like docker run, docker ps, and docker stop. The CLI sends instructions to the Docker daemon via a REST API.

* `Docker Daemon (dockerd)`: A background service that manages Docker containers and images. It listens for API requests (from the CLI or other tools) and executes the necessary actions to build, run, and manage containers.


## Useful commands
```bash
  docker images # Lists all images available on your machine
```

```bash
  docker ps # Runs an image (builts it from) a Docker Image. Add the -a flag to list all containers, even those exited
```

```bash
  docker run <image-name> # Runs an image (builts it from) a Docker Image
```
