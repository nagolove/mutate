(print  "welcome to CLISP online ide from JDoodle.com")
; your code goes here
#|
(defun mutate(l l2)
	(loop for x in l2
      do (
        ;print (car x)
        (loop for e in l
            do (
                (print e)
                ;print (equal e (car x)
                ;(print (car x))
            )
        )
      )
    )
)
|#

;(loop for x in '(a b c)
;      do (print x))
(defun printem (&rest args)
  (format t "~{~a~^ ~}" args))     

;(setf (nth N L) T)      

;(let ((variable 10))
;    (setf variable 2)
;    (print variable))
    
;(let (indx 0)
;(print ind))
      
(defun mutate2(l l2)
    ;(let (index 0))
    (let ((index 0))
	(loop for x in l2 do 
	    ;(print index)
	    ;(print (nth index l))
	    (setf index 0)
        (loop for e in l do
            (if (equal e (car x))
                (progn 
                    ;(print 'hi)
                    ;(print e)
                    ;(print (car x))
                    (setf (nth index l) (cdr x))
                )
            )
            (setf index (+ 1 index))
        )
    )
    l
    )
)

(defun mutate3(l l2)
    (let ((index 0))
	(loop for x in l2 do
	    (setf index 0)
        (loop for e in l do
            (if (equal e (car x))
                (setf (nth index l) (cadr x))
            )
            (setf index (+ 1 index))
        )
    )
    l
    )
)


(defun demo-function (flag)
   (print 'entering-outer-block)
   
   (block outer-block
      (print 'entering-inner-block)
      (print (block inner-block

         (if flag
            (return-from outer-block 3)
            (return-from inner-block 5)
         )

         (print 'This-wil--not-be-printed))
      )

      (print 'left-inner-block)
      (print 'leaving-outer-block)
   t)
)

(print '(5 B A 5 6 A))
;(mutate '(A B C A D C) '((A 5) (C A) (D 6)))
(print (mutate2 '(A B C A D C) '((A 5) (C A) (D 6))))
(print (mutate3 '(A B C A D C) '((A 5) (C A) (D 6))))
;(mutate )
(demo-function t)
