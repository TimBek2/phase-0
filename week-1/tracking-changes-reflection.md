How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows devs to keep their original code intact and unaltered while they make changes or add to it, by branching the original code into a separate environment. Tracking allows them to keep track of what changes were made in each commit, which is especially valuable when multiple people are collaborating on one file and don't know what was changed, when. 

What is a commit?
A commit is effectively a save point for the code, with a description of what has been changed, allowing devs to keep track of how a code changes over time and allows them to return to a past point in case something goes wrong.

What are the best practices for commit messages?
The first line is a capitalized, short summary of what happened. If more space is needed, a space is taken and then written in more detail, using a hanging indent for paragraphs. Bullet points are also ok. Writing is always done in the imperative "fix bug," instead of "fixed bug," due to how commit messages are displayed later. 

What does the HEAD^ argument mean?
HEAD^ refers to the last commit that was submitted, so it's generally used to change a file that was just committed. 

What are the 3 stages of a git change and how do you move a file from one stage to the other?
When you create a new file within git, it starts as an untracked file. Using the command git add, it is added to the stage to be committed. By using git commit, you then commit the change and it is added to the file. Using git reset HEAD^, HEAD-3, HEAD-4, etc, you can remove a file from the stage and back to untracked. 

Write a handy cheatsheet of the commands you need to commit your changes?
git checkout -b [branch]: make a new branch
git touch : make the file
git status : check status of files in the staging process
git add : add the file to the stage
git commit -v : commit the file and open text editor to create commit message
git log : check log of changes with commit messages

What is a pull request and how do you create and merge one?
A pull request is a request by a dev to another dev to review and then pull the new code that they have created into the master branch of the code. After they write the code on their local machine, they push the change up to GitHub with the command git push origin [branch name]. Then you go to github.com and navigate to the repository, where there's a button saying "compare & pull request." Clicking on this allows you to create the pull request. Another dev can now review the changes made, and then they complete the process and pull the changes into the master branch by clicking on merge pull request. 

Why are pull requests preferred when working with teams?
Pull requests are preferred because it allows a dev to essentially flag a piece of code that he's finished with as being ready for review by another dev, who will check for bugs etc. The reviewer can then complete the request by either commenting on the work to be fixed, or merging the changes with the master branch. 