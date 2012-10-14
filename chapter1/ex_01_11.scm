(define (f-rec n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))
      )
  )

;;(f 1)

(define (f-iter n)
  (define (f-iter-internal f1 f2 f3 count)
    (if (= count n)
	f3
	(f-iter-internal 
	       f2 
	       f3 
	       (+ f3
		  (* 2 f2)
		  (* 3 f1))
	       (+ count 1))
	)
    )
  (if (< n 3)
      n
      (f-iter-internal 0 1 2 2)
      )
  )
