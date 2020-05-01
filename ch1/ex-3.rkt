#lang racket

;; Square 
(define (square x) (* x x))
(define (sum-squares x y) (+ (square x) (square y)))

(define (f a b c)
  (cond
    ((and (>= a b) (>= b c)) (sum-squares a b))
    ((and (>= a b) (>= c b)) (sum-squares a c))
    ((and (>= b a) (>= c a)) (sum-squares b c))
  )
  )


(f 7 3 5)
