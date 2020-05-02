;; Write a procedure that computes elements of Pascal's triangle by means of
;; a recursive procedure
#lang racket

(define (pascal-triangle r c)
  (cond ((= r 0) 1)
        ((= c 0) 1)
        ((= c r) 1)
        (else (+ (pascal-triangle (- r 1) (- c 1))
                 (pascal-triangle (- r 1) c)))))

(module+ main
  (println (pascal-triangle 0 1))
  (print (pascal-triangle 1 0))
  (println (pascal-triangle 1 1))
  (print (pascal-triangle 2 0))
  (print (pascal-triangle 2 1))
  (println (pascal-triangle 1 1))
  (print (pascal-triangle 3 0))
  (print (pascal-triangle 3 1))
  (print (pascal-triangle 3 2))
  (println (pascal-triangle 3 3))
)
