
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;; (gcd 206 40)
;; How many remainder operations in normal order? How many in applicative?
