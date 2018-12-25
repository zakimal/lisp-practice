; リスト中の重複している要素を 1 つにする関数 RMDUP を定義しなさい。

(defun rmdup (ls)
	(cond
		((null ls) nil)
		((mem (first ls) (rest ls)) (rmdup (rest ls)))
		(t (cons (first ls) (rmdup (rest ls))))
	)
)
