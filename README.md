Common Workflows
================

Common workflow definitions for GitHub Actions

## Versions

Versions are managed using branches. Backwards compatible changes and additions
can be committed to existing branches. Breaking changes need to have a new 
branch. After creating a new branch the workflows in base_project can be updated
to get the new version in wide use. And the default branch of the repo should
be updated.

Currently, we have:
* master: a.k.a v1
* v2: added to remove inputs that are no longer used because we use poe for
running tasks.
