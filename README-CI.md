# Project 4

Dougie Townsell 

## Objectives

- Containerize an application with Docker
- Automate the project pipeline with GitHub Actions - continuous integration

## Part 1 - Dockerize it

### Tasks

- Create new GitHub repo (link to create located in Pilot in Content -> CI/CD Projects)
- To your repo in a folder named `website`, add the contents of your website
  - this can be a site you created in another class, pet project of yours, or the site in `site.tar.gz`
  - if using `site.tar.gz` put your own flair / text in `index.html` (#makegradingfunagain)
- Install Docker
  - You can install Docker in WSL2 or in an EC2 instance.
- Create a container image that will run a webserver and contains your website
  - you can use `apache2` or `nginx` as the webserver
- Create a `Dockerfile` and use it to build an image with your website files and dependencies
- Add site content & `Dockerfile` to your repo

### Documentation

- CI Project Overview
  - (what are you doing, why, what tools)
 
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

### Tasks

- Create DockerHub account: https://hub.docker.com/
  - select Free tier if prompted
- Create Public Repository in DockerHub
- Set GitHub Secrets named DOCKER_USERNAME and DOCKER_PASSWORD with your respective information filled out.
- Set up GitHub Actions workflow to build and push docker image to DockerHub
  - Use workflow templated here: https://docs.github.com/en/actions/guides/publishing-docker-images#publishing-images-to-docker-hub

### Documentation

- Add to `README-CI.md` to include:

- Process to create public repo in DockerHub
- How to authenticate with DockerHub via CLI using Dockerhub credentials
  - what credentials would you recommend providing?
- How to push container image to Dockerhub (without GitHub Actions)
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
