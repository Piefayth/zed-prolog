(comment) @comment @spell

(atom) @constant

((atom) @boolean
  (#eq? @boolean "true"))

((atom) @boolean
  (#eq? @boolean "false"))

(functional_notation
  function: (atom) @function.call)

(integer) @number

(float_number) @number.float

(directive_head) @operator

(operator_notation
  operator: _ @operator)

[
 (open)
 (open_ct)
 (close)
 (open_list)
 "|"
 (close_list)
 (open_curly)
 (close_curly)
] @punctuation.bracket

[
 (arg_list_separator)
 (comma)
 (end)
 (list_notation_separator)
] @punctuation.delimiter

(operator_notation
  operator: (semicolon) @punctuation.delimiter)

(double_quoted_list_notation) @string

(variable_term) @variable

[
  (directive_term)
  (clause_term)
  (arg_list)
  (list_notation)
] @fold

(directive_term) @indent.zero

(clause_term) @indent.zero

(functional_notation
  (atom)
  (open_ct) @indent.begin
  (close) @indent.end)

(list_notation
  (open_list) @indent.begin
  (close_list) @indent.end)

(curly_bracketed_notation
  (open_curly) @indent.begin
  (close_curly) @indent.end)

((comment) @injection.content
  (#set! injection.language "comment"))
