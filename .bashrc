# Input stuff -------------------------------------------------------
bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
bind "set show-all-if-ambiguous On" # show list automatically, without double tab

force_color_prompt=yes
# ANSI color codes --------------------------------------
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

# Primary and Secondary prompts ------------------------------------
# PS1="$HC$FYEL[ $FGRN\u is inprince $FYEL: $FMAG\w $FYEL]\\$ $RS"
PS1="$HC$FBLK[$FRED${debian_chroot:+($debian_chroot)}\u a.k.a inPrince$FRED:$FRED\W$FBLK]\\$ $RS"
PS2="$HC$FRED&gt; $RS"

# Navigation ---------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'

# Other useful aliases
alias grep='grep -i --color'
alias ls='ls -G'
alias la='ls -Ga'
alias lA='ls -GA'
alias lla='ls -Gla'
alias llA='ls -GlA'

# Editors ----------------------------------------------------------
export EDITOR='vim'  #Command line
export GIT_EDITOR='vim'
# alias mvim='/Applications/MacVim.app/Contents/MacOS/vim -g'

if [ "$OS" = "darwin" ] ; then
  # alias v=mvim
  # alias vc=vim
  alias vi=vim
  # alias vt='mvim --remote-tab'
else
  alias v=vim
  alias vi=vim
  alias mvim=gvim
fi

# add a shortcut to terminal to open ParaView
alias paraview='open /usr/local/cellar/paraview/4.2.0/paraview.app'
