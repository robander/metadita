# Sample NLS test files

These test files are intended to test generated text, such as the word "Note" that appears alongside a `<note>` element. 
They also test index processing for each supported language, in most cases by declaring index terms that begin with
every (expected) character in the language. Some languages (such as Korean) only use a subset of possible characters.

## Organization

The map `bookmap.ditamap` includes chapters, front matter, and topic content that 
will generate NLS text for PDF output.

For each supported language:
 * A map sets the `xml:lang` attribute to that language
 * Sections of the bookmap are reused by conref
 * A topic specific to the language is referenced as a chapter
 * Within the topic, index terms are defined or reused by conref

## How to test

The Ant build file has a variety of targets to test any of the following:
 * Build a single language to PDF, XHTML, or HTML5
 * Build a single language to PDF, XHTML, and HTML5
 * Build PDF, HTML5, or XHTML of all supported languages
 * Build PDF, HTML5, and XHTML of all supported languages
 * To test unsupported languages, build an unsupported language to any or all of PDF, XHTML, or HTML5

See comments in the build file for instructions.

## What's missing

The following languages (at least) need index coverage that includes terms with their own character set:
 * Japanese
 * Simplified Chinese
