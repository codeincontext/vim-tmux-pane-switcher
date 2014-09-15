vim-tmux-pane-switcher
======================

A fast way to switch between vim and tmux panes


#### Why?

Both vim and tmux have a concept of panes, and switching between them takes too
many keystrokes and gets too confusing. Attempts have been made to bridge
up/down/left/right shortcuts, but you're still left with independent state and
confusing behaviour.

My solution is a lot simpler. It works for me, with my arrangement of panes.
You can probably adapt it to yours.

#### How?

Rather than moving left/right/up/down to eventuallly get where you want, let's
map keys to each individual pane...


This is how my tmux looks:

    ___________________
    |     |     |     |
    |     |     |     | <- Vim (3 Vim panes in 1 tmux pane)
    |_____|_____|_____|
    |     |     |     | <- tmux
    |_____|_____|_____|


Here are some keys on the keyboard:

     ___________
    | U | I | O |
    |___|___|___|
    | J | K | L |
    |___|___|___|


Let's directly map them together (c = ctrl)

    ___________________
    |     |     |     |
    | c-U | c-I | c-O |
    |_____|_____|_____|
    | c-J | c-K | c-L |
    |_____|_____|_____|

So pressing ctrl-I takes you to the middle Vim split. Pressing c-L takes you
to the bottom right tmux split.

If you have fewer than 3 vim or tmux panes, it'll still map the keys as you'd
expect. All of the following should work:

    ___________________  ___________________  ___________________
    |     |     |     |  |        |        |  |                 |
    | c-U | c-I | c-O |  |   c-U  |  c-O   |  |       c-I       |
    |_____|_____|_____|  |________|________|  |_________________|
    |   c-J  |  c-L   |  |   c-J  |  c-L   |  |   c-J  |  c-L   |
    |________|________|  |________|________|  |________|________|

