; 整数を受け取り、それが奇数の時には1を加えて偶数にする関数MAKE-EVENを定義しなさい。MAKE-EVEN は偶数の入力に対しては、そのままの数を返すものとする。
(defun make-even (x)
	(if (oddp x) (+ 1 x) x)
)

(make-even 2)
(make-even 3)
