#lang racket

(require "primes.rkt")

(module+ main
  (smallest-divisor 199)
  (smallest-divisor 1999)
  (smallest-divisor 19999))
