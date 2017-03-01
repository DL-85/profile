#!/usr/bin/env cat
# ==============================================================================
# 读取~/.custom_shellrc
# ==============================================================================
# Create by Arondight <shell_way@foxmail.com>
# ==============================================================================
# SOURCE ME!!!
# ==============================================================================

{
  local _CUSTOM_SHELLRC="${HOME}/.custom_shellrc"

  if [[ -r "$_CUSTOM_SHELLRC" ]]
  then
    source "$_CUSTOM_SHELLRC"
  fi

  return "$?"
}

