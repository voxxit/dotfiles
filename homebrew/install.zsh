# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

for cmd in "wget" "grc" "spark" "tree" "tmux" "jq"; do
  if ! (( $+commands[${cmd}] )); then
    brew install $cmd
  fi
done
