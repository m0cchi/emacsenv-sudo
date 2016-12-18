_name="sudo.sh"
plugin_file="plugins/$_name.sh"

if [ ! -e "$EMACSENV_PLUGINS_DIR/$_name" ]; then
  # automapping
  ln -s "$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/$plugin_file" "$EMACSENV_PLUGINS_DIR/$_name" > /dev/null
fi

echo $plugin_file
