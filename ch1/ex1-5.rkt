#lang r5rs

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; Racket seems to use applicative order evaluation :)

