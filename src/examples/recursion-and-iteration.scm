(define (factorial n)
 (if (= n 1)
   1
   (* n (factorial (- n 1)))))

(define (factorial n)
 (define (iter product counter)
   (if (> counter n)
     product
     (iter (* product counter) counter)))
  (iter 1 1))
