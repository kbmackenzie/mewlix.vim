A [Mewlix](https://github.com/kbmackenzie/mewlix) syntax highlighting plugin for Vim / Neovim.

## Usage

This plugin adds Mewlix syntax highlighting for all `.mews` files. No configuration is needed.

Additionally, it adds the `:MewlixEmojify` command, which performs simple string substitution to replace ASCII symbols with emojis:

| Symbol    | Emoji |
|-----------|-------|
| `=^.x.^=` | 🐱    |
| `=^oxo^=` | 🐈    |
| `=^-x-^=` | 📦    |

**Note:** That command uses `:substitute` and doesn't differentiate between strings/comments and code. It will replace those symbols *anywhere* in the current buffer. However, those symbols are so long and specific that's *usually* not an issue!

## Installation

You can install the plugin with your preferred package manager. A few examples:

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  'kbmackenzie/mewlix.vim',
  lazy = false
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

1. Add the plugin in your `~/.vimrc`:
```vim
Plug 'kbmackenzie/mewlix.vim'
```
2. Run `:PlugInstall`
