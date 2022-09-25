for i in /data/data/com.termux/files/usr/etc/profile.d/*.sh; do
        if [ -r $i ]; then
                . $i
        fi
done
unset i

# Source etc/bash.bashrc and ~/.bashrc also for interactive bash login shells:
if [ "$BASH" ]; then
        if [[ "$-" == *"i"* ]]; then
                if [ -r /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
                        . /data/data/com.termux/files/usr/etc/bash.bashrc
                fi
                if [ -r /data/data/com.termux/files/home/.bashrc ]; then
                        . /data/data/com.termux/files/home/.bashrc
                fi
        fi
fi

clear

# HEADER
  toilet -f standard "WARNING!" -F gay
toilet -f standard "ERROR SYSTEM" -F gay

# BODY
echo "<<====================================================>>"
echo "<<============== author by Arman =====================>>"
echo "<<============ WA: +62 83180334897 ===================>>"
echo "<<==== GitHub: https://github.com/ArmanProject =======>>"
echo "<<====================================================>>"

neofetch

date | lolcat

command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}

PS1='\e[1;33mArman@noob \e[1;30m \e[1;32m \e[1;33m \e[1;31m   ↳'