## Try to set title of xterm
export PS1="\[\033]0;[\u@\h]\007\]";

## Include previous settings, and set prompt to bold text
export PS1="$PS1\[\033[1m\][\u@\h:\W] \[\033[0m\]";

### Display date and time for command history
export HISTTIMEFORMAT="%F %T %z  "

### Keep 10,000 lines of command history
export HISTSIZE="10000"

### Don't overwrite history on exit
shopt -s histappend

### Edit history commands before executing them
shopt -s histverify

## Use 'vi' to edit files
export EDITOR="/usr/bin/vi";

## Use less(1) as the default pager for the man(1) command.
export PAGER="/usr/bin/less"

## Mostly case insensitive, no line numbers, squeeze blank lines.
export LESS="-i -n -s -P %f / %lb / %Pb";

## Colorize directory listings with psuedo "solarized" color palette.
export LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"
export CLICOLOR="1"

# MacPorts Installer addition on 2016-11-05_at_09:58:27: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

## Make python use an rc file so we can have tab completion
export PYTHONSTARTUP="$HOME/.pythonrc.py"

## Alias for managing dotfiles repository
alias dotfiles="git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME"

## Alias for searching command history
alias hgrep="history | grep"

## Alias for viewing command history
alias hless="history | less +G"

## Render man page as Postscript and open in Preview.app
psman() {
    man -t "${@}" | open -f -a Preview.app
}

## Show ANSI color combinations
ansicolors () {
    # Text to be displayed
    local TEXT="text"
    echo -e "\n                   40m      41m      42m      43m      44m      45m      46m      47m";

    for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m'; do {
        FG=${FGs// /}
        echo -en " $FGs \033[$FG  $TEXT  ";

        for BG in 40m 41m 42m 43m 44m 45m 46m 47m; do {
            echo -en "$EINS \033[$FG\033[$BG  $TEXT  \033[0m";
        }; done
        echo;
    }; done
    echo;
};
