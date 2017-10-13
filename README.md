# vim8

## sed 安装
http://gnuwin32.sourceforge.net/packages/sed.htm
https://dotblogs.com.tw/jses88001/2014/11/13/147283

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
ln -s /mnt/c/Users/cuiliang/vimfiles/ .vim

# 加入环境变量
%USERPROFILE%\vimfiles\pack\bin
#cd pack/plugin/start/phpctags
#composer update
```

## mac 安装
```
cd ~
git clone git@github.com:cui-liang/vim8.git .vim
cd .vim
git submodule update --init --recursive

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
```

## windows 安装 Universal Ctags
https://github.com/universal-ctags/ctags-win32/releases

## windows 设置环境变量
将 `vimfiles/pack/bin` 加入系统环境变量

## 安装字体
https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf

