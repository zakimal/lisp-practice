; 要素が数のリストに対し，それぞれに 1 を足したリストを返す関数 ADD1 を定義しなさい.

(defun add1 (x)
	(mapcar #'(lambda (n) (+ n 1)) x)
)