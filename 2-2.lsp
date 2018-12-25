; 2 つのリストを受け取り、最初のリストの長さが第 2 のリストの長さより長ければ T を、そうでなければ NIL を返す関数 LONGER を定義しなさい。

(defun longer (x y)
	(if (> (length x) (length y)) t nil))

(longer '(1 2 3) '(1))
(longer '(1 2 3) '(1 2 3 4 5))
