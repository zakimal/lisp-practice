; 任意の深さに入れ子になっているリスト中のすべてのシンボルをシンボル zにおきかえる関数 SLEEPY を定義しなさい。

(defun sleepy (x)
	(cond
		((null x) nil)
		((atom x) 'z)
		(t (cons (sleepy (first x)) (sleepy (rest x))))
	)
)

(defun sleepy2 (x)
    (cond
        ((equal x nil) nil)
        ((listp (first x)) (append (sleepy (first x)) (sleepy (rest x))))
        ((symbolp (first x)) (cons 'z (sleepy (rest x))))
        (t (sleepy (rest x)))
    )
)
