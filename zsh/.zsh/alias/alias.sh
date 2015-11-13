#!/usr/bin/env cat
# ==============================================================================
# alias
#
#             By 秦凡东
# ==============================================================================
# SOURCE ME!!!
# ==============================================================================

# Girlfriend
alias girlfriend='valgrind'
alias girlfriend-say='girlfriend --leak-check=full --show-reachable=yes --trace-children=yes'
# 文本处理 {
alias a='env awk'
alias c='env cat'
# less, more, diff, view, vi 全部使用vim
alias more='less'
alias m='more'
alias diff='env vim -d'
alias sysdiff='env diff'
alias view='env vim -R'
alias vi='env vim'
# grep 自动高亮，默认使用pcre 正则
alias grep='env grep --color=auto -P'
alias egrep='env grep --color=auto -E'
# 防止别处nano 的alisa 影响了nano 配置文件
alias nano='env nano'
# leafpad 默认使用utf8 编码
alias leafpad='env leafpad --codeset=utf8'
# }
# cc {
# 提供cc99, cxx11 等编译小程序的指令
alias c99='env gcc -Wall -std=c99 -fdiagnostics-color=auto'
alias cxx11='env g++ -Wall -std=c++11 -fdiagnostics-color=auto'
# }
# ls {
alias ls='env ls -hF --color=auto'
alias dir='ls'
alias d='ls'
alias dm='d | m'
alias a='ls -A'
alias am='a | m'
alias v='d -lh'
alias vm='v | m'
alias l='v -A'
alias lm='l | m'
# }
# cd {
alias ~='cd ~'
# }
# 安全措施{
alias cp='env cp -i'
alias mv='env mv -i'
alias rm='env rm -I --preserve-root'
alias ln='env ln -i'
alias chown='env chown --preserve-root'
alias own='chown'
alias chmod='env chmod --preserve-root'
alias mod='chmod'
alias chgrp='env chgrp --preserve-root'
alias grp='chgrp'
# }
# 常用指令 {
alias e='export'
alias f='env free'
alias g='env git'
alias k='kill'
alias p='env perl'
alias r='env ruby'
alias s='env svn'
alias x='env startx'
# 包管理
if [[ -s /usr/bin/pacman-key ]]; then
  alias pacman='env pacman --color auto'
fi
# startx 使用中文locale
alias startx='export LANG=zh_CN.UTF-8 && env startx'
# 指令人性化输出
alias mkdir='env mkdir -p -v'
alias df='env df -h'
alias du='env du -ch'
alias ping='env ping -c 5'
# 快速关机、重启
alias poweroff='env sudo env shutdown -h 0'
alias halt='poweroff'
alias reboot='env sudo env shutdown -r 0'
# x11nvc 启动vncserver
alias vnc-start='env x11vnc -display :0 -noxdamage -many -forever -ncache 10 -auth ~/.Xauthority -rfbauth ~/.vnc/passwd'
# }
# 其他 {
# }
alias grepsyscall_32='env cat /usr/include/asm/unistd_32.h | grep '
alias grepsyscall_64='env cat /usr/include/asm/unistd_64.h | grep '
alias lsspread='lsusb | grep 1782'
alias -- -='sudo'
# vim 式退出登录
alias quit='exit'
alias q='quit'
alias :q='q'
alias :wq='q'
alias :Q='q'
alias :x='q'
# }

# ==============================================================================
# global alias
#
#             By 秦凡东
# ==============================================================================
if [[ 'bash' != $0 ]]; then
  source $HOME/.zsh/alias/global_alias.zsh
fi

