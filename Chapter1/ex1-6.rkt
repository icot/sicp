#lang racket
(require racket/include)

(include "sqrt.rkt")

; Guess: Given the applicative order evaluation of the interpreter,
; evaluating the new-if body will allways run the sqrt-iter from the else 
; clause 

(module+ main
    (sqrt 2))
