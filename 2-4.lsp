; X, MIN, MAX という 3 つの数を受け取り、X が MIN より小さければ MIN を返す、X が MAX より大きければ MAX を返す、X が MIN と MAX の間にあれば Xを返すような関数 CONSTRAIN を定義しなさい。

(defun constrain (x min max)
	(cond 
		((< x min) min)
		((< max x) max)
		(t x)
	)
)

(constrain 3 -30 30)
(constrain 55 -30 30)
(constrain -55 -30 30)
