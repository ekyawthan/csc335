#lang racket
;; 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))(* 3 (- 6 2) (- 2 7)))
;; 1.3
;;Value-of-program: Int -> Int

(define (sum-of-two-largest-numbers a b c)
  (cond 
    ((= a (min a b c)) (+ b c))
    (( = b (min a b c)) (+ a c))
    (else 
     (+ a b))))

;; Prove here
;;
(define (a-plus-abs-b a b)
  ((if ( > b 0 ) + -) a b ))
;; Prove herer

;; (

(define (sum-sqaures-of-two-largest x y z)
  (let ((m (min x y z)))
    (cond (( = m x) (+ (sqaure y ) (sqaure z)))
          (( = m y) ( + (sqaure x) (sqaure z)))
          (else (+ (sqaure x )( sqaure y))))))
(define (sqaure x) (* x x))

;; homework 2


;;sum-of-digits 345) is 12.
(define (sum-of-digits x)
  (if ( < x 10) x
      (+ (remainder x 10 ) (sum-of-digits (floor (/ x 10))))))
(define (p)(p))
(define (test x y)
  (if (= x 0)
      0
      y))


(define (is-increasing? a)
  (if (< a 10) #t
      (and (>= (remainder a 10) (remainder (floor (/ a 10)) 10 ))
           (is-increasing? (floor (/ a 10))))))


(define (factorial n)
  (if (= n 1 ) 1
      (* n (factorial (- n 1)))))

(define (fact-iter n)
  (define (iter-fact result count max)
    (if ( > count max) result 
        (* result max (iter-fact result count (- max 1)))))
  (iter-fact 1 1 n))
(define (make-increasing n)
  (if (is-increasing? n) n
      (



