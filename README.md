# New Repository Setup Script

## Overview

Creates new git repo, entry point for further automation E.g. dependant upon
type of project, copy template across

Takes a path fragment starting from project folder, and an optional 2nd
parameter which indicates the type of the project (only api supported), e.g.:

`newrepo geome/projectportfolio api`

Supports Geo.me naming conventions for determining what the project type is.

## Next Steps

### Add in templates

- $HOME/Projects/personal/docker-templates/
- cp /Users/route/Scripts/template.html index.html
- Something for bash
- new_notebook (see fish functions)

Tidy up fish functions doing same thing

### Add remotes

- Private (Bitbucket)
- Public (Github)
