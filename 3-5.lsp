; リスト (その要素は整数であるとする) を受けとり、その中に奇数があれば Tを返す関数 ANYODDP を定義しなさい。奇数が 1 つもなければ NIL を返すものとする。

(defun anyoddp (x)
	(cond 
		((null x) nil)
		((oddp (first x)) t)
		(t (anyoddp (rest x)))
	)
)