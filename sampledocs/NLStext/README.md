# Sample NLS test files

These test files are intended to test generated text, such as the word "Note" that appears alongside a `<note>` element. 
They also test index processing for each supported language, by declaring index terms that begin with
every (expected) character in the language.

## Organization

The map `bookmap.ditamap` includes chapters, front matter, and topic content that 
will generate NLS text for PDF output.

For each supported language:
 * A map sets the `xml:lang` attribute to that language
 * Sections of the bookmap are reused by conref
 * A topic specific to the language is referenced as a chapter
 * Within the topic, index terms are defined or reused by conref

## What's missing

The following languages (at least) need index coverage that includes terms with their own character set:
 * Japanese
 * Simplified Chinese
