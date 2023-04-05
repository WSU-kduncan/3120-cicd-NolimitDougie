# Project 5

Dougie Townsell 


## Part 1 - Semantic Versioning

Right now, you likely `tag` the image with `latest`.  This means versions are never kept.  The solution we will use is to use `git` `tagging`.  A GitHub Action can use the metadata to generate a set of tags for an image.

### Tasks

- Practice creating `tag` for your `commit` using [semantic versioning](https://semver.org/)
- Amend your GitHub Action workflow to:
  - run when a `tag` is `push`ed
  - use the `docker/metadata-action` to generate a set of tags from your repository
  - push images to DockerHub with an image tags based on your `git` `tag` version AND `latest`

### Documentation

Create `README-CD.md` in main folder of your repo that details the following:

- CD Project Overview
-  For this project we using semantic versioning in conjunction with my Docker image. We are updating our workflow so GitHub action can create a event when a tag is pushed and trigger the workflow. Semantic versioning would allow for all previous and current images to be recorded in DockerHub. This increases traceability by allowing the you to view changes that have been made over time. 

- How to generate a `tag` in `git` / GitHub

Add your changes using `git add <file_names>` 
Then commit the changes using git commit. To create the tag for the commit use `git tag -a v#.#.#`.
To push the tagged commit, use `git push origin v#.#.#`.


- Behavior of GitHub workflow
  - what does it do and when

The GitHub workflow is triggered after a `push` is made to the `main` branch or a `tagged commit` is pushed. It builds a new Docker image from the Dockerfile in this repository and pushes it to DockerHub. The image in DockerHub will be tagged with latest the full `tag` version number


- Link to Docker Hub repository (as additional proof)

[Dtown12/dtown-1 Docker Repository](https://hub.docker.com/repository/docker/dtown12/dtown-1/general)

### Resources

- [GitHub - docker/metadata-action](https://github.com/docker/metadata-action)
- [Docker - Manage Tag Labels](https://docs.docker.com/build/ci/github-actions/manage-tags-labels/)


## Part 2 - Deployment

### Tasks

For this piece, use an EC2 instance.

- Install docker on the instance
- `pull` and `run` a container from your DockerHub image
  - confirm you can access your service running in the container from a browser
- Create a script to pull a new image from DockerHub and restart the container
  - put a copy of the script in a folder named `deployment` in your repo
- Set a listener / hook to receive messages using [adnanh's `webhook`](https://github.com/adnanh/webhook)
- Create a hook - when a message is received run the container restart script
  - put a copy of the hook configuration in a folder named `deployment` in your repo
- Configure either GitHub or DockerHub to send a message to the listener / hook

### Documentation

Update `README-CD.md` in main folder of your repo to include:

- How to install Docker to your instance
- Container restart script
  - Justification & description of what it does
  - Where it should be on server (if someone were to use your setup)


- Setting up a `webhook` on the server
  - How to install [adnanh's `webhook`](https://github.com/adnanh/webhook) to server
  - How to start the `webhook`
    - since our instance's reboot, we need to handle this


- `webhook` task definition file
  - Description of what it does
  - Where it should be on server (if someone were to use your setup)
- How to configure GitHub OR DockerHub to message the listener 
- RECORD your whole workflow process - from `commit` and `push` to your server getting a fresh image

### Resources

- [Using GitHub actions and `webhook`s](https://levelup.gitconnected.com/automated-deployment-using-docker-github-actions-and-webhooks-54018fc12e32)
- [Using DockerHub and `webhook`s](https://blog.devgenius.io/build-your-first-ci-cd-pipeline-using-docker-github-actions-and-webhooks-while-creating-your-own-da783110e151)
  - Note: this has been the method focused on in lecture

## Part 3 - Diagramming

Include a diagram (or diagrams) of the continuous deployment process.  A good diagram will label tools used and how things connect.  This diagram would probably look best near your project description.

### Resources

You can use whatever tools you would like, here are some recommended tools that people use

- [Lucid Charts](https://www.lucidchart.com/pages/)
- [Textographo](https://textografo.com/)
- [Mermaid - new markdown feature](https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/)
- [Eraser - Cloud Diagrams](https://docs.tryeraser.com/docs/cloud-diagrams)
- PowerPoint and OneNote are still good choices

