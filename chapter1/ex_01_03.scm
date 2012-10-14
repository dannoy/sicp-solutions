
(define (smaller x y)
  (if (> x y) y x)
  )

(define (bigger x y)
  (if (> x y) x y))

(define (smallest x y z)
  (smaller (smaller x y) (smaller y z))
  )

(define (sum-of-bigger-two-1 x y z)
  (- (+ x y z) (smallest x y z))
 )
;;;(smallest 5 3 4)
;;;(sum-of-bigger-two-1 5 3 4)
;;;(sum-of-bigger-two-1 10 3 4)		


;;; Wrong!
;;;(define (sum-of-bigger-two-2 x y z)
;;;  (+ (bigger x y)
;;;     (bigger y z))
;;;  )


;;;(sum-of-bigger-two-2 10 3 4)









					
