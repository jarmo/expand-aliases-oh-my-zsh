# Expand aliases when typing
#
# Read README.md for setup instructions.
# 
# Initially insired by Gautam Iyer (https://wiki.math.cmu.edu/iki/wiki/tips/20140625-zsh-expand-alias.html)

typeset -a ealiases
ealiases=(`alias | sed -e 's/=.*//g' | xargs`)

function expand-ealias()
{
  if [[ $LBUFFER =~ "(^|[;|&])\s*(${(j:|:)ealiases})\$" ]]; then
    zle _expand_alias
    zle expand-word
  fi
  zle magic-space
}

zle -N expand-ealias

bindkey ' '    expand-ealias
bindkey '^ '   magic-space          # control-space to bypass completion
bindkey -M isearch " "  magic-space # normal space during searches
