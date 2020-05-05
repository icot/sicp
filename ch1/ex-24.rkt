#lang racket

(require "primes.rkt")

;; using (current-inexact-milliseconds) instead of runtime
(define runtime current-inexact-milliseconds)

(define (timed-prime-test n)
  (printf "N: ~a\n" n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 5)
      (report-prime (- (runtime) start-time))
      #t
      )
  )


(define (report-prime elapsed-time)
  (printf " *** \n")
  (printf "~a\n" elapsed-time)
  #f
  )

(define (search-for-primes n acc)
  ;;(print "ACC: ~a" acc)
  (if (< acc 3)
      (if (timed-prime-test n)
          (search-for-primes (+ n 2) acc)
          (search-for-primes (+ n 2) (+ acc 1))
          )
      #t
      )
  )

(module+ main
 (search-for-primes 1001 0)
 (search-for-primes 10001 0)
 (search-for-primes 100001 0)
 (search-for-primes 1000001 0))
