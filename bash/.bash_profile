[ -r ~/.bashrc ] && source ~/.bashrc

# added by Miniconda3 4.3.21 installer
# export PATH="/Users/n/miniconda3/bin:$PATH"  # commented out by conda initialize

# OPAM configuration
. /Users/n/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH="$HOME/.cargo/bin:$PATH"

##
# Your previous /Users/n/.bash_profile file was backed up as /Users/n/.bash_profile.macports-saved_2019-02-17_at_13:45:32
##

# MacPorts Installer addition on 2019-02-17_at_13:45:32: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2019-02-17_at_13:45:32: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/n/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/n/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/n/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/n/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

