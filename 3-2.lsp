; 非負の整数を受けとり、その数だけ ‘HA’ を並べたリストを返す関数LAUGHを定義しなさい。

(defun laugh (times)
	(if (= times 0)
		nil
		(cons 'HA (laugh (- times 1)))
	)
)
