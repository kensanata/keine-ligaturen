# Keine Ligaturen

This script can be used as a filter to add ZERO WIDTH NON-JOINER
characters to German UTF-8 encoded text such that no ligatures are
used by rendering engines such as web browsers.

The data is based on
[selnolig](https://github.com/micoloretan/selnolig/). In fact, the
Perl script simply contains a verbatim copy of
`selnolig-german-patterns.sty` which it parses in order to do the
appropriate replacements.

Example usage:

keine-ligaturen < example.md | markdown > example.html
