#!/usr/bin/env bash
# ==============================================================================
# Install profiles for bash
# ==============================================================================
# Create by Arondight <shell_way@foxmail.com>
# ==============================================================================

SUFFIX=$(date +'%Y%m%d-%H%M%S')
WORKDIR=$(dirname $(readlink -f $0))

# MAIN:
{
  BASHDIR="${HOME}/.bash"
  BASHRCSRC="${WORKDIR}/.bashrc"
  BASHRCDEST="${HOME}/.bashrc"
  BASHPROFILESRC="${WORKDIR}/.bash_profile"
  BASHPROFILEDEST="${HOME}/.bash_profile"
  INTERFACESHSRC="${WORKDIR}/.bash/interface.sh"
  INTERFACESHDEST="${HOME}/.bash/interface.sh"

  mkdir -p $BASHDIR

  if [[ -e $BASHRCDEST ]]
  then
    if [[ -n $(md5sum $BASHRCSRC $BASHRCDEST | awk '{print $1}' | uniq -u | tail -n 1) ]]
    then
      mv -v $BASHRCDEST "${BASHRCDEST}.${SUFFIX}.bak"
    fi
  fi

  if [[ -e $BASHPROFILEDEST ]]
  then
    if [[ -n $(md5sum $BASHPROFILESRC $BASHPROFILEDEST | awk '{print $1}' | uniq -u | tail -n 1) ]]
    then
      mv -v $BASHPROFILEDEST "${BASHPROFILEDEST}.${SUFFIX}.bak"
    fi
  fi

  if [[ -e $INTERFACESHDEST ]]
  then
    if [[ -n $(md5sum $INTERFACESHSRC $INTERFACESHDEST | awk '{print $1}' | uniq -u | tail -n 1) ]]
    then
      mv -v $INTERFACESHDEST "${INTERFACESHDEST}.${SUFFIX}.bak"
    fi
  fi

  echo -ne "Install profiles for bash ...\t"

  if [[ ! -e $BASHRCDEST ]]
  then
    ln -sf $BASHRCSRC $BASHRCDEST
  fi

  if [[ ! -e $BASHPROFILEDEST ]]
  then
    ln -sf $BASHPROFILESRC $BASHPROFILEDEST
  fi

  if [[ ! -e $INTERFACESHDEST ]]
  then
    ln -sf $INTERFACESHSRC $INTERFACESHDEST
  fi

  echo 'done'

  exit $?
}

