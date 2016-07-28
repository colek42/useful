shopt -s dotglob
for file in *
do
  if [ "$file" != copy_dotfiles.sh ]
  then 
    rm -f $HOME/${file}
    ln -s ${file} $HOME/${file}
    echo "${file} sym linked"
  fi
done
