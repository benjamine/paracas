Sets up git, config and aliases.

Adds basic support for a [github-flow](https://guides.github.com/introduction/flow/index.html) using feature branches on personal forks.

First-time
----------
``` sh

# clone
hub clone owner/reponame
cd reponame

# fork with my user, and set it as origin (base repo will be renamed as "upstream")
git fork
```

Adding a Feature
---------------
``` sh
# switch (create if new) to branch feature/rocket-launcher (will fetch upstream and base the branch on upstream/master)
git feature rocket launcher

# code!

# git status
git s

# add all and commit
git a
git c adds a rocket launcher

# do a commit amend
git a
git amend
# or optionally change the commit message
git amend this adds the rocket launcher

# when done, send a pull request (will push any pending commits)
git pr a rocket launcher
# if no title is given, will use last commit message
git pr

# you can now click the new pr url, and write a nice description

# if needed, add more commits to the pull request
git push origin

# if there were conflicts:
git up

# solve conflicts
git mergetool
git rebase --continue

# force push
git push -f origin
```

Hotfix
------

``` sh
# switch (create if new) to branch hotfix/fuel-tank
# (will fetch upstream and base the branch on upstream/production)
git hotfix fuel tank

# cherry pick one or more commits (IMPORTANT: always use commits already in master!)
git cherry-pick <hash>

# send a pull request (will base it on upstream/production)
git pr

# NOTE: never commit directly to a hotfix branch to avoid conflicts
```

Using shell aliases
------------

Using zsh aliases (```make shell```) you can shorten some of these:

``` sh
# clone & fork
clone owner/reponame
cd reponame
fork

# create/switch to feature branch
feature rocket launcher

# git status
s

# add all and commit
git a && commit adds a rocket launcher

# do a commit amend
git a && amend [new commit message]

pr [pull request title]
pr

# add more commits
push

# if there were conflicts:
up

# solve conflicts
git mergetool
git rebase --continue

# force push
pushf

```

Shared Feature Branches
--------

In the case you need to share a branch with others, you can push to a shared feature branch in upstream

``` sh
# checkout/create a feature branch as usual
git feature rocket launcher

# create the feature branch in upstream (and set current branch to track that)
git share-feature

# do more commits...

# send commits to shared branch
git push upstream

# if there were conflicts

# rebase from upstream/feature/rocket-launcher
# ie. get commits from other in the shared branch
git up

# solve conflicts (if any)
git mergetool
git rebase --continue

# force push
git push -f upstream
```

For someone to checkout a shared branch:

``` sh
# as usual (if the feature is found in upstream, this will track that)
feature rocket launcher

# pushing and updating is done as usual too
```

Working on a shared branch is not free, the cost is now having to keep the shared branch in sync with master.

**IMPORTANT**: as the shared branch is now being tracked (by anyone working on the shared feature branch), you cannot use `git rebase` on it anymore. The only way to update the shared branch (and any branch been tracked by someone else) is using `git merge` instead. **Unless** you do a "final rebase" before going to master, and delete the shared branch after it.
