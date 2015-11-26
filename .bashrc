# \e[...mから\e[mまでの色指定を...で行う
# その際プロンプトに表示されないように\e[...mおよび\e[mは\[と\]で囲む必要がある
# \eはESCの代替文字である
# color_bold_blue='\[\e[34;1m\]'
# color_terminator='\[\e[m\]'
# として${color_bold_blue}hogehoge${color_terminator}とはできないみたい…
# 何故だろう？
# 30:black 31:red 32:green 33:yellow 34:blue 35:purple 36:cyan 37:white
# 0:normal 1:bold 2:low intensity 4:underline 5:blink 7:reverse video 8:invisible text
PS1='\[\e[34;1m\]\D{%c %Z %%%%%EY%%%%} [ \[\e[m\]\[\e[32;1m\]\w\[\e[m\] \[\e[34;1m\]]\[\e[m\]\n\[\e[32;1m\]\u \[\e[m\]\[\e[$(if [ $? != 0 ]; then echo "31"; else echo "36"; fi);1m\]\$ \[\e[m\]'
