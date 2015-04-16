chruby_path="/usr/local/opt/chruby"

if [ -d $chruby_path ]; then
  . $chruby_path/share/chruby/chruby.sh
  . $chruby_path/share/chruby/auto.sh

  chruby_auto
fi
