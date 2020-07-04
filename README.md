# Build.Docker.DotNetCore.3

[![Build Status](http://jenkins.cicd.haplo.com.au/buildStatus/icon?job=Haplo-Tech%2FBuild.Docker.DotNetCore.3%2Fmaster)](http://jenkins.cicd.haplo.com.au/job/Haplo-Tech/job/Build.Docker.DotNetCore.3/job/master/)

## How to use
``` bash
docker pull docker.pkg.github.com/haplo-tech/build.docker.dotnetcore.3/dotnetcore3:latest
```

## Build, Package & Release
### Locally
```
# Step 1: Authenticate
$ docker login docker.pkg.github.com --username {{username}}

# Step 2: Tag
$ docker tag IMAGE_ID {{githubPackageAddress}}/IMAGE_NAME:VERSION

# Step 3: Publish
$ docker push {{githubPackageAddress}}/IMAGE_NAME:VERSION
```

### Jenkins Blueocean Pipelines
1. Create domain for credentials `Credentials >>> System >>> Add Domain`
2. Add Credential for github package token
3. Create pipeline and use existing Jenkinsfile
