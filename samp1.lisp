(defun substr(a b list1) (if(null list1) '() (if(and (atom list1) (eql list1 a)) b (if(atom list1)   list1 (mapcar #'fn list1 ) ) )   ) )

(defun fn(list1 ) (if (null list1) '() (if (atom list1) (substr a b list1) (cons (substr a b (car list1) ) (fn (cdr list1) )))  ))

(setf a (read))(setf b (read)) (setf c (read)) (write (substr a b c)) 


;;;(defun substr (list1 a b) ( if (null list1) '()  ( if( atom list1)  ( if(eql a list1) b  list1 )  (cons (substr (car list1) a b  ) (substr (cdr list1) a b  )         )  )   )  )
;;;(setf a (read))(setf b (read)) (setf c (read)) (write (substr a b c)) 