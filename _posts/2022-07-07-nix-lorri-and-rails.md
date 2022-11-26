---
layout: post
title: "Nix, Lorri and Rails"
date: 2022-07-07 18:43
categories: [development]
published: false
---

# Nix, Lorri and Rails

I currently use [Nix](https://github.com/NixOS/nix) as my main package manager and was looking for a nice way to run a Rails development environment leveraging it, and avoid rbenv or brew and have the same experience a dockerized dev env would provide, without the cons.

I use [Lorri](https://github.com/target/lorri) to replace `nix-shell` in project developments in general. Lorri leverages `.envrc` out of the box to do its magic so we can use that as well.

Finally, Rails handles the consistency of its dependencies thanks to a lockfile `Gemfile.lock` file so I was not particularly interested into offloading the gems management to nix. The isomorphism being already "guaranteed".

## Lorri

First we run `lorri init` in the directory and we set a couple of dependencies in it. A Ruby of course, and also a database for `activerecord` as it requires one.

``` nix
{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = [
    pkgs.ruby_3_1
    pkgs.sqlite
  ];

  shellHook = ''
  '';
}
```

I did not want the gems landing in the nix store, for that I add a couple of env vars in the `.envrc`. We also add the `.gem/bin` directory to the `PATH`.

``` shell
eval "$(lorri direnv)"
export GEM_HOME="$(pwd)/.gem"
export GEM_PATH="$(pwd)/.gem"
export PATH="$(pwd)/.gem/bin:$PATH"
```

Have a separate shell running `lorri daemon` and run `direnv allow` for direnv
to pickup the new `.envrc`. Lorri will build that environment so we end up with `ruby` and `sqlite` binaries available in that shell.

## Rails

From above we can run business as usual `gem install bundler` and then `bundle` and `bundle exec rails new .` etc.

## That's it

Do not forget to `.gitignore` anything that can bother other devs and is specific to your environment like `.gem` directory, the `shell.nix` file or the `.envrc`
