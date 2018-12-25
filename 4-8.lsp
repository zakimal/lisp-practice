; キーを与えてそのエントリを取り出す関数 LOOKUP を定義しなさい。

(setf x '((one eins) (two zwei) (three drei) (four vier)))

(defun lookup (key association)
	(if (null association)
		nil
		(if (equal key (first (first association)))
			(first association)
			(lookup key (rest association))
		)
	)
)