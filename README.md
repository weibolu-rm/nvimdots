# nvimdots

Tired of hacking together nvim configs, so building one from scratch using lua configs.

## Requirements
- Neovim v0.7.2
- `npm` for LSPs
- `ripgrep` for Telescope fuzzy find
- [A patched font](https://www.nerdfonts.com/) for web-devicons
- `black` (by default)

## Setup npm
I recommend creating a directory for global npm in your home directory, and adding it to your PATH
```shell
mkdir ~/.npm-global
npm config set prefix ~/.npm-global
```


In .zprofile or .profile:
```shell
export PATH=~/.npm-global/bin:$PATH
```

## Install LSPs
run `:LspInstallInfo` and install the Language Servers you use (press `i` to install, or `?` to see all options)

## Formatters and Linters
Setup formatters and linters in `yue/lsp/null-ls.lua`.

By default, only `black` is required


```shell
pip install black
```
