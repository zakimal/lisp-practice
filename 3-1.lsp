; 数が要素であるリストを受けとり、すべての要素の和を返す関数 ADD-UP を定義しなさい。

(defun add-up (x)
	(if (= 1 (length x))
		(first x) 
		(+ (first x) (add-up (rest x)))
	)
)
