; リストを受けとり、数字の要素だけを選んでリストとして返す関数EXTRACTNUMBERS を定義しなさい。

(defun extract-numbers (x)
	(cond
		((null x) nil)
		((numberp (first x)) (cons (first x) (extract-numbers (rest x))))
		(t (extract-numbers (rest x)))
	)
)