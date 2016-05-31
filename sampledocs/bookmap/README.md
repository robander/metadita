# Sample bookmap

The primary test document in this set is `bookmap.ditamap`.

This test is intended to test all of the sections in a basic bookmap, to the extent allowed or practical within a single map. `bookmap.ditamap` covers:

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

## Additional tests

 * `bookmap-chaps.ditamap` removes the parts, and uses only top-level chapters. Otherwise, same as `bookmap.ditamap`.
 * `bookmap-chappart.ditamap` mixes top level parts and top level chapters. Otherwise, same as `bookmap.ditamap`.
 * `bookmap-top-appendix.ditamap` removes the `<appendices>` wrapper, resulting in two top-level appendix elements.
 * `bookmap-listfiles.ditamap` references a topic for each item in `<booklists>`. For example: `<toc href="toc.dita"/>`

## Suggested alternate tests

An incomplete list of conditions that should probably also be tested

 * Multiple instances of front / back matter topics (multiple preface, notices, TOC, etc)