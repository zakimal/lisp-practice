; 要素が整数であるリストを受けとり、リスト中の奇数の個数を返す関数COUNTODD を定義しなさい。

(defun count-odd (x)
	(cond
		((null x) 0)
		((evenp (first x)) (count-odd (rest x)))
		(t (+ 1 (count-odd (rest x))))
	)
)
