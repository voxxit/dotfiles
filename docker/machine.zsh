if [ "$(docker-machine ls -q dev | wc -l)" -eq 0 ]; then
  read "create?dev machine not found. Create it? (y/n) "

  case $create in
    y|Y)
      rm -rf ~/.docker/machine/cache/boot2docker.iso
      docker-machine create -d virtualbox \
        --virtualbox-memory "4096" \
        --virtualbox-disk-size "60000" \
        dev
      ;;
  esac
fi

# default docker machine = dev
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="~/.docker/machine/machines/dev"
export DOCKER_MACHINE_NAME="dev"
