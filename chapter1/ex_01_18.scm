
(define (half x)
  (/ x 2)
  )


(define (double x)
  (+ x x)
  )

(define (even? x)
  (= (remainder x 2 ) 0)
  )

(define (fast-mutiply-iter a b)
  (define (iter res a b)
    (cond ((= b 0) res)
	  ((even? b) (iter res (double a) (/ b 2)))
	  (else (iter (+ res a) a (- b 1)))
	  )
  )
  (iter 0 a b)
  )