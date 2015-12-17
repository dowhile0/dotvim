$ git clone https://github.com/dowhile0/dotvim
Cloning into 'dotvim'...
remote: Counting objects: 16, done.
remote: Total 16 (delta 0), reused 0 (delta 0), pack-reused 16
Unpacking objects: 100% (16/16), done.
Checking connectivity... done.
$ cd dotvim
$ git submodule init
Submodule 'bundle/Vundle.vim' (https://github.com/VundleVim/Vundle.vim.git) registered for path 'bundle/Vundle.vim'
$ git submodule update
Cloning into 'bundle/Vundle.vim'...
remote: Counting objects: 2994, done.
remote: Total 2994 (delta 0), reused 0 (delta 0), pack-reused 2994
Receiving objects: 100% (2994/2994), 892.50 KiB | 498.00 KiB/s, done.
Resolving deltas: 100% (1035/1035), done.
Checking connectivity... done.
Submodule path 'bundle/Vundle.vim': checked out '5f70ae6025e951f0154e3940d123138adffa4c88'
$ vim +PluginInstall +qall
$ cd bundle
$ YouCompleteMe
$ ./install.py --clang-completer

