#lang racket

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (square x) (* x x))

(define (good-enough? guess x) 
  (< (abs (- (square guess) x)) 0.01))

(define (sqrt1 x)
  (sqrt-iter 1.0 x))

(provide (all-defined-out))

(module+ main
    (sqrt1 31))

