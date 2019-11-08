; Q1
(define (compose-all funcs)
  (define (helper funcs func)
  	(if (null? funcs)
  		func
  		(helper (cdr funcs) (lambda (x) ((car funcs) (func x))))
  	    )
    )
  (helper funcs (lambda (x) x))
)

; Q2
(define (tail-replicate x n)
  (define (helper x n lst)
  	(if (= n 0)
  		lst
  		(helper x (- n 1) (cons x lst))
  		)
  	)
  (helper x n nil)
)