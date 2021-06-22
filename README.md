# Managing dotfiles with a git bare repository
adapted from [here](https://news.ycombinator.com/item?id=11070797)
credit to +deckard

1. create the repo
> git init --bare $HOME/.dotfiles
> 
> make a shell alias
> 
> echo 'alias dotgit="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> $HOME/.bashrc && source $HOME/.bashrc
> 

2. add some dotfiles
> dotgit add .config/i3/config
> 
> dotgit commit -m "add i3wm config"
> 
> dotgit remote add origin git@github.com:<your-username>/dotfiles.git
>
> dotgit push -u origin master

3. install on a new system
  
> git clone --separate-git-dir=$HOME/.dotfiles git@github.com:<your-username>/dotfiles.git dotfiles-tmp
>  
> rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
>  
> rm -r dotfiles-tmp
  
