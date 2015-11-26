# Created by newuser for 5.0.2
# 0:black、1:red、2:green、3:yellow、4:blue、5:magenta、6:cyan、7:white
autoload colors
colors
local p_cdir="%B%F{blue}%D{%c %Z } [ %f%F{yellow}%~%f%F{blue} ]%f%b"$'\n'
local p_info="%n"
local p_mark="%B%(?,%F{2},%F{1})%(!,#,$)%f%b"
PROMPT="$p_cdir$p_info $p_mark "
