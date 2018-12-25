; 上記の関数 MEM を使って、リスト L において X が Y より先に現れていれば真値 (nil でない値) を返す関数 BEFOREP(X, Y, L) を定義しなさい。

(defun beforep (x y ls)
	(let ((xs (member x ls)))
		(and xs (member y (cdr xs)))
	)
)