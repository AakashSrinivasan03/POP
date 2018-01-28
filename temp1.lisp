;;q1 coupled recursion
;;substitute string function where base cases are atom and null list and recursion is formulated
(defun substr(a b list1) (if(null list1) '() (if(and (atom list1) (eql list1 a)) b (if(atom list1)   list1 (mapcar #'fn list1 ) ) )   ) )
;;helper function for coupling
(defun fn(list1 ) (if (null list1) '() (if (atom list1) (substr a b list1) (cons (substr a b (car list1) ) (fn (cdr list1) )))  ))
;;Accept input from user
(setf a (read))(setf b (read)) (setf c (read)) (write (substr a b c)) 

;;q1 normal recursion
;;substitute string function where base cases are atom and null list and recursion is formulated
;;;(defun substr ( a b list1) ( if (null list1) '()  ( if( atom list1)  ( if(eql a list1) b  list1 )  (cons (substr  a b (car list1) ) (substr  a b (cdr list1) )         )  )   )  )
;;Accept input from user
;;;(setf a (read))(setf b (read)) (setf c (read)) (write (substr a b c)) 


;;;q2
;;function to compute length of a list
(defun len_2 (list1) (if (null list1) 0 (+ 1 (len_2 (cdr list1)))))
;;function to insert an entry in appropriate position
(defun insert_at_appr_posn_2(list1 x) (if (null list1) (list x)  ( if (>= (len_2 x) (len_2 (car list1))) (cons  (car list1) (insert_at_appr_posn_2 (cdr list1) x)     ) 
(    cons x (cons (car list1) (cdr list1))   )
     )   ))
;;Performing insertion sort based on length of list
(defun insertion_sort_2(list1 before_list2)  (if (null list1) before_list2  (  insertion_sort_2 (cdr list1)(insert_at_appr_posn_2 before_list2 (car list1))   ) ))    
;;accepting input from user
(setf b (read)) (write (insertion_sort_2  b '()))

;;;q3
;;function to insert an entry in appropriate position
(defun insert_at_appr_posn_3(list1 x) (if (null list1) (list x)  ( if (>=  x  (car list1)) (cons  (car list1) (insert_at_appr_posn_3 (cdr list1) x)     ) 
(    cons x (cons (car list1) (cdr list1))   )
     )   ))
;;Performing insertion sort based on atomic value in list 
(defun insertion_sort_3(list1 before_list2)  (if (null list1) before_list2  (  insertion_sort_3 (cdr list1)(insert_at_appr_posn_3 before_list2 (car list1))   ) ))    
;;accepting input from user
(setf b (read)) (write (insertion_sort_3  b '()))

;;q4
;;function to perform transpose
(defun transpose(list1)(if (null list1) '() (apply #'mapcar #'fn list1) ))
;;helper function to convert all collumn vector of original list to row vector
(defun fn(&rest args) ( apply #'list args))
;;accept values from user
(setf b (read)) (write (transpose  b ))

;;q5
;;function builder that returns momoized version of function
(defun fn_builder(f1) #'(lambda (arg) (if (not (eql -1 (is_exists arg list1) ) ) (   second (list (setf flag 1)  (at  (exists arg list1) list1 ) ) ) (  fun_ret (setf list1  (cons (list (funcall f1 arg) arg ) list1)) (funcall f1 arg)  ) )) ) 
;;A helper function to return 2nd value of list(could have used second fn also)
(defun fun_ret (a b) b)
;;returns -1 if a doesnt exist on list else 1
( defun is_exists (a list11) (if (null list11) -1 ( if (eql  (cadar list11) a ) 1 (is_exists a (cdr list11) ) )  )   )
;;returns the place in list where a exists
( defun exists (a list11) (if (null list11) -1 ( if (eql  (cadar list11) a ) 0   (+ 1 (exists  a (cdr list11) ) ) )  )   )
;;returns value at given position in the list
(defun at(a list11)   ( if(eql a 0) (caar list11 ) (at (- a 1) (cdr list11))    )   ) 
;;the memoization list(ie stores all memoised values)
(setf list1 '() )
(setf flag 0 )
;;sample call to function builder
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 1))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 2))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 3))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 4))
(write (funcall (fn_builder  #'(lambda (a) (+ a 3)) ) 3))
(write list1)
;;flag indicates memoization used
(write flag)

;;;q6
;;Using the fact that fib(n)=fib(n-1)+fib(n-2) and applying tail recursion
(defun fibo (n a b)  (if (eql n 0) a (if (eql n 1) b  (fibo (- n 1) b (+ a b)  )    ) )  )
;;accepting input from user
(setf n (read))
(write (fibo n 0 1) )

