(define (find s predicate)
  (if (null? s)
    #f 
    (if (predicate (car s))
  	  (car s)
  	  (find (cdr-stream s) predicate)
  	 )
    )
)

(define (scale-stream s k)
  (if (null? s)
  	nil
  	(cons-stream (* (car s) k) (scale-stream (cdr-stream s) k))
   )
)

(define (helper slow fast)
   (if (null? fast)
	 #f
  	 (if (null? (cdr-stream fast))
  		#f
  		(if (or (eq? slow fast) (eq? slow (cdr-stream fast)))
  		 #t
  		 (helper (cdr-stream slow) (cdr-stream (cdr-stream fast)))
  		 )
  	  )
  	 )
 )
 

(define (has-cycle s)
  (if (null? s)
  	#f
  	(if (null? (cdr-stream s))
  		#f
  		(if (eq? s (cdr-stream s))
  			#t
  			(helper s (cdr-stream (cdr-stream s)))
  			)
  		)
  	)
  )


(define (has-cycle-constant s)
  (if (null? s)
  	#f
  	(if (null? (cdr-stream s))
  		#f
  		(if (eq? s (cdr-stream s))
  			#t
  			(helper s (cdr-stream (cdr-stream s)))
  		 	)	
  		)
  	)
 )
