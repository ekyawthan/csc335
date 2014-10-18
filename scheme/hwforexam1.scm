#lang racket

(define (add-odd start end)
  (if (> start end) 0
      (if (odd? start  ) (+ start (add-odd (+ start 1) end))
          (add-odd(+ start 1) end))))