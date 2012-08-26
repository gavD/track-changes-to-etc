Track Changes To Etc
====================

A project to keep scripts in that automatically commit my
/etc directory. I'm still not 100% sure of the best ways
to do this but I have a script here that uses inotify to
automatically run etckeeper.

The thing is, there is no way I'm going to remember to
git commit every single time I change a file in /etc if I'm
hacking around experimenting with settings on my local
machine, so having some way to automatically commit these
files at every stage will help my peace of mind and sanity
and mean I don't hose my machine and then sit there
trying to remember "now, what did I change?"

Does it work?
-------------

Well, the script itself works, yes. I'm not really a sysadmin
or anything though so I am not sure of the best way to get this
running. I figured /root/rc.local but that doesn't seem to work
(although I can see an inotify process running). If you're a
clever sausage, please be a dear and tell me what the best way
of doing this is!

- Gav
