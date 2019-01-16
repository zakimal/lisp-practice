; 任意の深さに入れ子になっているリストからすべてのシンボルを抜き出す関数 FLATTEN を定義しなさい。

(defun flatten (x)
	(cond
		((null x) nil)
		((atom x) (list x))
		(t (append (flatten (first x)) (flatten (rest x))))
	)
)

(defun flatten2 (x)
    (cond
        ((equal x nil) nil)
        ((listp (first x)) (append (flatten (first x)) (flatten (rest x))))
        ((symbolp (first x)) (cons (first x) (flatten (rest x))))
        (t (flatten (rest x)))
    )
)
