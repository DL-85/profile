#!/usr/bin/env bash
# ==============================================================================
# Force install profiles for git
# ==============================================================================
# Create by Arondight <shell_way@foxmail.com>
# ==============================================================================

SUFFIX=$(date +'%Y%m%d-%H%M%S')
WORKDIR=$(dirname $(readlink -f $0))

# MAIN:
{
  PKMANSRC="${WORKDIR}/pacman.conf"
  PKMANDEST='/etc/pacman.conf'

  if [[ -e $PKMANDEST ]]
  then
    if [[ -n $(md5sum $PKMANSRC $PKMANDEST | awk '{print $1}' | uniq -u | tail -n 1) ]]
    then
      sudo mv -v $PKMANDEST "${PKMANDEST}.${SUFFIX}.bak"
    fi
  fi

  echo -ne "Install profiles for pacman ...\t"

  if [[ ! -e $PKMANDEST ]]
  then
    sudo install -Dm0644 $PKMANSRC $PKMANDEST
  fi

  echo 'done'

  exit $?
}

