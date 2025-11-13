# Prolog support for Zed

Forked from [this extension](https://github.com/Piefayth/zed-prolog) by Piefayth, now [unmaintained](https://github.com/Piefayth/zed-prolog/pull/1).

This extension provides a [Tree-sitter](https://tree-sitter.github.io/tree-sitter/) grammar (and corresponding queries for syntax highlighting, bracket matching, indentation, and injections) ~as well as a [LSP](https://en.wikipedia.org/wiki/Language_Server_Protocol)~ for the [Prolog](https://www.swi-prolog.org/) language.

It also provides a set of tasks:

-	"Prolog: Run SWI-Prolog": Opens a new instance of SWI-Prolog 
-	"Prolog: Run file"

## Requirements / Notes

In order for the tasks and ~the LSP~ to work, make sure you have a recent version of [SWI-Prolog](https://www.swi-prolog.org/) installed.

~The language server will **not** work on Windows.~

~The language server will **not** work if the path to the file contains a *space*.~

The Language server has been disabled for stability issues. If anyone manages to get it working please make a PR (some code is already present in the [lib.rs](src/lib.rs) file).


## External links

Tree sitter grammar: [https://codeberg.org/foxy/tree-sitter-prolog](https://codeberg.org/foxy/tree-sitter-prolog)

~Language Server: [https://github.com/jamesnvc/lsp_server](https://github.com/jamesnvc/lsp_server)~
