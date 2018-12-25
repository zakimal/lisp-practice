; フィボナッチ数
(defun fib (n)
	(cond
		((= n 0) 1)
		((= n 1) 1)
		(t (+ (fib (- n 1)) (fib (- n 2))))
	)
)

; 組み合わせ
(defun comb (n m)
	(cond
		((or (= m 0) (= n m)) 1)
		(t (+ (comb (- n 1) m) (comb (- n 1) (- m 1))))
	)
)

; アッカーマン関数
(defun ack (x y)
	(cond
		((= x 0) (+ 1 y))
		((and (> x 0) (= y 0)) (ack (- x 1) 1))
		((and (> x 0) (> y 0)) (ack (- x 1) (ack x (- y 1))))
	)
)

; len
(defun len (x)
	(if (equal x nil) 
		0 
		(+ 1 (len (rest x)))
	)
)

; my-nth
(defun my-nth (n x)
	(cond
		((= n 0) (first x))
		(t (my-nth (- n 1) (rest x)))
	)
)

; my-append
(defun my-append (x y)
    (if (equal x nil) y (cons (first x) (my-append (rest x) y)))
)
