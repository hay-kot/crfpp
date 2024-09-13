# crfpp

[![Build Status](https://travis-ci.org/mtlynch/crfpp.svg?branch=master)](https://travis-ci.org/mtlynch/crfpp) [![Docker Pulls](https://img.shields.io/docker/pulls/mtlynch/crfpp.svg?maxAge=604800)](https://hub.docker.com/r/mtlynch/crfpp/)

* [Full documentation](https://taku910.github.io/crfpp/)

## Installation

### From source tarball

Requirements:
* C++ compiler
* Make

Untar the source, change into the source directory, and run:
```sh
./configure
make
sudo make install
```

You can change default install path by using `--prefix` option of `configure` script.

Try `--help` option for finding out other options.

### From Git repository

Requirements:
* Autotools
* C++ compiler
* Make

Check out the Git repository and run:
```sh
autoreconf --force --install
./configure
make
sudo make install
```

### Creating source tarball from repo

Requirements:
* Autotools
* Make

Check out the Git repository and run:
```sh
autoreconf --force --install
./configure --enable-maintainer-mode
make dist
```

This will create a file named `CRF++-<version>.tar.gz`, which is suitable for distribution.
