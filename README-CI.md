# Project 4

Dougie Townsell 

## Objectives

- Containerize an application with Docker
- Automate the project pipeline with GitHub Actions - continuous integration

## Part 1 - Dockerize it

### Documentation

- CI Project Overview
 
The purpose of this part is to work with building images from stratch and leaninng how to create images from a docker file. Docker images are a template configured with source codes, libraries, external dependencies, tools, and other miscellaneous files that is needed for the container. Containers are isolated processes that excutes code from the docker image 
 
- Run Project Locally
  - how to install docker + dependencies (WSL2, for example)
  
  Downloaded the Docker Desktop for Mac then moved Docker into the Applications folder from there I was able to start Docker up
  
  From inside the `3120-cicd-NolimitDougie` folder.
  
  - how to build an image from the `Dockerfile`
  - `docker build -t webserver .`
  
  - how to run the container
  - ` docker run -d --name httpd -p 80:80 webserver`
  
  - how to view the project running in the container (open a browser...go to IP and port...)
  - `localhost:80`

## Part 2 - GitHub Actions and DockerHub

### Documentation

- Add to `README-CI.md` to include:

- Process to create public repo in DockerHub

## Docker Hub

From `Docker hub` 
 - Clicked on `Repositories`
 - Clicked on `Create repository`
 - Made a name `dtown-1` and set it to `public`

 From `Account settings` go to `security`
  - Clicked on `new access token` created a name on the token and set the permissons 
  - From the command line `docker login -u dtown12` 
  - Put the token contents in as the password 
  
- How to push container image to Dockerhub (without GitHub Actions)
 - `docker push dtown12/dtown-1:latest`

## Github Actions

- Configuring GitHub Secrets
  - How to set a secret
  - What secret(s) are set for this project
    - Note: do not copy paste your secrets into your documentation
- Behavior of GitHub workflow
  - what does it do and when
  - what variables in workflow are custom to your project
    - think may need to be changed if someone else is going to use it or you reuse it

### Resources

- [GitHub Actions - Docker Docs](https://docs.docker.com/ci-cd/github-actions/)

## Part 3 - Diagramming

Include a diagram (or diagrams) of the continuous integration process.  A good diagram will label tools used and how things connect.  This diagram would probably look best near your project description.

### Resources

You can use whatever tools you would like, here are some recommended tools that people use

- [Lucid Charts](https://www.lucidchart.com/pages/)
- [Textographo](https://textografo.com/)
- [Mermaid - new markdown feature](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/)
- [Eraser - Cloud Diagrams](https://docs.tryeraser.com/docs/cloud-diagrams)
- PowerPoint and OneNote are still good choices

## Submission

1. Commit and push your changes to your repository. Verify that these changes show in your course repository.

   - Your repo should contain:
   - `README-CI.md`
   - `website` folder with website pages
   - `Dockerfile`
   - GitHub action `yml` file in `.github/workflows`
   - diagram image(s)

2. In Pilot, paste the link to your project folder.
