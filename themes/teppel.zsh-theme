if [ "$(whoami)" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="green"; fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

PROMPT='%{$fg_bold[$CARETCOLOR]%}%n@%M $(git_prompt_info) %{$fg_bold[blue]%}%~
%# %{$reset_color%}'
RPROMPT='%(1j.%{$fg_bold[blue]%}[%j] %{$reset_color%}.)%(2L.%{$fg_bold[yellow]%}[$SHLVL]%{$reset_color%} .)%D %T'
