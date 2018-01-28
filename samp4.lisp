(defun transpose(list1)(if (null list1) '() (apply #'mapcar #'fn list1) ))
(defun fn(&rest args) ( apply #'list args))
(setf b (read)) (write (transpose  b ))