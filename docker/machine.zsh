if [ $(uname -s) = "Darwin" ]; then 
  if [ "$(docker-machine ls -q dev | wc -l)" -eq 0 ]; then
    read "create?dev machine not found. Create it? (y/n) "

    case $create in
      y|Y)
        docker-machine create -d virtualbox \
          --virtualbox-memory "8192" \
          --virtualbox-cpu-count "$(gnproc)" \
          --virtualbox-disk-size "131072" \
          dev
        ;;
    esac
  fi

  if [ "$(docker-machine status dev)" != "Running" ]; then
    docker-machine start dev
  fi

  eval $(docker-machine env dev)

  export MACHINE_NATIVE_SSH=1
fi
