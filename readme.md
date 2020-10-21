A container for zsh development/testing.

The intended use is to bind-mount your zsh repo source on your local machine when you mount this container:

```sh
$ docker run -d \
  -it \
  --name zsh-dev \
  --mount type=bind,source="$(pwd)"/path/to/zsh/repo,target=/source \
  zsh-dev:latest
``` 