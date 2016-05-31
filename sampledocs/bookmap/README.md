# Sample bookmap

This test is intended to test all of the sections in a basic bookmap, to the extent allowed or practical within a single map. Test covers:

 * Each specialized topicref allowed in the front matter
 * Each specialized topicref allowed in the back matter
 * For book lists, each list is tested once in either the front or back matter
  * Specialized lists do not set `@href`, to see if anything is generated
  * The generic `<booklist>` element, which can have no default generation behavior, does set `@href`
 * Parts are tested with nested chapters
  * Top-level chapters (with or without parts) are not tested
 * Appendixes are tested with `<appendices>` wrapper that contains two `<appendix>` elements; thus top-level `<appendix>` is not tested
 * Every topic has a series of paragraphs to ensure it covers multiple pages
 * A generic topic is used (with `@copy-to`) in every specialized context that allows nested `<topicref>`; the topic contains a table, figure, and index term to bulk up generated table, figure, and index lists

## Suggested alternate tests

An incomplete list of conditions that should probably also be tested

 * Mix of top-level parts and chapters
 * Top-level appendix elements
 * List elements, such as `<bibliolist>` or even `<toc>`, that reference topics
 * Multiple instances of front / back matter topics (multiple preface, notices, TOC, etc)