; (format t ”*”) を使い，引数で与えられた数だけの * を横一列に出力する再帰的な関数 DRAWLINE を定義しなさい．

(defun drawline (x)
	(format t "*") 
	(if (= x 1) 
		nil 
		(drawline (- x 1))
	)
)