#lang racket
(require "sqrt.rkt")

; For very small numbers (x << 1) good-enough? will return true in
; 4 iterations when the initial guess (1.0) has been reduced by the 
; averaging to ~1/16 and will cause the condition check in good-enough? 
; to return true.

; For very big numbers, the method seems to work ok. May be a difference
; of implementation with regard to the original interpreter?

(module+ main
    (sqrt1 1e20))
