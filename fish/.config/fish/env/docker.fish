# PODMAN
# set -x DOCKER_HOST "unix:///tmp/podman.sock"
# set -e DOCKER_HOST

# RANCHER-DESKTOP
# fish_add_path "$HOME/.rd/bin"
# set -x TESTCONTAINERS_HOST_OVERRIDE (rdctl shell ip a show vznat | awk '/inet / {sub("/.*",""); print $2}')

# set -x DOCKER_HOST unix://$HOME/.rd/docker.sock
# set -x TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE /var/run/docker.sock
# set -x TESTCONTAINERS_HOST_OVERRIDE (rdctl shell ip a show vznat | awk '/inet / {sub("/.*",""); print $2}')



# []set -x DOCKER_HOST "unix:///$HOME/.rd/docker.sock"


# COLIMA
# set -x  TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
# set -x  TESTCONTAINERS_HOST_OVERRIDE $(colima ls -j | jq -r '.address')
# set -x  DOCKER_HOST unix://$HOME/.colima/default/docker.sock
