for cmd in "docker" "docker-machine" "docker-compose"; do
  if ! (( $+commands[$cmd] )); then
    brew install $cmd
  fi
done
