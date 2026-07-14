#!/bin/sh
declare DRY_RUN=
while [[ -n "$1" ]]; do
  case "$1" in
    -n|--dry-run)
      DRY_RUN=1
      shift;;
    -*)
      die "unknown option: $1";;
    *)
      break;;
  esac
done

cd $(dirname $0)
for dotfile in .?*; do
  case $dotfile in
    *.elc | *.swp | *~ | .git | .gitignore | ..)
      continue
      ;;
    *)
      echo "${PWD}/${dotfile}"
      if [ ! $DRY_RUN ]; then
        ln -Fis "${PWD}/${dotfile}" $HOME
      fi
      ;;
  esac
done
