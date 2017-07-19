# Xargs Colorization

This is a snippet that you can put in a script which is being invoked in
parallel by xargs. It will gain a lock on one of 8 colors and then the
output for that thread will be colorized separately from the others.

Inspired by xargs output being absolutely unreadable if you're invoking
verbose scripts.

The example contained within the snippet I've committed pulls master for
all git repos in your ~/GitHub folder.

If you use more than 8 threads, something will probably blow up.

![Example](https://github.com/gabinante/xargs-colorization/raw/master/xargs-colorized.png)

