# nvim-config

Ready to use neovim nvchad config!

Usage : Lua, C and C++

Build from [Programming Rainbow's](https://github.com/ProgrammingRainbow/NvChad-2.5) config.

## Install

Make sure you have Neovim and NvChad installed on your system.

Delete your neovim configs folder.  
Clone the repository in your nvim configs folder.

Download these on your system if you don't want to use the one provided by Mason.

- clangd
- clang-format
- luacheck

if you want to use the one provided by Mason, make following changes to the config.

On these files  

- lua/configs/mason-conform.lua 
- lua/configs/mason-lint.lua
- lua/configs/mason-lspconfig.lua

Change ignore_install list.

        ignore_install = {}

### Linux

- Delete neovim configs folder. Make sure you have your old configs backup.

        rm -rf ~/.config/nvim/

- Clone the nvim folder.

        git clone --depth 1 --filter=blob:none --sparse https://github.com/DudeDev00/configs.git
        cd configs
        git sparse-checkout set nvim

- Move the nvim folder to ~/.config/


