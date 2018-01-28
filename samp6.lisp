(defun fibo (n a b)  (if (eql n 0) a (if (eql n 1) b  (fibo (- n 1) b (+ a b)  )    ) )  )

(setf n (read))
(write (fibo n 0 1) )