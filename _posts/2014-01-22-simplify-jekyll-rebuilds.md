---
layout: post
title: "Simplify jekyll rebuilds"
date: 2014-01-22 15:30
categories: protip
published: true
---

As opposed to Octopress, Jekyll does only very few things to help you in the writing and reviewing process.

As I just switched back to Jekyll to gain in simplicity, my main problem was the missing automatic rebuild when you update anything.

Well there is something for that ! `Guard`. It is not specific to Jekyll and most developers use it to launch tests automatically for example. 

So I did a basic `gem install guard` to be sure, followed by a `guard init .`, ready to create my rules for watching the directories and launching the rebuild. 

## There is actually better

This [tiny gem](https://github.com/therabidbanana/guard-jekyll) has been made for that. So it is down to 

```
gem install guard-jekyll
guard init jekyll
```

or even better, create a Gemfile

```
source 'https://rubygems.org'
gem 'guard-jekyll'
```

and don't forget to `bundle`.

Now, you just have to launch `guard` to have automatic rebuilds whenever you change something.

To avoid having too many tabs in your console, just use `screen` ([doc](http://www.computerhope.com/unix/screen.htm)) and you can have `jekyll serve` and `bundle exec guard` running in a separate process of the console to clear this up !

