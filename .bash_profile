# Identify OS and Machine -----------------------------------------
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"

# Note, default OS is assumed to be OSX --------------------------

# add your bin folder to the path, if you have it. It's a good place to all your scripts -------------------------------------------------------
export PATH=~/bin:$PATH
export PATH=/usr/local/trilinos/bin:$PATH
export PATH=/usr/local/peridigm/bin:$PATH
#export GNUPLOT_LIB=~/.gnuplot

# add additional library paths as needed, if some of your executables demand it
export DYLD_LIBRARY_PATH=/usr/local/trilinos/lib:$DYLD_LIBRARY_PATH

# Additional environmental variables commonly used ------------------
#export PERI=/Users/Pranav/Documents/Peridynamics/
#export test=/Users/Pranav/Documents/Peridynamics/test/
#export PER='/Users/Pranav/Google Drive/Peridynamics'

# Editor environmental variables
export EDITOR=/usr/bin/vi
export MP_EDITOR=/usr/bin/edit

# Load in .bashrc --------------------------------------------------
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Hello Message ----------------------------------------------------
echo -e "Kernal Information: " `uname -smr`
echo -e "`bash --version`"
echo -ne "Uptime: "; uptime
echo -ne "Server time is: "; date

#source /usr/local/bin/virtualenvwrapper.sh
#source $(brew --prefix)/etc/profile.d/autojump.sh
