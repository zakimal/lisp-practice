; 数のリストを受取り，1 と 5 の間の数のみをリストにして返す関数 PICK を定義しなさい．

(defun pick (x)
	(remove-if #'(lambda (a) (null a)) 
		(mapcar #'(lambda (e) (if (and (<= 1 e) (<= e 5)) e)) x)
	)
)