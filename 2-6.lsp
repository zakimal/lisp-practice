; 2 つの整数を受け取り、両数とも 0 の時、あるいは両数とも正の時、あるいは両数とも負の時には T、それ以外の時は NIL を返す関数 SAME-SIGN を定義しなさい。

(defun same-sign (x y)
	(cond
		((and (< 0 x) (< 0 y)) t)
		((and (> 0 x) (> 0 y)) t)
		((and (= x 0) (= y 0)) t)
		(t nil)
	)
)

(same-sign 0 0)
(same-sign 4 1)
(same-sign -4 1)
(same-sign -4 -1)

