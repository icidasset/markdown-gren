# Changelog

## 5.1.0

Support `gren-lang/parser` 6.x, which changed `findSubString` (the kernel that
backs `chompUntilEndOr` / `chompUntil`) to *consume* the needle it matches.
markdown-gren's block parsers relied on the older behaviour where chomping stops
*before* the needle, so on parser 6.1.0+ a multi-line paragraph at the end of the
input (no trailing blank line) made `Markdown.Parser.Blocks.parse` return `Err`,
which `Markdown.parse` silently turned into `blocks = []` (empty pages).

Rather than rewriting every block parser for the new semantics, `Parser.Extra`
now ships `chompToNeedle` / `chompToNeedleOrEnd`, which preserve the pre-6.1.0
chomping behaviour, and the parsers now use those. This removes the previous
`< 6.2.0` restriction; the dependency range is now `6.0.0 <= v < 7.0.0`.

## 5.0.1

Restrict `gren-lang/parser` to `< 6.2.0`.

Up to `gren-lang/parser` 6.0.0, `chompUntilEndOr` (backed by the parser
kernel's `findSubString`) stopped parsing *before* the needle it matched.
`gren-lang/parser` 6.1.0 changed `findSubString` to consume the needle, which
breaks markdown-gren's block parsers: a multi-line paragraph at the end of the
input (no trailing blank line) made `Markdown.Parser.Blocks.parse` return `Err`,
which `Markdown.parse` silently turned into `blocks = []` (empty pages).

Reworking the block parsers to be compatible with both semantics is a larger
change; constraining the dependency range resolved the observed regression (the
test suite used `gren-lang/parser` 6.0.0). Note that the `< 6.2.0` bound is
imprecise here — the change actually shipped in `gren-lang/parser` 6.1.0, so
6.1.x were already affected. The test suite now includes regression tests for
this case (`tests/src/Tests/Parser/Regression.gren`).

## 6.0.0

Update to gren v0.6.x

## 4.0.0

Update to gren v0.5.x


## 3.1.0

Add ability to transform to and from JSON.

## 3.0.0

Fixed some issues with `toHtmlWithOptions` and reversed the parameter order.


## 2.1.0

Adds `toHtmlWithOptions` among other related functions and types.
Starting with the option to set the `loading` attribute of images.

## 2.0.0

* Adds the ability to parse HTML
* Improves list item parsing
* Bump `icidasset/html-gren` dependency


## 1.0.1

Bump `icidasset/html-gren` dependency.
