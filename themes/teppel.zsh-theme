if [ "$(whoami)" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="green"; fi

VCS_BASE_COLOR=yellow
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[$VCS_BASE_COLOR]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✘%{$fg[$VCS_BASE_COLOR]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$fg[$VCS_BASE_COLOR]%}"

PROMPT='%{$fg_bold[$CARETCOLOR]%}%n@%M $(git_prompt_info) %{$fg_bold[blue]%}%~
%# %{$reset_color%}'
RPROMPT='%(1j.%{$fg_bold[blue]%}[%j] %{$reset_color%}.)%(2L.%{$fg_bold[yellow]%}[$SHLVL]%{$reset_color%} .)%D %T'
