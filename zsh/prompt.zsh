# make sure color constants are available
autoload -U colors && colors

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2>/dev/null)

  if [ -n $current_branch ]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}

kube_ns() {
  local current_ns="$(kubectl config get-contexts | grep \* | awk '{ print $5 }')"
  if [ -n $current_ns ]; then
    echo "%{$fg_no_bold[red]%}⎈ $current_ns%{$reset_color%}"
  fi
}

kube_context() {
  local current_context="$(kubectl config current-context)"
  
  if [ -n $current_context ]; then
    echo "%{$fg_bold[red]%}$current_context%{$reset_color%}"
  fi
}

setopt promptsubst
autoload -Uz promptinit
promptinit
prompt redhat

#export RPROMPT="$(kube_context)$(kube_ns)"
