# vim8

## 安装
```
cd ~
//for windows
git clone git@github.com:cui-liang/vim8.git vimfiles

//for mac
git clone git@github.com:cui-liang/vim8.git .vim
cd vimfiles
git submodule update --init --recursive
cd pack/plugin/start/phpctags
composer update
```

## 环境变量
将 `vimfiles/pack/bin` 加入系统环境变量

## 安装字体
将 `vimfiles/pack/fonts/consolas-powerline-vim/` 目录下的字体文件复制到 `C:\Windows\Fonts\` 下

## 支持lua
将 `vimfiles/pack/bin` 目录下的 lua53.dll 放到 `gvim.exe` 同目录下

mac 安装lua `brew install lua`
