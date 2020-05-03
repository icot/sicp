#lang racket

(define (fast-expt b n)
  (define (square x) (* x x))
  (define (even? (= (remainder n 2) 0)))
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n1))))))

;; Hint: Keep along a state variable a such that (a*b)^n is
;; constant through the process. a starts as 1 and contains
;; the result at the end of the process
