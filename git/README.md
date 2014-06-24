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
git feature rocket launcher

# code!

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
```
