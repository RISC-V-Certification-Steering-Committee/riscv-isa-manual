# Normative Rule Curations

This directory contains one normative rule curation YAML file per adoc chapter file.
The YAML file has the same name as its corresponding adoc file with the extension changed from .adoc to .yaml.

Each YAML file provides the information required to create curated lists of normative rules for
its corresponding adoc file. The adoc file contains tags (AKA AsciiDoc anchors with names with a "norm:" prefix) of text associated with normative rules.
In many cases there is a 1:1 mapping from normative rules and tags but not always (1:many, many:1, and many:many exist)  
so the YAML files in this directory are created to handle all mappings.
