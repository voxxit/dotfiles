# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
alias ls="gls -F --color"
alias l="gls -lAh --color"
alias ll="gls -l --color"
alias la='gls -A --color'

alias t="tree"

# find all instances broadcasting ssh over avahi
alias localssh='dns-sd -B _ssh._tcp'

# find the biggest file in the current dir
alias biggest='ls -lah ./*(.OL[1])'

# top 10 memory users (% of memory in desc order)
alias topmem="ps -eo %mem,pid,comm | sort -k 1 -nr | head -10"

# top 10 CPU users (% of CPU in desc order)
alias topcpu="ps -eo %cpu,pid,comm | sort -k 1 -nr | head -10"

# top 30 most used commands
alias topcmd='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 30'

alias startconsul="ssh -N -f -L 8500:localhost:8500 swarm1"

alias cron-perftest="ey ssh -e hoteltonight_staging --utilities=cron"
alias cron-staging="ey ssh -e hoteltonight_perftest_56 --utilities=cron"
alias cron-prod="ey ssh -e hoteltonight_production_56 --utilities=cron"
