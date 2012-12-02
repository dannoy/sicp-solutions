
(define (double x)
  (+ x x)
  )

(define (even? x)
  (= (remainder x 2 ) 0)
  )

(define (fast-mutiply a b)
  (cond ((= b 0) 0)
	((even? b) (double (fast-mutiply a (/ b 2))))
	(else (+ a (fast-mutiply a (- b 1))))
	)
  )