#!/bin/bash
path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
config_file=$path/config.json;
[ -f $config_file ] && copy_mode=$(cat $config_file | jq '.copy_mode') clip_save=$(cat $config_file | jq '.clip_save') notify=$(cat $config_file | jq '.notify') || echo "$config_file does not exist! Config by default!" copy_mode=false notify=true clip_save=true
$copy_mode && clip=$(xclip -o -selection clipboard) || clip=$(xclip -o)
tr=$(bash $path/trans -t en -b "$clip")
$notify && notify-send "Autotrans" "$tr"
$clip_save && echo $tr | xclip -sel clip
