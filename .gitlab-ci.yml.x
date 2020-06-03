image: docker:stable

stages:
  - build
  - deploy

build:
  stage: build
  script:
    - echo "Building the app"
    - composer.phar install
    - docker build -t myproject/myapp .
    - docker tag myproject/myapp:latest \
      registry.loc/myproject/myapp:$CI_COMMIT_REF_NAME
    - docker push registry.loc/myproject/myapp:$CI_COMMIT_REF_NAME
  only:
  - master
  tags:
    - shell

deploy_dev:
  stage: deploy
  variables:
    GIT_STRATEGY: none
  script:
    - echo "Deploy to dev.loc"
    - docker pull registry.loc/myproject/myapp:$CI_COMMIT_REF_NAME
    - docker stop reviewapp-demo-$CI_COMMIT_REF_NAME || true
    - docker rm reviewapp-demo-$CI_COMMIT_REF_NAME || true
    - docker run -d -P -l traefik.enable=true \
      -l traefik.frontend.rule=Host:reviewapp.dev.loc \
      -l traefik.protocol=http --name reviewapp-demo-$CI_COMMIT_REF_NAME \
      registry.loc/myproject/myapp:$CI_COMMIT_REF_NAME
  environment:
    name: dev
    url: http://reviewapp.dev.loc
  only:
  - master
  tags:
    - shell

undeploy_dev:
  stage: deploy
  variables:
    GIT_STRATEGY: none
  script:
    - echo "Remove review app from dev.loc"
    - docker stop reviewapp-demo-$CI_COMMIT_REF_NAME || true
    - docker rm reviewapp-demo-$CI_COMMIT_REF_NAME || true
  when: manual
  environment:
    name: dev
    action: stop
  tags:
    - shell
