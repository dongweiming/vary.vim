
vary.vim
========

A script to converting tabs to spaces and auto save with remove spaces in end of line

####Install

Note: I recommend using Tim Pope's pathogen plugin to install this.
See [vim-pathogen](https://github.com/tpope/vim-pathogen). If you've installed
pathogen properly you can install Vary with the following commands.

```
    $ cd ~/.vim/bundle
    $ git clone https://github.com/dongweiming/vary.vim
```

If you do not use some kind of plug-in management tools, you can use the following
 methods to install.

```
    $ mkdir ~/.vim/{plugin,doc} -p
    $ git clone https://github.com/dongweiming/vary.vim
    $ mv vary.vim/doc/vary.txt ~/.vim/doc
```

####Usage

You need to set the following two types of variables to ~/.vimrc:

```
    set tabstop=4 #<tab> inserts 4 spaces
    let g:auto_striptrail = "python,ruby" # Set want to automatically remove
    #trailing spaces language types, the default is 'python'
    let g:auto_striptab = "python,ruby,cpp" # Set automatically converted 
    #into spaces <tab> type of language
```


