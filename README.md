A [Mewlix](https://github.com/kbmackenzie/mewlix) syntax highlighting plugin for Vim / Neovim.

## Usage

This plugin adds Mewlix syntax highlighting for all `.mews` files. No configuration is needed.

Additionally, it adds the `:MewlixEmojify` command, which replaces ASCII symbols with emojis:

| Symbol    | Emoji |
|-----------|-------|
| `=^.x.^=` | 🐱    |
| `=^oxo^=` | 🐈    |
| `=^-x-^=` | 📦    |

**Note:** That command uses `:substitute` and doesn't differentiate between strings/comments and code. It'll replace those symbols *anywhere* in the current buffer. However, the symbols are so specific this is rarely an issue.

## Installation

You can install the plugin with your preferred plugin manager. A few examples:

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
