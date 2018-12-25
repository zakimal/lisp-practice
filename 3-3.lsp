; 正の整数を受けとり、その数から 1 までカウントダウンしたリストを返す関数COUNT-DOWN を定義しなさい。

(defun count-down (x)
	(if (= x 1)
		(cons 1 nil)
		(cons x (count-down (- x 1)))
	)
)
