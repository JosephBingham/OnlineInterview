# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"


alias bashrc="sudo nano /private/etc/bashrc && source /private/etc/bashrc"

# some more ls aliases
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'
alias woo='fortune'
alias lsd="ls -alF | grep /$"
alias li="ls *"

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

alias micro="~/micro"
alias julia="/Applications/Julia-0.6.app/Contents/Resources/julia/bin/julia"
alias sl=ls
alias s=ls
alias dir="ls -1"
alias clr=clear
alias lisp="clisp -q"
alias react="elm reactor"

#function assemble() {
#	nasm -f elf $1;
#	y=$(basename $1 .asm);
#	ld -s -o $y "$y.o";
#	rm "$y.o"; 
#}

alias count="ls -1 | wc -l"
alias jjs=jrunscript
alias alg=a68g
alias open_port="~/OnlineInterview/go/open_port"
alias m=micro
alias python=python2.7
export CLICOLOR=1

function jf(){
    javac $1
    java $(echo $1 | cut -f 1 -d '.')
    rm $(echo $1 | cut -f 1 -d '.').class
}
alias j=jf

function tilef(){
    pdflatex $1
    x=$(basename $1 .tex)
    rm $x.aux $x.log
    open $x.pdf
}

alias tile=tilef
alias n=nano

function addextention(){
    for f in $1; 
    do mv $f `basename $f `$2; 
    done;
}

alias basic="~/basic"
