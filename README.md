Docker container with Ubuntu 14.04 and Python 3.6.2

```bash
$ docker run -it tomersha/ubuntu-14.04-python-3.6.2 /bin/bash
root@aea91062010d:/# python -V
pyenv: python: command not found

The `python' command exists in these Python versions:
  3.6.2

root@aea91062010d:/# pyenv versions
  3.6.2
root@aea91062010d:/# pyenv shell 3.6.2
root@aea91062010d:/# python -V
Python 3.6.2
```
