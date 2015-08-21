alias be="bundle exec"

function deploy() {
  local deployto=$1
  local migrate=$2

  if [ -z $migrate ]; then
    bundle exec rake "zero_downtime_deploy[$deployto]"
  else
    bundle exec rake "zero_downtime_deploy[$deployto,migrate_db]"
  fi
}
