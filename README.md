# Docker
Official docs at: https://docs.docker.com/get-started/docker-overview/

## Introduction
Docker is a platform that allows developers and teams to create, test, ship and run applications. It accomplishes this by packaging an application and all its dependencies (like libraries, runtimes or even an OS) into a single, isolated unity called a <b>Container</b>.

A <b>Container</b> is an isolated environment, but it runs inside the OS's own kernel. This is quite different than a Virtual Machine, that would allocate resources from its host and create a whole virtualization of the hardware, with a new kernel and isolated processes. Althought you can achieve this isolate with both of approaches using containers offers advatanges, like a lightweight environment and a fast startup, which can reduce the massive overhead from virtualization, especially for a large amount of apps.

Docker uses linux features, such as <i>namespaces</i>, <i>control groups</i> and <i>OverlayFS</i> to achieve isolation, resource management and file sharing efficiency without creating a new OS. Because this isolation is created with an environment that can be reproduced and shared developers can create, test and ship applications much more consistently, avoiding compatibility issues, for example running the same Java app with JDK17 in on machine, and JDK25 in another.

## Components
Docker provides several tools to manage the life cycle of containers:

* <b>Docker Engine: </b> is the core service that builds, runs and manages containers, it runs natively on linux. 
* <b>Docker CLI: </b>  command line interface for interacting with docker engine
* <b>Docker Desktop: </b> a GUI interface (bundled with docker engine) for managing images and running containers, used primarily by systems that don't have linux's kernel features.
* <b>Docker Hub: </b> public registry to pull built images remotely.
* <b>Dockerfile: </b> script created by the developers with step-by-step instructions on how to create and run an image
* <b>Image: </b> build from a dockerfile, it's a read-only template used to create and run the containers. They can be shared with other teams or developers.
* <b>Container: </b> it's the isolated, running instance of an image.

## Building images
Images are built from a script, the dockerfile. An image is built with <b>layers</b> stacked upon each other, like the following image:

![content](./diagram.png)

When you write a dockerfile you can run different instructions, and most of them create a new layer. If you use a layer 
in more than one container docker might cache them locally and just share the binaries with all containers that ask for it. For example, you can write the instruction `FROM ubuntu:22`, this tells docker that a layer containing the ubuntu22 image must be downloaded during build process, but if you have locally this image (and its layers) docker just provides the local one, without downloading anything. If one hundred containers need ubuntu22 you only have to donwload it one time and share it with all these containers. Because images are definied by a unique hash all of them can be cached and share between containers.

Once all layers are provided and the container runs, a single filesystem is created with all layers combined into a single mounted unit. Docker provides commands for accessing this filesystem, where you can run standard linux commands if you built an image with a linux distro, for example.  

You can modify the container's data inside a <b>writable layer</b>, which is deleted once the container shuts down. The image itself is static and immutable, which is necessary to share stateless environments to other users.



