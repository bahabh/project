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
- Docker installed and running on your laptop
- Add GitLab Shell Executor Runner on your laptop to your project
- Review both Dockerfile and .gitlab-ci.yml files



To Dos ----

- [ ] Operations | Environments | dev | Monitoring : Add metrics for review app (not sure how to do this since it's a docker container in my macbook.

- [ ] Operations | Environments | dev | Terminal : Need to fix so you drive in to the macbook docker review instance.

