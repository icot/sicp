#lang racket

;Exercise 1.11: 
;A function f is defined by the rule that f ( n ) = n if n < 3 
;and f ( n ) = f ( n − 1 ) + 2 f ( n − 2 ) + 3 f ( n − 3 ) if n ≥ 3 . 
;Write a procedure that computes f by means of a recursive process. 
;Write a procedure that computes f by means of an iterative process. 

(define (f-rec n)
  (if (< n 3) n
    (+ (f-rec (- n 1)) 
       (* 2 (f-rec (- n 2)))
       (* 3 (f-rec (- n 3)))
       )
    )
)

; Not using lists as they have not been introduced yet in the text
(define (f-iter n)
  (define (f-inner n counter fn-1 fn-2 fn-3)
    (define fni (+ fn-1 (* 2 fn-2) (* 3 fn-3)))
    (if (= n counter) fni
      (f-inner n (+ counter 1) fni fn-1 fn-2))
    )
  (if (< n 3) n 
    (f-inner n 3 2 1 0)
    )
)

(module+ main
    (time (f-rec 20))
    (time (f-iter 20))
    (time (f-rec 25))
    (time (f-iter 25))
)
