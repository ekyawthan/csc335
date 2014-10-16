#lang racket
; Homework: SICP 1.11, 1.12, 1.13, 1.14, 1.16, 1.17, 1.18, 1.19


;;

(define (factorial number)
  (fact-iter 1 1 number))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

;; 1.11 Exercise 1.11: A function f is defined by the rule that f(n)=n if n<3 and f(n)=f(n-1)+2f(n-2)+3f(n-3) if n≥3. 
;;Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

;; value-of-program : Int --> Int


(define (f-recursion n)
  (if (< n 3) n
      (+ (* 1 (f-recursion ( - n 1)))
         (* 2 (f-recursion ( - n 2)))
         (* 3 (f-recursion ( - n 3))))))


(define (f-iter n)
  (if (< n 3) n
  (f-iter-helper 1 2 3 (- n 1))))

(define (f-iter-helper a b c count)
  (if (< count 3) ( + (* a 2)(* b 1)(* c 0))
      (f-iter-helper (+ b (* a 1))
                     (+ c (* b 2))
                     (* a 3)
                     (- count 1))))