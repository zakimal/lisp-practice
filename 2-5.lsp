; 整数を受け取り、それが正の奇数の時は自乗し、負の奇数の時は 2 倍し、それ以外の時は 2 で割る関数を定義しなさい。

(defun myfunc5 (x)
	(cond 
		((and (oddp x) (< 0 x)) (* x x))
		((and (oddp x) (< x 0)) (* x 2))
		(t (/ x 2))
	)
)

(myfunc5 31)
(myfunc5 -31)
(myfunc5 32)
(myfunc5 -32)
