; 要素が整数であるリストを受けとり、各々の数を自乗したリストを返す関数SQUARE-LIST を定義しなさい。

(defun square-list (x)
	(if (= (length x) 1)
		(cons (* (first x) (first x)) nil)
		(cons (* (first x) (first x)) (square-list (rest x)))
	)
)