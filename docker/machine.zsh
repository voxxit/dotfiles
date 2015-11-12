if [ "$(docker-machine ls -q dev | wc -l)" -eq 0 ]; then
  read "create?dev machine not found. Create it? (y/n) "

  case $create in
    y|Y)
      rm -rf ~/.docker/machine/cache/boot2docker.iso
      docker-machine create -d virtualbox \
        --virtualbox-memory "4096" \
        --virtualbox-cpu-count "-1" \
        --virtualbox-disk-size "60000" \
        dev
      ;;
  esac
fi

if [ "$(docker-machine status dev)" != "Running" ]; then
  docker-machine start dev
fi

eval $(docker-machine env dev)

export MACHINE_NATIVE_SSH=1
