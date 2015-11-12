for font in $(ls $ZSH/fonts/fonts/*.ttf); do
  name=$HOME/Library/Fonts/$(basename $font)

  [ ! -f $name ] && cp -f $font $name
done
