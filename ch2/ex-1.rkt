#lang racket

;; Import gcd
(require "../ch1/primes.rkt")

(define (make-rat n d)
  (define (make-rat-simple n d)
    (let ([g (gcd (abs n) (abs d))])
      (cons (/ n g) (/ d g))))
  (cond
    ((= d 0) (error "NaN"))
    ((= n 0) 0)
    ((or (and (> n 0) ( > d 0)) (and (< n 0) ( < d 0))) (make-rat-simple (abs n) (abs d)))
    (else (make-rat-simple (* -1 (abs n)) (abs d)))))


(module+ main
  (make-rat 2 4)
  (make-rat -2 4)
  (make-rat -2 -4)
  (make-rat 2 -4)
  (make-rat 6 9)
  (make-rat 6 -9)
  (make-rat -6 -9)
  (make-rat -6 9)
  )
