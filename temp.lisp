(defmacro my-recursive-fact (n)
  (if (= 0 n) '1
    (let ( (t1  (gensym) ) (t1 (- n 1)) )
      `(* ,n (my-recursive-fact ,t1)))))

(defun fn(a) (setf a 3) )

 (write (eval (my-recursive-fact 5) ) )
 (write (listp '(1) ) )
 (setf a 2)
 (fn a)
 (write a)