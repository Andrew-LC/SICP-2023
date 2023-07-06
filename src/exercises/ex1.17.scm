;; Exercise 1.17 [page 46]

(define (fast* a b)
  (define (double x) (* x x))
  (define (half y) (/ y 2))
  (define (even? n) (= (modulo n 2) 0))
  (cond ((= b 0) 0)
        ((even? b) (double (* a (half b))))
        (else (+ a (* a (- b 1))))))
