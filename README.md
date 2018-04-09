[![Travis](https://img.shields.io/travis/rust-lang/rust.svg?style=plastic)](https://github.com/systers/powerup-iOS)

# PowerUp - iOS [![Build Status](https://travis-ci.org/systers/powerup-iOS.svg?branch=GSoC17)](https://travis-ci.org/systers/powerup-iOS)

PowerUp is an educational mobile game app that seeks to empower young girls to take charge of their reproductive health 
and self-esteem by navigating the life of their Avatar!

## Setup for Developers
1. Make sure you have Xcode IDE downloaded on your machine for software development for iOS. 
2. Fork the systers project. Go to [Powerup-iOS](https://github.com/systers/powerup-iOS) and click on Fork in the top right corner. Fork the repo on your Github id. Make sure that you don’t have any existing repo with the same name in your profile else there will be conflicts.
3. Make sure you have installed [Github Desktop(for Mac)](https://desktop.github.com/). 
4. Open Github Desktop, click on Clone Repository in File Menu. Clone the forked repo to get a local copy on your system.
5.Fetch the latest version of code from branch "develop".

## Configure remotes
When a repository is cloned, it has a default remote called `origin` that points to your fork on GitHub, not the original repository it was forked from. To keep track of the original repository, you should add another remote named `upstream`:
1. Get the path where you have your git repository on your machine. Go to that path in Terminal using cd. Alternatively, Right click on project in Github Desktop and hit ‘Open in Terminal’.
2.Run `git remote -v`  to check the status you should see something like the following:
> origin    https://github.com/YOUR_USERNAME/powerup-iOS.git (fetch)
> origin    https://github.com/YOUR_USERNAME/powerup-iOS.git (push)
3. Set the `upstream`:
`git remote add upstream https://github.com/systers/powerup-iOS.git`
4. Run `git remote -v`  again to check the status, you should see something like the following:
> origin    https://github.com/YOUR_USERNAME/powerup-iOS.git (fetch)
> origin    https://github.com/YOUR_USERNAME/powerup-iOS.git (push)
> upstream  https://github.com/systers/powerup-iOS.git (fetch)
> upstream  https://github.com/systers/powerup-iOS.git (push)
5. To update your local copy with remote changes, run the following:
`git fetch upstream develop`
`git rebase  upstream/develop`
This will give you an exact copy of the current remote, make sure you don't have any local changes.
6. Project set-up is complete. For more details and additional git commands, [click here](https://docs.google.com/document/d/1N_-zmmjPn6D1H6wTdF4z66mFGT3af_FWbfGvLKkeY1w/edit#bookmark=id.lsmu7e8l1dnn). 
## Contributing and developing a feature
1. Make sure you are in the develop branch `git checkout develop`
2. Sync your copy `git pull --rebase upstream develop`
3. Create a new branch with a meaningful name `git checkout -b branch_name`
4. Develop your feature on Xcode IDE  and run it using the simulator or connecting your own iphone.
5. Build your project in Xcode IDE by pressing Build or using shortcut Command+B.
6. Add the files you changed `git add file_name` (avoid using `git add .`)
7. Commit your changes `git commit -m "Message briefly explaining the feature"`
8. Keep one commit per feature. If you forgot to add changes, you can edit the previous commit `git commit --amend`
9. Push to your repo `git push origin branch-name`
10. Go into [the Github repo](https://github.com/systers/powerup-iOS/) and create a pull request explaining your changes
11. If you are requested to make changes, edit your commit using `git commit --amend`, push again and the pull request will edit automatically.
12.If you have more commits try squashing them into one commit.
13.git rebase -i origin/master~n master(having n number of commits).
14.Force push with command git push origin +branchname.
15. You need to follow specific pull request template and then create a descriptive pull request mentioning your changes and notifying it to your reviewer.
## Contributing Guidelines
[Click](https://github.com/systers/powerup-iOS/wiki/How-to-Contribute) here to find the contributing guidelines for the project and follow them before sending a contribution.

## Documentation of PowerUp-iOS
Links to the Documentation:  

[2017](https://docs.google.com/document/d/1-45bBWAL8oh5o_1bc42BXGDKTHlGrQW0PCN9gFtlt6U/edit?usp=sharing)    
[2016](https://docs.google.com/document/d/1N_-zmmjPn6D1H6wTdF4z66mFGT3af_FWbfGvLKkeY1w/edit?usp=sharing)    
[2015](https://docs.google.com/document/d/1WkhcVrUs-B_vlCBknNPYqxqc7_7wVrBF2pV0bKu_EiQ/edit?usp=sharing)

