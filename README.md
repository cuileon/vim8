# vim8

```
git submodule add git@github.com:vim-airline/vim-airline-themes.git pack/colors/start/vim-airline-themes
```

## windows 安装
```
cd ~
git clone git@github.com:cui-liang/vim8.git vimfiles
cd vimfiles
git submodule update --init --recursive
cd ~
ln -s /mnt/c/Users/cuiliang/vimfiles .vim
#cd pack/plugin/start/phpctags
#composer update
```

## mac 安装
```
git clone git@github.com:cui-liang/vim8.git .vim
cd .vim
git submodule update --init --recursive
brew install lua ctags homebrew/php/phpctags
```

## windows 安装 phpctags
cd /usr/local/bin
curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > phpctags

## windows 设置环境变量
将 `vimfiles/pack/bin` 加入系统环境变量

## 安装字体
https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf

## 支持lua
将 `vimfiles/pack/bin` 目录下的 lua53.dll 放到 `gvim.exe` 同目录下
