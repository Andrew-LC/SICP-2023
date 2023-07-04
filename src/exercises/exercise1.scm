;; ------------------- EXERCISES FROM 1.1 --------------------;;
;;
;; exercise 1.3
(define (sum-of-largest a b c)
  (define (sqr x)(* x x))
  (define (greater x y)
    (if (> x y)
	x
	y))
  (+ (sqr (greater a b)) (sqr (greater b c))))



;; Exercise 1.8


;; Exercsie 1.11
;; f(n) -> n
;; if n < 3

;; f(n) = f(n - 1) + f(n - 2) + f(n - 3)
;; if n >= 3
(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
	 (f-rec (- n 2))
	 (f-rec (- n 3)))))
