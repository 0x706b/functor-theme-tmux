#!/usr/bin/env bash

bg0="#181818"
bg1="#222222"
bg2="#303030"
darkgray="#4b4b4b"
comment="#595959"
gray="#686868"
lightgray="#828282"
lightergray="#919191"
fg_="#c1c1c1"
fg0="#d1d1d1"
fg1="#e2e2e2"
fg2="#f1f1f1"

sand="#daa799"
sea="#90bbb3"
sun="#c4a490"
caution="#dbb58f"
sky="#9fb5c8"
rock="#96595b"
ocean="#4c6f86"
forest="#437467"
salmon="#d0aec1"
soil="#be9873"


get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status-bg" "$bg0"

set "status-left" "#[fg=$fg0,bg=$darkgray] #S #[fg=$darkgray,bg=$bg0,nobold,noitalics,nounderscore]"
set "status-right" "#[fg=$darkgray,bg=$bg0,nobold,noitalics,nounderscore]#[fg=$fg0,bg=$darkgray] %Y-%m-%d #[fg=$fg0,bg=$darkgray,nobold,noitalics,nounderscore]#[fg=$fg0,bg=$darkgray] %H:%M #[fg=$fg0,bg=$darkgray,nobold,noitalics,nounderscore]#[fg=$fg0,bg=$darkgray] #(curl icanhazip.com)"

set "window-status-format" "#[fg=$bg0,bg=$bg2,nobold,noitalics,nounderscore] #[fg=$fg0,bg=$bg2]#I #[fg=$fg0,bg=$bg2,nobold,noitalics,nounderscore] #[fg=$fg0,bg=$bg2]#W #F #[fg=$bg2,bg=$bg0,nobold,noitalics,nounderscore]"

set "window-status-current-format" "#[fg=$bg0,bg=$gray,nobold,noitalics,nounderscore] #[fg=$fg0,bg=$gray]#I #[fg=$fg1,bg=$gray,nobold,noitalics,nounderscore] #[fg=$fg1,bg=$gray]#W #F #[fg=$gray,bg=$bg0,nobold,noitalics,nounderscore]"

set "window-status-separator" ""
