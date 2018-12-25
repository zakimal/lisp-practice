;  2 つの集合の和、積、差を求める関数をそれぞれ定義しなさい。

(defun my-union (x y)
	(cond
		((null x) y)
		((mem (first x) y) (my-union (rest x) y))
		(t (cons (first x) (my-union (rest x) y)))
	)
)
(defun my-intersection (x y)
	(cond
		((null x) nil)
		((mem (first x) y) (cons (first x) (my-intersection (rest x) y)))
		(t (my-intersection (rest x) y))
	)
)
(defun my-difference (x y)
	(cond
		((null x) nil)
		((mem (first x) y) (my-difference (rest x) y))
		(t (cons (first x) (my-difference (rest x) y)))
	)
)
