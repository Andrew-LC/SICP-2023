;; Exercise 1.18 [page 47]

;; (rpm 2 2) -> 4
;; (iter 0 1 2)

;; 0 1 2
;; 4 2 0
;; 4


(define (double x) (* x x))
(define (half y) (/ y 2))
(define (even? n) (= (modulo n 2) 0))

(define (rpm a b)
  (define (iter result counter n) 
    (cond ((> counter n) result)
	  ((even? n) (iter (+ result a) (+ 1 counter) (half n)))
	  (else (iter (+ result a) (+ 1 counter) (- n 1))))
  )
  (iter 0 1 b))
