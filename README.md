A commonmark markdown package for [Gren](https://gren-lang.org/).

⚠️ **This mostly works, but the test suite is incomplete and a few features are still missing.**


## Commonmark

This package implements pretty much the entire Commonmark spec,
but there are a few small differences:

- It doesn't parse open HTML tags that are not closed.


## To do

- [ ] Allow for custom inline & block parsers to be passed in

### Parser implementations

- [x] Blockquotes
- [x] Code blocks (fenced & indented)
- [x] Headers
- [x] Lists (ordered & unordered)
- [x] Thematic breaks
- [x] Paragraphs
- [x] Emphasis & strong emphasis
- [x] Hard line breaks
- [x] Inline code
- [x] Images
- [x] Links
- [x] Autolinks
- [ ] Link reference definitions
- [ ] Raw HTML
- [ ] Setext headings


### Fully tested according to spec

- [ ] Blockquotes
- [ ] Code blocks (fenced & indented)
- [ ] Headers
- [ ] Lists (ordered & unordered)
- [ ] Thematic breaks
- [x] Paragraphs
- [x] Emphasis & strong emphasis (90% done)
- [ ] Hard line breaks
- [x] Inline code
- [ ] Images
- [ ] Links
- [x] Autolinks
- [ ] Link reference definitions
- [ ] Raw HTML
- [ ] Setext headings
