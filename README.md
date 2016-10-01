vim-trustlog
============

Vim syntax highlighting plugin for Mobile Labs Trust log files.

![vim-trustlog Syntax Highlighting Screenshot](https://raw.githubusercontent.com/MLKrisJohnson/vim-trustlog/master/trustlog.png)

When installed, this [vim](http://www.vim.org) plugin defines a new filetype named "trustlog", and syntax highlighting scheme for it.

Any filename matching the patterns `deviceViewer*.log` or `UftAgent*.log` will automatically be opened with this filetype.

This plugin also defines two user commands:

- `TrustDeviceViewerLog` - opens `$HOME\AppData\Roaming\Mobile Labs\Trust\deviceViewer.log`
- `TrustUftAgentLog` - opens `$HOME\AppData\Roaming\Mobile Labs\Trust\UftAgent.log`

## Installation

### Via Plugin Manager

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'MLKrisJohnson/vim-trustlog'` to your vimrc file.
2. Reload your vimrc or restart
3. Run `:PlugInstall`

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
cd ~/.vim/bundle
git clone https://github.com/MLKrisJohnson/vim-trustlog.git
```

### Manual Installation

#### Unix 

Download the files. Copy `ftdetect/trustlog.vim` into your `~/.vim/ftdetect` directory, `syntax/trustlog.vim` into your `~/.vim/syntax` directory, and `plugin/trustlog.vim` into your `~/.vim/plugin`, creating those directories if necessary.

#### Windows

Download the files. Copy `ftdetect/trustlog.vim` into your `~\vimfiles\ftdetect` directory, `syntax/trustlog.vim` file into your `~\vimfiles\syntax` directory, and plugin/trustlog.vim` into your `~\vimfiles\plugin` directory, creating those directories if necessary.

