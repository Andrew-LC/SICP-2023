(load "std.scm")

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try first-guess))


(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
	       1.0))

(define (average-damp f)
  (lambda (x) (/ (f x) x)))


((average-damp square) 4)

((lambda (x) (/ (square x) x))
((lambda (x) (/ (* x x) x) 4)

