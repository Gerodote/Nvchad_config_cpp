# Nvchad config C++

## What is it?
It's my config for NvChad with orientation to C++ and python.

## How to use it?
Install neovim  ( google it if you don't know how )

Install NvChad  ( google it if you don't know how )

Then go to neovim config folder. `cd ~/.config/nvim/` on Linux

Then go to `lua` folder in the config folder.

Then clone this repo to `custom` folder. `git clone https://github.com/Gerodote/Nvchad_config_cpp.git --branch master custom`


## Is it good?
It's have clangd through Mason, cmake plugin, some keybindings. 
In general, it's great to use, though no debugger.

## TODO
- [x] Debugger stuff. Console GDB/LLDB is cool, but some want it inside editor...
    - [x] CMake debugger in neovim !!! CMake Generate (`<leader>G`), toggle a breakpoint (`<leader>b`), press Continue(`<F5>`), it works! Prerequisite: cmake is 3.27+ and is compiled with dap feature. (for gentoo users `flaggie dev-build/cmake +dap`).
        - [x] build folder is taken from cmake plugin
            - [x] (Resolved) is taken at the initialization of neovim. Changed build dir? Right now only restart neovim.
    - [x] c++/c/rust debugger : press CMake debug (`<leader>cd`), enjoy
        - [x] codelldb by default is taken from meson. So, generally, no manual typing pathes
    - [x] nvim-dapui is connected
        - [x] added bindings for opening(`<leader>do`) and closing (`<leader>dc`) nvim-dapui .
    - [ ] nvim-dap-ui and cmake-tools are added at startup, not lazy.
    - [ ] where's python debugger?
- [ ] More keybindigs for some plugins
	- [ ] telescope related
	- [ ] gitsigns related
- [ ] Find out if there's a way to turn on less plugin not lazily. Investigation
- [x] Find a plugin for cool command palette
	- [ ] [hachy/cmdpalette.nvim](https://github.com/hachy/cmdpalette.nvim) doesn't support ranges and feels not so good  
	- [x] [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) seems to be a little bit unmaintained  ([my pain at installing it](https://github.com/gelguy/wilder.nvim/issues/196)). UPD: it's still is too buggy, and most important: it's slow. It's using python behind in sync way and on my pc it feels so badly sometimes... Maybe this plugin should be rewritten to lua or C/C++ ?
        - [ ] has some problems with config portability?
	- [ ] [VonHeikemen/fine-cmdline.nvim](https://github.com/VonHeikemen/fine-cmdline.nvim) doesn't support ranges
	- [ ] [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim) seems to *not* have ability to somehow get commands from everywhere like `:Telescope commands` , though looks cool. Doesn't support ranges. 
- [ ] Find out how to put more snippets and put them from somewhere. Investigation.
- [ ] Find good alternative to `:s`. 
- [ ] Allow more diversity of folder structures for include-guard plugin. Now only works if there's `src` in a path to a file. Maybe rewrite plugin to lua and use neovim's API?
