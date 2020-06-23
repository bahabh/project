This is a GitLab project using Docker containers, instead of a Kubernetes-based project, to demonstrate how to deploy a review app.  This project uses a Shell Executor Runner and can be run from your laptop.



Registries used include:

------

- DockerHub
- local docker container
- GitLab Container registry

See blog - https://about.gitlab.com/blog/2017/07/11/dockerizing-review-apps/



Prerequsites

------

- Export/clone this [project](https://gitlab.com/mark.cesario/demos/docker-review-app)
- Install a  Shell Executor Runner on your endpointy (in my case my Macbook)
- Instal Docker where you will install the GitLab Runner
- Review both the Dockerfile and .gitlab-ci.yml files
- Have both the GitLab project and terminal window opens as you demonstrate the shell-based Docker Review Appp demo
  
  

Future Additions

- [ ] Include Code Quality
- [ ] Include Container Scanning
- [ ] Add metrics for review app (not sure how to do this since it's a docker container on my Macbook.
- [ ] Fix terminal icon to be able to drive in to the macbook docker review instance.