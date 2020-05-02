#lang racket

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (println "sine called")
  (if (not (> (abs angle) 0.01 ))
      angle
      (p (sine (/ angle 3.0)))
      )
  )

;; a) How many times is sine called when executing (sine 12.5)

(module+ main
  (sine 1)
  (sine 2)
  (sine 4)
  (sine 8)
  (sine 12.5)
  (sine 16)
  (sine 32)
  (sine 132)
  (sine 1032)
  )

;; b) What is the order of growth in space and number of steps (as f(a))
;; used by the generated process

