# Halley's nvim config

## Introduction
Hello! This is an old verion of my neovim config that I've left very barren. I've since created a new config that is bundled with my dotfiles (which are private). Still, I hope it can give a little glimpse into how I approach projects! Sidenote: This is a pretty old config that emerged when I first started learning how to program, so it may look messy. I'd like to think that I can program a bit better now, but who knows.

## The Basics
This config follows a modularized process; where each plugin gets its own file. All of these 
plugins are initialized in init.lua, with the function 
'''
setup("plugins")
'''
which initializes the plugins folder. Any change will usually fall under one of the following:

### Plugin Implementation
- Create a lua file of the plugin
- return a lua table with the first line being the "short-URL" of the plugin
- initialize any important information using the config() function.
  - Remember to call it as a function, and end it!
- Pray to god it works.

### Plugin Refactoring
- Pick a Plugin
- Figure out if I want to implement/create new features

### vim-options editing
- In case I want to change something about vim that does not change the thing itself.

## List of to be implemented features
- Tabs for buffers
- (DONE!) Using tab to switch buffers
- (DONE) Using "C-h" to move to file tree, and vice versa
-  git implementation (in-progress)
    - ALmost done, however still wanna check out lazy git first
- (DONE!) Cheat sheet for keybinds 

## Features to think on:
- Zero-lsp. Can I integrate this into my setup? If so, how? What does it do anyways?
- Refactoring
- debugging. Is this really necessary? Unsure of what to do with it, it seems like a major pain in the ass to config.
- Rechecking of lsp and treesitter functions. Need to check whether or not it's still going.
- vim.wiki, for writing essays and the like. Likely to have multiple dependencies, such as:
    - Pandoc
    - LaTeX (which I don't understand)
    - Some kind of Focus mode editor? that let's my current line be centered. Not sure yet, but eh. 
    - Zotero, or a reference manager. Unfortunately, that does mean I need to actually figure out how to generate .bib files for Pandoc.
