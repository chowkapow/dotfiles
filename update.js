const { copyFile } = require('fs/promises');
const util = require('util');
const exec = util.promisify(require('child_process').exec);

const home = '/Users/ericchow/';

(async () => {
  try {
    // Brewfile
    await exec('brew bundle dump -f --describe');

    // VS Code Keybindings
    await copyFile(
      home + 'Library/Application Support/Code/User/keybindings.json',
      home + 'keybindings.json'
    );

    // VS Code Settings
    await copyFile(
      home + 'Library/Application Support/Code/User/settings.json',
      home + 'settings.json'
    );

    // Karabiner
    await copyFile(
      home + '.config/karabiner/karabiner.json',
      home + 'karabiner.json'
    );
    console.log('dotfiles copied!');
  } catch {
    console.log('dotfiles copy failed!');
  }
})();
