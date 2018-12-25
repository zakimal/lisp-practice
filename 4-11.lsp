; 任意の深さに入れ子になっているリスト中のすべてのシンボルをシンボル zにおきかえる関数 SLEEPY を定義しなさい。

(defun sleepy (x)
	(cond
		((null x) nil)
		((atom x) 'z)
		(t (cons (sleepy (first x)) (sleepy (rest x))))
	)
)