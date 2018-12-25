; 2 つの数値を受け取り、それを昇順のリストにして返す関数 ORDERED を定義しなさい

(defun ordered (x y)
	(if (> x y) (list y x) (list x y))
)

(ordered 2 5)
(ordered 5 2)