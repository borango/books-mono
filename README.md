# Mono Repository for Book Projects by other Authors and Boran

Inspired by the "lean publishing" approach, I started to write and hit some technical limits with the GitHub writing mode and Preview processes on leanpub.com. So I created a simple solution which serves all my needs: non-fiction books with markdown manusscripts and overlapping content.

## Branch Model

Each book project has one or more own branches. Such book branch names contain the book title and a variation, separated by a slash `/`. Current active example is `eco-sailing/preview` for the book "Eco Sailing", which is in preview status.

Branches for the same book project can be used by co-authors, for book releases, for variations in print or digital formats, and for different image resolutions and filesize savings.

Special branches are:

- `main`: collection of all manuscript files, resources, and build scripts (not well maintained right now)
- `develop`: collection of manuscript "commons" which can be shared across books
- `template`: a skeleton of book project files; branch off this one for a new book, then see index.md for instructions on how to customize

So, looking into `main` does not tell you much about anything. Instead, try the manuscript folder in a book branch, such as...  
https://github.com/borango/books-mono/blob/eco-sailing/preview/manuscript/1_intro.md *or*  
https://github.com/borango/books-mono/blob/seasick-no-more/preview/manuscript/summary.md .

## Features

Before I came to know leanpub.com, I had already started to draft book and course material in markdown. Git obviously. Because I am writing non-fiction, I am creating loads of diagrams. For quick drafts, these diagrams are rendered with KTS in the browser. And for that reason, I am using Observable Framework as a preview server. That's why every book project has the Observable-style package.json in its root folder.

Run `npm install`, then `npm run dev` to start the preview server.

For the Obervable preview server, I do not maintain a "book file". That's why *all* manuscript files are listed in the side menu, in alphabetical order of their filenames. Also other aspects, like TOC and cross references, do not produce the same (or even good) results in the preview server. It is mainly to preview the page flow of individual manusscript files, and most importantly to author the inline images.

PDF book generation is done with Pandoc and a little bit of custom LaTeX templating. Run `./pandoc.sh` to generate a PDF from the current branch. It is still fairly quick (2 seconds on my machine).

With local previews and PDF generation, we have our own "GitHub Writing Mode".

PDF generation is also automated with a GitHub Action, which enables authors to work on their manuscript without installing any of the tool chain anywhere. So we have effectively "Browser Writing Mode" by editing markdown on GitHub. See https://github.com/borango/books-mono/actions for the pipeline runs and PDF build results.

With uploading PDF files to Leanpub, we can still use their "Upload Writing Mode".

Note that the file manuscript file structure here is based on Leanpub's, but symlinks currently break Leanpub's preview and publish processes, and nested resource folder structures are not compatible with their "Browser Writing Mode". So the compatibility with Leanpub is limited for migration paths from this mono repo to Leanpub's "GitHub" or "Browser" writing modes.

`./verify_manuscript.sh` checks for consistency of manuscript files in `Subset.txt`

`manuscript/resources/compare_sizes.sh` compares the existence and sizes of high-res and low-res images.
`manuscript/resources/resize_160.sh` resizes high-res images to 160 pixels width, for low-res images.
The former two tools only make sense in the `develop` branch, because there we keep common resources for all books and branches. See https://github.com/borango/books-mono/tree/develop/manuscript/resources/160_res for the low-res raster image collection.

Each book branch will merge only highres **or** lowres images from `develop`, then symlink `res` to the respective folder. Manuscript files always reference resources via `/res/image.png`. This way we can create a highres or lowres version of a book branch without copying all resource files around.

Other scripts help me to split and merge between book branches.

## Contribution

Typical contributions in this mono-repo come from co-authors in book projects.

Should you clone this repo for the sake of its build scripts, then you are welcome to send my pull requests for improvements.

## Open Source and Licensing

For the sake of transparency, sharing, and simplicity I decided to open-source all manuscripts and build tools. You are welcome to use the technical tools for your own projects. For the manuscript content, I reserve all rights for myself (or for the respective authors per book). The book projects will be published under donation-based pricing, so everybody can read them for free anyway.

Please contact the authors or me if you wish to license or reuse any of the manuscript content.

- - -

Happy reading and writing!
