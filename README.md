# Docker container for Ookla SpeedTest

Simple Dockerfile to build a container for speedtests.
Remember to set the SERVER_ID enviromental variable.

## Installation

1. Replace the URL and the filename to extract with the right one for your CPU architecture (you can choose it from the [Ookla website](https://www.speedtest.net/apps/cli))
2. Create a new folder (i.e. _folder-path_) and paste the Dockerfile into it
3. Build the image with: `docker build folder-path/`
4. After the build process, Docker will provide the image ID (i.e. _image-id_)
5. Run the container with `docker run --env SERVER_ID image-id`

### Options

- Container name can be set with `--name container-name`
- Using `--rm` option in run instruction the container will be deleted after the speedtest
- More speedtest can be executed starting again the container with `docker start -a container-name`
