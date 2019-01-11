; (format t ”*”) を使い，引数で与えられた数だけの * を横一列に出力する再帰的な関数 DRAWLINE を定義しなさい．

(defun drawline (x)
	(format t "*") 
	(if (= x 1) 
		nil 
		(drawline (- x 1))
	)
)

(defun drawline_with_dotimes (n)
  (dotimes (e n)
    (format t "*")))

(defun drawline_with_let (n)
  (if (= 0 n) nil
    (let () (format t "*")
      (drawline (- n 1))
      )
    )
  )

(defun drawline_with_progn (n)
  (if (= 0 n) nil
    (progn (format t "*") (drawline(- n 1)))
    )
  )

(defun drawline_with_cond (n)
  (cond ((= 0 n) nil)
        (t (format t "*")
           (drawline ((- n 1)))
           )
        )
  )

