# This is the default .slate file.
# If no ~/.slate file exists this is the file that will be used.

config defaultToCurrentScreen true
config nudgePercentOf screenSize
config resizePercentOf screenSize

# Alias directive: alias name value
 
alias full move screenOriginX;screenOriginY screenSizeX;screenSizeY
alias lefthalf move screenOriginX;screenOriginY screenSizeX/2;screenSizeY
alias leftthird move screenOriginX;screenOriginY screenSizeX/3;screenSizeY
alias righthalf move screenOriginX+screenSizeX/2;screenOriginY screenSizeX/2;screenSizeY
alias rightthird move screenOriginX+screenSizeX/3+screenSizeX/3;screenOriginY screenSizeX/3; screenSizeY
alias middlethird move screenOriginX+screenSizeX/3;screenOriginY screenSizeX/3;screenSizeY
alias tophalf move screenOriginX;screenOriginY screenSizeX;screenSizeY/2
alias bottomhalf move screenOriginX;screenOriginY+screenSizeY/2 screenSizeX;screenSizeY/2
alias topleft corner top-left resize:screenSizeX/2;screenSizeY/2
alias topright corner top-right resize:screenSizeX/2;screenSizeY/2
alias bottomleft corner bottom-left resize:screenSizeX/2;screenSizeY/2
alias bottomright corner bottom-right resize:screenSizeX/2;screenSizeY/2

# Resize Bindings
bind right:alt       resize +10% +0
bind left:alt        resize -10% +0
bind up:alt          resize +0   -10%
bind down:alt        resize +0   +10%
bind right:ctrl;alt  resize -10% +0 bottom-right
bind left:ctrl;alt   resize +10% +0 bottom-right
bind up:ctrl;alt     resize +0   +10% bottom-right
bind down:ctrl;alt   resize +0   -10% bottom-right

# Push Bindings
bind right:ctrl;cmd  push right bar-resize:screenSizeX/3
bind left:ctrl;cmd   push left  bar-resize:screenSizeX/3
bind up:ctrl;cmd     push up    bar-resize:screenSizeY/2
bind down:ctrl;cmd   push down  bar-resize:screenSizeY/2

# Nudge Bindings
bind right:shift;alt nudge +10% +0
bind left:shift;alt  nudge -10% +0
bind up:shift;alt    nudge +0   -10%
bind down:shift;alt  nudge +0   +10%

# Throw Bindings
bind 1:ctrl;alt         throw 0 resize
bind 2:ctrl;alt         throw 1 resize
bind 3:ctrl;alt         throw 2 resize
bind right:ctrl;alt;cmd throw right resize
bind left:ctrl;alt;cmd  throw left  resize
bind up:ctrl;alt;cmd    throw up    resize
bind down:ctrl;alt;cmd  throw down  resize

# Focus Bindings
bind right:cmd    focus right
bind left:cmd     focus left
bind up:cmd       focus up
bind down:cmd     focus down
bind up:cmd;alt   focus behind
bind down:cmd;alt focus behind

# Window Hints
bind esc:cmd hint

default twoScreenLayout count:2