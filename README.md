# Halley's nvim config

## Introduction
Howdy. So, if you're here, then that means you've gotten access into my nvim config. Pretty cool, huh?... Ah, who am I kidding. It's very much shit, but it's my shit, alright?

This will serve as my documentation for the development of this config. I'm going to treat this 
an ongoing project, so, yeah. Should be fun!

## The Basics
This config follows a modularized process; where each plugin gets its own program. All of these 
plugins are initialized in init.lua, with the program 
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
