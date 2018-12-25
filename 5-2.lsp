; 要素が数のリストに対し，それぞれの数が 5 よりも大きいかどうかを判定し，その真偽をリストで返す関数 GREATER-THAN-FIVE-P を定義しなさい．

(defun greater-than-five-p (x)
	(mapcar #'(lambda (n) (> n 5)) x)
)
