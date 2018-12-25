; リストを受けとり、リスト内の要素を逆順にしたものを返す関数 REV を定義しなさい。

(defun rev (x)
	(if (null x) 
		()
		(append (rev (cdr x)) (cons (car x) ()))
	)
)

