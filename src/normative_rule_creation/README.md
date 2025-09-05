# Normative Rule Creation Files

This directory contains one normative rule creation file per adoc chapter file.
Each creation file has the same name as its corresponding adoc file with the extension changed from .adoc to .yaml.
See rv32.yaml for a good example of a creation file that includes additional informative comments.

Each creation file provides the information required to create the normative rules for
its corresponding adoc file. The adoc file contains tags (AKA AsciiDoc anchors with names with a "norm:" prefix) of text associated with normative rules.

In many cases there is a 1:1 mapping between normative rules and tags but not always (1:many, many:1, and many:many also exist). The creation files provide the mapping information to create normative rules from the tags.
The creation files also contain additional meta-data added to the normative rule definitions.

The Ruby script in docs-resources/tools/create_normative_rules.rb consumes these creation files along with
the extracted normative tags from the ISA manual chapters to create a file containing all normative rules
for all ISA manuals (priv & unpriv).
