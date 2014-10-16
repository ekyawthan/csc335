#lang racket

;; linear recursion
;; value-of-program : Int -> Int

;; tail recurion
(define (factorial number)
  (if ( = number 1) 1
      (* number (factorial (- number 1)))))
;; iterative recursion

(define (factorial number)
  (de

