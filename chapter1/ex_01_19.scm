;a = bq + aq + ap
;b = bp + aq

;p' = p^2 + q^2
;q' = q^2 + 2pq

(define (even? n) (= (remainder n 2) 0))

(define (fib n)
  (fib-iter 1 0 0 1 n)
  )

(define (square x) (* x x))

(define (fib-iter a b p q n)
  (cond ((= n 0) b)
	((even? n)
	 (fib-iter a 
		   b 
		   (+ (square p) (square q))
		   (+ (square q) (* 2 p q))
		   (/ n 2)
		   ))
	 (else 
	  (fib-iter (+ (* b q) (* a q) (* a p))
	           (+ (* b p) (* a q))
		   p 
		   q
		   (- n 1)
	           ))
   )
 )
