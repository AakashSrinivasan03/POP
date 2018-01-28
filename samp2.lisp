(defun len (list1) (if (null list1) 0 (+ 1 (len (cdr list1)))))

(defun insert_at_appr_posn(list1 x) (if (null list1) (list x)  ( if (>= (len x) (len (car list1))) (cons  (car list1) (insert_at_appr_posn (cdr list1) x)     ) 
(    cons x (cons (car list1) (cdr list1))   )
     )   ))
(defun insertion_sort(list1 before_list2)  (if (null list1) before_list2  (  insertion_sort (cdr list1)(insert_at_appr_posn before_list2 (car list1))   ) ))    
(setf b (read)) (write (insertion_sort  b '()))