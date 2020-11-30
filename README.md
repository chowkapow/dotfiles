# dotfiles

Setup: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

Hard link created for VSCode's keybindings.json and settings.json, from VSCode dir to $HOME.
<ul>
  <li>https://code.visualstudio.com/docs/getstarted/settings</li>
  <li>https://www.cyberciti.biz/faq/creating-hard-links-with-ln-command</li>
</ul>

<br>

<h3>Commands:</h3>
<ul>
  <li>ln "$HOME/Library/Application Support/Code/User/keybindings.json" $HOME/keybindings.json</li>
  <li>ln "$HOME/Library/Application Support/Code/User/settings.json" $HOME/settings.json</li>
</ul>
