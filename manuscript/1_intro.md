{list-figures: groups}

# Intro <!-- leanpub style: H1 for chapter title -->

*this is a template file which should exist for each book, but it will be different and is typically not shared between books*

*note that this template also contains Leanpub Markua document properties*

## *Procedure for creating a new book from this template*

1. `git checkout template && git ckeckout -b new-book/preview`
1. adjust `title` in `observablehq.config.js` to ***new-book***
1. adjust perhaps `index.md` and `1_intro.md` now (or later)
1. (cover picture adding subroutine here) (or later)
1. `git add . && git commit -m init && git push`

1. Leanpub UI: clone ***template*** - the clone will appear in your stealthed books
1. (unstealth if you want now or later)
1. go to the clone's settings, change URL to ***new-book***
1. About: change the book title to ***new-book*** or it will appear as a confusing duplicate of ***template***
1. Writing Mode: switch to ***GitHub***
1. specify repo `borango/leanpub-mono` and branch `new-book/preview`
1. Book Cover: *Switch to Manuscript Cover Mode*
1. Versions: create Subset Preview from Web UI
1. copy Preview PDF download link

1. adjust `preview_id.txt` to contain only the UID part of the URL
1. `./commit_push_and_build_preview.sh adjusting ID`
1. you should see the downloaded PDF which opens automatically


* * * 

## The authors

