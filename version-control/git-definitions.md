# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control allows you to view the history of a document or software code and all the changes that were made to it over the course of time.  It allows you to merge changes made by different people on your team into a single master document.  It also allows you to revert back to a previous version should a mistake have been made say in the case that a bug was introduced, one can simply go back to a previous version of the code until the bug can be found and fixed in the latest version of the code.

* What is a branch and why would you use one?

A branch is a copy of a document or code in git.  It allows teams to work on different versions of a document at the same time.  Then those changes can be merged back together into the master document.

* What is a commit? What makes a good commit message?

A commit is a save point in Git.  That then creates a version point that can be returned to later if need be.  A good commit message should be specific to the changes that were made to the document or code in that version.  It should detail out what specifically was updated.

* What is a merge conflict?

Merge conflicts happen when two different versions have different changes made to the same line of code.  So if a team mate and I are working on a code and we have separate versions and he writes shoes are nike on line nine and merges it back.  Meanwhile I write shoes are adidas on line nine, then when I try to merge the copy back to the master, Git will show a merge conflict letting me know conflicting edits have been made.