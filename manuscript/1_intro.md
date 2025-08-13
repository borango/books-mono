{list-figures: groups}

# Intro <!-- leanpub style: H1 for chapter title -->

*intro text per book here*

*this is a template file which should exist for each book, but it will be different and is typically not shared between books*

*note that this template also contains Leanpub Markua document properties*

Procedure for creating a new book:

1. `git checkout template && git ckeckout -b new-book/preview`
1. adjust `title` in `observablehq.config.js` to ***new-book***
1. adjust perhaps `index.md` and `1_intro.md` now (or later)
1. `git commit -m init && git push`
1. Leanpub UI: clone ***template*** 
1. go to the clone's settings, change URL to ***new-book***
1. change writing mode to GitHub
1. specify repo `borango/leanpub-mono` and branch `new-book/preview`
1. change Book Cover to *manuscript*
1. create Subset preview from Web UI
1. copy Preview PDF download link
1. adjust `preview_id.txt` to contain only the UID part of the URL
1. `./commit_push_and_build_preview.sh testing CLI`
1. you should see the downloaded PDF which opens automatically

* * * 

## The authors

