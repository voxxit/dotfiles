alias reload!='source ~/.zshrc'
alias upfiles='pushd ~/.files; git up && ./bootstrap; reload!; popd'

alias svpn='ssh \
  -o PermitLocalCommand=yes \
  -o LocalCommand="sudo ifconfig tun0 10.2.88.2 pointopoint 10.2.88.1 netmask 255.0.0.0" \
  -o ServerAliveInterval=60 \
  -w 0:0 mini \
  "sudo ifconfig tun0 10.2.88.1 pointopoint 10.2.88.2 netmask 255.0.0.0; echo tun0 ready"'

alias nicecast='nano ~/Library/Application\ Support/Nicecast/NowPlaying.txt'
