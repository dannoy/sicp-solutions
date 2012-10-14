;;; 此时行和列均为1开始
(define (pascal row col)
  (cond ((or (> col row) 
         (< col 1)) 0)
    ((or (= col 1)
         (= col row)) 1)
    (else (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col))
          
          )
   )
  )

  ;;; 另外一种方式是将pascal(row,col)视为
  ;;; 二项式的系数，所以可以用C k
  ;;;                           n,来求
  ;;; 即为n!/(k! *(n-k)!)
  ;;; 不过此时行和列均为0开始

  (define (pascal-norec row col)
    (/ (factorial row)
       (* (factorial col)
          (factorial (- row col))))
  )
