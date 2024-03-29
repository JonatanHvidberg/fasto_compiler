// Signature file for parser generated by fsyacc
module Parser
type token = 
  | LPAR of ((int*int))
  | RPAR of ((int*int))
  | LBRACKET of ((int*int))
  | RBRACKET of ((int*int))
  | LCURLY of ((int*int))
  | RCURLY of ((int*int))
  | FUN of ((int*int))
  | FN of ((int*int))
  | COMMA of ((int*int))
  | SEMICOLON of ((int*int))
  | READ of ((int*int))
  | WRITE of ((int*int))
  | DEQ of ((int*int))
  | LTH of ((int*int))
  | EQ of ((int*int))
  | OP of ((int*int))
  | NOT of ((int*int))
  | AND of ((int*int))
  | OR of ((int*int))
  | MAP of ((int*int))
  | REDUCE of ((int*int))
  | FILTER of ((int*int))
  | SCAN of ((int*int))
  | REPLICATE of ((int*int))
  | IOTA of ((int*int))
  | ARROW of ((int*int))
  | PLUS of ((int*int))
  | MINUS of ((int*int))
  | LESS of ((int*int))
  | TIMES of ((int*int))
  | DIVIDE of ((int*int))
  | NEGATE of ((int*int))
  | INT of ((int*int))
  | CHAR of ((int*int))
  | BOOL of ((int*int))
  | IF of ((int*int))
  | THEN of ((int*int))
  | ELSE of ((int*int))
  | LET of ((int*int))
  | IN of ((int*int))
  | EOF of ((int*int))
  | TRUE of (bool*(int*int))
  | FALSE of (bool*(int*int))
  | ID of (string*(int*int))
  | STRINGLIT of (string*(int*int))
  | CHARLIT of (char*(int*int))
  | NUM of (int*(int*int))
type tokenId = 
    | TOKEN_LPAR
    | TOKEN_RPAR
    | TOKEN_LBRACKET
    | TOKEN_RBRACKET
    | TOKEN_LCURLY
    | TOKEN_RCURLY
    | TOKEN_FUN
    | TOKEN_FN
    | TOKEN_COMMA
    | TOKEN_SEMICOLON
    | TOKEN_READ
    | TOKEN_WRITE
    | TOKEN_DEQ
    | TOKEN_LTH
    | TOKEN_EQ
    | TOKEN_OP
    | TOKEN_NOT
    | TOKEN_AND
    | TOKEN_OR
    | TOKEN_MAP
    | TOKEN_REDUCE
    | TOKEN_FILTER
    | TOKEN_SCAN
    | TOKEN_REPLICATE
    | TOKEN_IOTA
    | TOKEN_ARROW
    | TOKEN_PLUS
    | TOKEN_MINUS
    | TOKEN_LESS
    | TOKEN_TIMES
    | TOKEN_DIVIDE
    | TOKEN_NEGATE
    | TOKEN_INT
    | TOKEN_CHAR
    | TOKEN_BOOL
    | TOKEN_IF
    | TOKEN_THEN
    | TOKEN_ELSE
    | TOKEN_LET
    | TOKEN_IN
    | TOKEN_EOF
    | TOKEN_TRUE
    | TOKEN_FALSE
    | TOKEN_ID
    | TOKEN_STRINGLIT
    | TOKEN_CHARLIT
    | TOKEN_NUM
    | TOKEN_end_of_input
    | TOKEN_error
type nonTerminalId = 
    | NONTERM__startProg
    | NONTERM_Prog
    | NONTERM_FunDecs
    | NONTERM_Fun
    | NONTERM_Type
    | NONTERM_Params
    | NONTERM_BinOp
    | NONTERM_Exp
    | NONTERM_Multilet
    | NONTERM_Exps
    | NONTERM_FunArg
/// This function maps tokens to integer indexes
val tagOfToken: token -> int

/// This function maps integer indexes to symbolic token ids
val tokenTagToTokenId: int -> tokenId

/// This function maps production indexes returned in syntax errors to strings representing the non terminal that would be produced by that production
val prodIdxToNonTerminal: int -> nonTerminalId

/// This function gets the name of a token as a string
val token_to_string: token -> string
val Prog : (Microsoft.FSharp.Text.Lexing.LexBuffer<'cty> -> token) -> Microsoft.FSharp.Text.Lexing.LexBuffer<'cty> -> (AbSyn.UntypedProg) 
