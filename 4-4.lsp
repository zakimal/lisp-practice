; リスト内にある特定のオブジェクトがあるかどうかを調べる関数 MEM を定義しなさい。

(defun mem (x y)
	(cond
		((null y) nil)
		((equal x (first y)) y)
		(t (mem x (rest y)))
	)
)
