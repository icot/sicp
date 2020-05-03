#lang racket

(require "primes.rkt")

(define (next-three-primes n acc)
  (printf "n ~a acc ~a\n" n acc)
  (if (< acc 3)
      (if (prime? n)
          ((printf "n ~a\n" n)
           (next-three-primes (+ n 2) (+ acc 1)))
          (next-three-primes (+ n 2) acc)
          )
      acc
      )
  )


(module+ main
  (time (next-three-primes 10001 0))
  )
