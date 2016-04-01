# expand-aliases

**Maintainer:** [Jarmo Pertman](https://github.com/jarmo)

This plugin expands aliases while typing them in terminal.

For example:
`
alias foo="bar baz"

$ foo
# pressing space will expand that alias
$ bar baz
`

## Installation

Just add it to oh-my-zsh plugins list, but make sure it is added last (or not
last if you prefer some aliases not to be expanded).

`
plugins=(... expand-aliases)
`
