#lang racket


;; tail recursion of factorial

(define (fact n)
  (if( = n 1) 1
     (* n (fact ( - n 1)))))
;; iterative recursion of factorial

(define (fact1 n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if( > counter max-count) product
     (fact-iter (* counter product) (+ counter 1) max-count)))

;; 
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)
  (* x x))
(define (prime? n)
  (= n (smallest-divisor n)))


;;Lecture 7

(define (digits-in-increasing-order? number)
  (let ((last-digit (remainder number 10))
        (rest-of-number (truncate (/ number 10)))))
  