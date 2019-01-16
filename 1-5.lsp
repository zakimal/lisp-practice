; リストを受け取り、そのリストの長さをリストの先頭の要素として加える関数 ADDLENGTH を定義しなさい。

(defun addlength (target) 
	(cons (length target) target)
)

; ADDLENGTH

(addlength '(a b c d))

; (4 A B C D)
