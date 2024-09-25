#!/bin/zsh

plugin_name="helloworld.plugin.zsh"
msg="hej from helloworld.plugin.zsh"

echo "${msg}"
logger -t "${plugin_name}" "${msg}"

