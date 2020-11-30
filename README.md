# dotfiles

Setup: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

Hard link created for VSCode's keybindings.json and settings.json, from VSCode dir to $HOME.
https://code.visualstudio.com/docs/getstarted/settings
https://www.cyberciti.biz/faq/creating-hard-links-with-ln-command

ln "$HOME/Library/Application Support/Code/User/keybindings.json" $HOME/keybindings.json
ln "$HOME/Library/Application Support/Code/User/settings.json" $HOME/settings.json

Check .zshrc for custom plugins and themes.
