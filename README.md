[![Docker build status](https://img.shields.io/docker/cloud/build/ryukizo/csharp-notebook?label=build&logo=docker&style=for-the-badge)](https://hub.docker.com/r/ryukizo/csharp-notebook/builds)
[![Docker pulls](https://img.shields.io/docker/pulls/ryukizo/csharp-notebook?logo=docker&style=for-the-badge&label=pulls)](https://hub.docker.com/r/ryukizo/csharp-notebook)

# C# Notebook

This is meant to be used for educational purposes, as I am a Teaching Assistant in ***EPITA***. \
It is currently using [Jupyter](https://jupyter.org/) and [.NET Interactive](https://github.com/dotnet/interactive).

---
# How to use it ?

If you want to use it, simply pull it from [dockerhub](https://hub.docker.com/r/ryukizo/csharp-notebook).
```sh
docker pull ryukizo/csharp-notebook
```

Default password is : `12345`.
If you want to change it, run the images with:
```sh
docker run -it --env JUP_PASSWD="my_password" ryukizo/csharp-notebook
```
