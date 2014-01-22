---
layout: post
title: "A private cloud git repository, for free !"
date: 2014-01-23 00:58
categories: [software, git]
published: true
---

So the scenario is this one

* you need a private cloud based git repository solution
* which doesn't cost anything
* you don't like being limited in the number of repositories you can create

Well we can combine the power of Git and [Dropbox](http://dropbox.com) !

# How to do that ?

Well we need a [bare repository](http://git-scm.com/book/en/Git-on-the-Server-Getting-Git-on-a-Server) so we can clone from and push there when we want.
We want it _in the cloud_ so it will be located into our Dropbox directory.
I am going to take the example of a PhD paper.

```
git --bare init ~/Dropbox/cloud-git-repositories/my_phd_paper.git
```

Next we go to our local workspace and we clone

```
cd ~/work
git clone ~/Dropbox/cloud-git-repositories/my_phd_paper.git
```

Everytime we push upstream to the git remote Dropbox repository, we 
can see the logo of the synchronization being done in the taskbar.


## Wait, there is more

If you want to collaborate, for example with a reviewer, you can decide to share your directory via Dropbox. The reviewer can then clone the repository on his own machine, and work like you with it.

Time to time a `git fetch` will warn you if modifications have been done.

