---
layout: post
title: 'A private cloud git repository, for free !'
date: 2014-01-23 00:58
categories: [software, git]
published: true
---

So the scenario is this one

- you need a private cloud based git repository solution
- which doesn't cost anything
- you don't like being limited in the number of repositories you can create

Well we can combine the power of Git and [Dropbox](http://dropbox.com) !

# How to do that ?

We need a [bare repository](http://git-scm.com/book/en/Git-on-the-Server-Getting-Git-on-a-Server) so we can clone from and push there when we want.
We want it _in the cloud_ so it will be located into our Dropbox directory.
Here is an example.

```
git --bare init ~/Dropbox/cloud-git-repositories/my_phd_paper.git
```

Next we go to our local working directory and we clone

```
cd ~/work/dev
git clone ~/Dropbox/cloud-git-repositories/my_phd_paper.git
```

Everytime we push upstream, Dropbox does its magic and synchronize the bare repo online.
(The logo spins)

## Share that private repo with someone

If you want to collaborate, you can share your directory via Dropbox.
The guest can clone the repository like you did on his own machine.

Time to time a `git fetch` will warn them for new changes.
