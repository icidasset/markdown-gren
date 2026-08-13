# Changelog

## 5.0.1

Restrict `gren-lang/parser` to `< 6.2.0`.

Until `gren-lang/parser` 6.2.x, `chompUntilEndOr` (backed by the parser
kernel's `findSubString`) stopped parsing *before* the needle it matched.
Parser 6.2.x changed `findSubString` to consume the needle, which breaks
markdown-gren's block parsers: a multi-line paragraph at the end of the input
(no trailing blank line) made `Markdown.Parser.Blocks.parse` return `Err`,
which `Markdown.parse` silently turned into `blocks = []` (empty pages).

Reworking the block parsers to be compatible with both semantics is a larger
change; constraining the dependency range to the compatible parser versions
resolves the regression. The test suite now includes regression tests for this
case (`tests/src/Tests/Parser/Regression.gren`).

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
