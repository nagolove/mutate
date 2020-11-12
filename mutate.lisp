(print  "welcome to CLISP online ide from JDoodle.com")
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

(print '(5 B A 5 6 A))
(print (mutate3 '(A B C A D C) '((A 5) (C A) (D 6))))
