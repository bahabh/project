This is an example of a non-k8s GitLab project that uses a macOS based Shell Runner that had Docker running.

The .gitlab-ci-yml demonstrates how to deploy a review app without k8s in a shell-based, docker runner.

Registries include:

- DockerHub
- local docker container
- GitLab Container registry

See blog - https://about.gitlab.com/blog/2017/07/11/dockerizing-review-apps/



Prerequsites

------

- Export/clone [project](https://gitlab.com/mark.cesario/demos/docker-review-app)
- Instal Docker where you will install the GitLab Runner
- Install the  Shell Executor Runner on your endpointy (in my case on my Macbook)
- Review both the Dockerfile and .gitlab-ci.yml files
- Have both the GitLab project and terminal window opens as you demonstrate the shell-based Docker Review Appp demo



To Dos ----

- [ ] Operations | Environments | dev | Monitoring : Add metrics for review app (not sure how to do this since it's a docker container in my macbook.

- [ ] Operations | Environments | dev | Terminal : Need to fix so you drive in to the macbook docker review instance.

