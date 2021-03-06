# This helper script should be sourced via an alias, e.g.
#
#   alias homeshick "source $HOME/.homesick/repos/homeshick/bin/homeshick.csh"
#
# This script will be removed 2019-06-31 at the earliest, hopefully everybody has switched over by then
echo "homeshick/bin/homeshick.csh has been moved to homeshick/homeshick.csh, please source that file instead"
if ( "$1" == "cd" && "x$2" != "x" ) then
    if ( -d "$HOME/.homesick/repos/$2/home" ) then
        cd "$HOME/.homesick/repos/$2/home"
    else
        cd "$HOME/.homesick/repos/$2"
    endif
else
    if ( $?HOMESHICK_DIR ) then
        $HOMESHICK_DIR/bin/homeshick $*
    else
        $HOME/.homesick/repos/homeshick/bin/homeshick $*
    endif
endif
