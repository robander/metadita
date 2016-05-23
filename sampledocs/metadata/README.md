# Test overwhelming metadata

This set of maps attempts to use every possible metadata element at the `<map>` or `<bookmap>` level
(by placing them in `<topicmeta>` or `<bookmeta>` as a child of the root element). This has been useful to test
cascading of metadata into child topics, as well as to validate which metadata elements might accidentally 
appear as content when working on PDF customizations (particularly the cover).

This set of test documents was created in a DITA 1.2 environment so it does not yet include tests for 
`<resourceid appid="test"/>` or `<ux-window>`.
