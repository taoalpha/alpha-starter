# xsDockerfiles

A collection of minmalist dev docker.

Most would be [Alpine](https://hub.docker.com/_/alpine/) based.

Thanks to [mhart](https://github.com/mhart/alpine-node) and its [alpine-node](https://hub.docker.com/r/mhart/alpine-node/).

```bash
docker build <name-of-image> <path-to-dockerfile>
```

## Categories

### Node

#### Embedded tools

* node 5.11.0
* npm 3.8.0
* zsh / git / vim

#### Embedded settings

* vimrc from [amix](https://github.com/amix/vimrc)
* zshrc from [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Web
  Based on Node config, but specialy for web by adding my starter kit and install all npm packages to it.

### Python

  Based on alpine.

#### Embedded tools

* python 2.7.11
* python3 3.5.1
* zsh / git / vim

#### Embedded settings

* vimrc from [amix](https://github.com/amix/vimrc)
* zshrc from [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
