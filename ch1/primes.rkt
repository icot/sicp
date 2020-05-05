#lang racket

(require "sqrt.rkt")

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n)
         (fast-prime? n (- times 1)))
        (else false)))


(define (divides? a b)
  ( = (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))

;; Ex 1.23
(define (next n)
  (if (= n 2) (+ n 1) (+ n 2)))

(define (find-divisor1 n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor1 n (next test-divisor)))))

(define (smallest-divisor1 n)
  (find-divisor1 n 2))

(define (prime1? n)
  (= n (smallest-divisor1 n)))

;; Export all methods
(provide (all-defined-out))
;; Main
(module+ main
  (fast-prime? 2503 5)
;; Ex 21
    (smallest-divisor 199)
    (smallest-divisor 1999)
    (smallest-divisor 19999))
