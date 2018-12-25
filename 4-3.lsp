; リストの中からある特定のオブジェクトを除く関数 RM を定義しなさい。

(defun rm (x y)
	(cond
		((null y) nil)
		((equal x (first y)) (rm x (rest y)))
		(t (cons (first y) (rm x (rest y))))
	)
)
