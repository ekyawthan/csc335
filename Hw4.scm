#lang racket
; 1. Develop and certify a scheme program to test whether the digits in a
; non-negative integer are in increasing order.

;; Value-of-program : Int -> boolean

(define (digits-in-increasing-order? number)
  (let ((last-digit (remainder number 10))
        (rest-of-number (truncate (/ number 10))))
    (if (zero? rest-of-number) #t
        (let ((next-to-last-digit (remainder rest-of-number 10)))
          (and (< next-to-last-digit last-digit)(digits-in-increasing-order?
                                                 rest-of-number))))))