#lang racket

;; Ackermann's function
;; https://en.wikipedia.org/wiki/Ackermann_function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;; a) (define (f n) (A 0 n)) -> f(n) = 2*n

;; b) (define (g n) (A 1 n)) -> g(n) = 2^n
;; g(n) = A(0, A(1, n-1)) = 2 * A(1, n-1) = 2 * 2 * A(1, n-2)  = ... = 2^n

;; d) (define (h n) (A 2 n)) -> h(n) = 2^(g(n-1)) = 2^(2^(n-1))

;; h(n) = A(2, n) = A(1, A(2, n-1)) = g(A(2, n-1)) = 2^(A(2, n-1))
;; recursively: 2^(2^(2^(2... = 2 (arrow) n
;; where the Arrow comes from Knuth's arrow notation
;; https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation


(module+ main
    (/ (log (A 2 5)) (log 2)))
