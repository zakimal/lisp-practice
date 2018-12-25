; 次の関数において (stooge ’moe ’curly ’larry) がどうなるか考えなさい。

; (defun stooge (larry moe curly)
; 	(list larry (list ’moe curly) curly ’larry))

(defun stooge (larry moe curly)
	(list larry (list 'moe curly) 'larry)
)

; STOOGE

(stooge 'moe 'curly 'larry)

; (MOE (MOE LARRY) LARRY)
