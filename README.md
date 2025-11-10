# Docker

## Introduction

Official docs at: https://docs.docker.com/get-started/docker-overview/

Docker is a platform that allows developers and teams to create, test, ship and run applications. It accomplishes this by packaging an application and all its dependencies (like libraries, runtimes or even an OS) into a single, isolated unity called a <b>Container</b>.

A <b>Container</b> is an isolated environment, but it runs inside the OS's own kernel. This is quite different than a Virtual Machine, that would allocate resources from its host and create a whole virtualization of the hardware, with a new kernel and isolated processes. Althought you can achieve this isolate with both of approaches using containers offers advatanges, like a lightweight environment and a fast startup, which can reduce the massive overload of virtualization, especially for a large amount of apps.

Docker uses linux features, such as <i>namespaces</i>, <i>control groups</i> and <i>OverlayFS</i> to achieve isolation, resource management and file sharing efficiency without creating a new OS. Because this isolation is created with an environment that can be reproduced and shared developers can create, test and ship applications much more consistently, avoiding compatibility issues, for example running the same Java app with JDK17 in on machine, and JDK25 in another.

## Componentes
Docker provides several tools to manage the life cycle of containers:

* <b>Docker Engine: </b> is the core service that builds, runs and manages containers, it runs natively on linux. 
* <b>Docker CLI: </b>  command line interface for interacting with docker engine
* <b>Docker Desktop: </b> a GUI interface (bundled with docker engine) for managing images and running containers, used primarily by systems that don't have linux's kernel features.
* <b>Docker Hub: </b> public registry to pull built images
* <b>Dockerfile: </b> script created by the developers with step-by-step instructions on how to create and run an image
* <b>Image: </b> build from a dockerfile, it's a read-only template used to create and run the containers. They can be shared with other teams or developers.
* <b>Container: </b> it's the isolated, running instance of an image.

