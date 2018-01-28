(defun substr(a b list1) (if(and (atom list1) (eql list1 a)) b (if(atom list1)   a (mapcar #'fn list1 a b ) )    ) )

(defun fn(list1 a b) (if (nil list1) '() (cons (substr a b (car list1) ) (fn (cdr list1) a b))  ))

(defun samp() (substr '1 '2 '(1 1)) )

(defun substr(a b list1) (if(and (atom list1) (eql list1 a)) b (if(atom list1)   list1 (mapcar #'fn list1 ) )    ) )

(defun fn(list1 ) (if (null list1) '() (if (atom list1) (substr  list1) (cons (substr (car list1) ) (fn (cdr list1))))  ))

(setf a 1)(setf b 2)(write (substr '(1 2))) 

///
(defun substr(a b list1) (if(and (atom list1) (eql list1 a)) b (if(atom list1)   a (mapcar #'fn list1 ) )    ) )

(defun fn(list1 ) (if (nil list1) '() (cons (substr a b (car list1) ) (fn (cdr list1)))  ))

(defun samp() (setf a 1)(setf b 2)(substr '1 '2 '(1 2)) )

///////
(defun substr(a b list1) (if(and (atom list1) (eql list1 a)) b (if(atom list1)   list1 (mapcar #'fn list1 ) )    ) )

(defun fn(list1 ) (if (null list1) '() (if (atom list1) (substr a b list1) (cons (substr a b (car list1) ) (fn (cdr list1))))  ))

(setf a 1)(setf b 2)(write (substr '1 '2 '(1 (1 4 (1 (2 1 (1 2))))))) 
///
(defun len (list1) (if (null list1) 0 (+ 1 (len list1))))

(defun insert_at_appr_posn(list1 x) (if (null list1) x  ( if (> (len x) (len (car list1))) (cons  (car list1) (insert_at_appr_posn (cdr list1) x)     ) 
( (append (list x (car list1)) (cdr list1))     )
     )   ))
(setf a (read))(setf b (read)) (write (insert_at_appr_posn a b ))
////
(defun insert_at_appr_posn(list1 x) (if (null list1) x  ( if (> (len x) (len (car list1))) (cons  (car list1) (insert_at_appr_posn (cdr list1) x)     ) 
(    cons x (cons (car list1) (cdr list1))   )
     )   ))
/////////
(defun len (list1) (if (null list1) 0 (+ 1 (len (cdr list1)))))

(defun insert_at_appr_posn(list1 x) (if (null list1) (list x)  ( if (>= (len x) (len (car list1))) (cons  (car list1) (insert_at_appr_posn (cdr list1) x)     ) 
(    cons x (cons (car list1) (cdr list1))   )
     )   ))
(setf a (read))(setf b (read)) (write (insert_at_appr_posn a b ))
////////////////
(defun len (list1) (if (null list1) 0 (+ 1 (len (cdr list1)))))

(defun insert_at_appr_posn(list1 x) (if (null list1) (list x)  ( if (>= (len x) (len (car list1))) (cons  (car list1) (insert_at_appr_posn (cdr list1) x)     ) 
(    cons x (cons (car list1) (cdr list1))   )
     )   ))
(defun insertion_sort(list1 before_list2)  (if (null list) '()  ( append (insert_at_appr_posn before_list2 (car list1)) (insertion_sort (cdr list)(insert_at_appr_posn before_list2 (car list1)))    ) ))    )
(setf a (read))(setf b (read)) (write (insert_at_appr_posn a b ))
///////////////////////////////
(defun fn_builder(f1) (#'lambda(arg) (if (not (eql -1 (is_exists arg list1) ) ) (at  (exists arg list1)) ( ( fun_ret (setf list1  (cons (list (f1 arg) arg ) list1)) (f1 arg))  ) ) ) )
(defun fun_ret (a b) b)
( defun is_exists (a list11) (if (null list11) -1 ( if (eql  (cadar list11) a ) 1 (is_exists a (cdr list11) ) )  )   )
( defun exists (a list11) (if (null list1) -1 ( if (eql  (cadar list1) a ) 0   (+ 1 (exists  a (cdr list11) ) ) )  )   )
(defun at(a list11)   ( if(eql a 0) (cadar list11 ) (at a (cdr list11))    )   ) 
////////////////////////////////////////////////////////////////////////////////////////////////////

(defun fn_builder(f1) #'(lambda (arg) (if (not (eql -1 (is_exists arg list1) ) ) (at  (exists arg list1) list1) (  fun_ret (setf list1  (cons (list (funcall f1 arg) arg ) list1)) (funcall f1 arg)  ) )) ) 
(defun fun_ret (a b) b)
( defun is_exists (a list11) (if (null list11) -1 ( if (eql  (cadar list11) a ) 1 (is_exists a (cdr list11) ) )  )   )
( defun exists (a list11) (if (null list1) -1 ( if (eql  (cadar list1) a ) 0   (+ 1 (exists  a (cdr list11) ) ) )  )   )
(defun at(a list11)   ( if(eql a 0) (caar list11 ) (at a (cdr list11))    )   ) 

(setf list1 '() )
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 1))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 2))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 3))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 4))

(write list1)