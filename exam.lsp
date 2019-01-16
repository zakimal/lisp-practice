; 前の距離計の値、今の距離計の値、消費したガソリンの量という 3 つの値の入力に対して、その燃費を計算する関数 KILOMETER-PER-LITER を定義しなさい。


(defun kilometer-per-liter (prev now gas)
	(/ (- now prev) gas)
)

; KILOMETER-PER-LITER

(kilometer-per-liter 50 100 2)

; 25

; リストを受け取り、そのリストの長さをリストの先頭の要素として加える関数 ADDLENGTH を定義しなさい。

(defun addlength (target) 
	(cons (length target) target)
)

; ADDLENGTH

(addlength '(a b c d))

; (4 A B C D)

; 次の関数において (stooge ’moe ’curly ’larry) がどうなるか考えなさい。

; (defun stooge (larry moe curly)
; 	(list larry (list ’moe curly) curly ’larry))

(defun stooge (larry moe curly)
	(list larry (list 'moe curly) 'larry)
)

; STOOGE

(stooge 'moe 'curly 'larry)

; (MOE (MOE LARRY) LARRY)

(defun mestery (x)
	(list (second x) (first x))
)

; MESTERY

(mestery '(dancing bear))

; (BEAR DANCING)

; (mestery 'dancing 'bear)

; Error in MESTERY [or a callee]: MESTERY [or a callee] requires less than two arguments.
; Fast links are on: do (use-fast-links nil) for debugging
; Broken at EVAL.  Type :H for Help.
;  1 (Abort) Return to top level.
; dbl:>>1

; Top level.
(mestery '(zowie))

; (NIL ZOWIE)

(mestery (list 'first 'second))

; (SECOND FIRST)

; 整数を受け取り、それが奇数の時には1を加えて偶数にする関数MAKE-EVENを定義しなさい。MAKE-EVEN は偶数の入力に対しては、そのままの数を返すものとする。
(defun make-even (x)
	(if (oddp x) (+ 1 x) x)
)

(make-even 2)
(make-even 3)

; 2 つのリストを受け取り、最初のリストの長さが第 2 のリストの長さより長ければ T を、そうでなければ NIL を返す関数 LONGER を定義しなさい。

(defun longer (x y)
	(if (> (length x) (length y)) t nil))

(longer '(1 2 3) '(1))
(longer '(1 2 3) '(1 2 3 4 5))

; 2 つの数値を受け取り、それを昇順のリストにして返す関数 ORDERED を定義しなさい

(defun ordered (x y)
	(if (> x y) (list y x) (list x y))
)

(ordered 2 5)
(ordered 5 2)

; X, MIN, MAX という 3 つの数を受け取り、X が MIN より小さければ MIN を返す、X が MAX より大きければ MAX を返す、X が MIN と MAX の間にあれば Xを返すような関数 CONSTRAIN を定義しなさい。

(defun constrain (x min max)
	(cond 
		((< x min) min)
		((< max x) max)
		(t x)
	)
)

(constrain 3 -30 30)
(constrain 55 -30 30)
(constrain -55 -30 30)


; 整数を受け取り、それが正の奇数の時は自乗し、負の奇数の時は 2 倍し、それ以外の時は 2 で割る関数を定義しなさい。

(defun myfunc5 (x)
	(cond 
		((and (oddp x) (< 0 x)) (* x x))
		((and (oddp x) (< x 0)) (* x 2))
		(t (/ x 2))
	)
)

(myfunc5 31)
(myfunc5 -31)
(myfunc5 32)
(myfunc5 -32)

; 2 つの整数を受け取り、両数とも 0 の時、あるいは両数とも正の時、あるいは両数とも負の時には T、それ以外の時は NIL を返す関数 SAME-SIGN を定義しなさい。

(defun same-sign (x y)
	(cond
		((and (< 0 x) (< 0 y)) t)
		((and (> 0 x) (> 0 y)) t)
		((and (= x 0) (= y 0)) t)
		(t nil)
	)
)

(same-sign 0 0)
(same-sign 4 1)
(same-sign -4 1)
(same-sign -4 -1)


(and 'a 'b 'c)

; C

(or 'a 'b 'c)

; A

(or nil 'nagashima t)

; NAGASHIMA

(and (equal 'abc 'abc) 'yes)

; YES

(or (equal 'abc 'abc) 'yes)

; T

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

; 数が要素であるリストを受けとり、すべての要素の和を返す関数 ADD-UP を定義しなさい。

(defun add-up (x)
	(if (= 1 (length x))
		(first x) 
		(+ (first x) (add-up (rest x)))
	)
)

; 非負の整数を受けとり、その数だけ ‘HA’ を並べたリストを返す関数LAUGHを定義しなさい。

(defun laugh (times)
	(if (= times 0)
		nil
		(cons 'HA (laugh (- times 1)))
	)
)

; 正の整数を受けとり、その数から 1 までカウントダウンしたリストを返す関数COUNT-DOWN を定義しなさい。

(defun count-down (x)
	(if (= x 1)
		(cons 1 nil)
		(cons x (count-down (- x 1)))
	)
)

; 要素が整数であるリストを受けとり、各々の数を自乗したリストを返す関数SQUARE-LIST を定義しなさい。

(defun square-list (x)
	(if (= (length x) 1)
		(cons (* (first x) (first x)) nil)
		(cons (* (first x) (first x)) (square-list (rest x)))
	)
)

; リスト (その要素は整数であるとする) を受けとり、その中に奇数があれば Tを返す関数 ANYODDP を定義しなさい。奇数が 1 つもなければ NIL を返すものとする。

(defun anyoddp (x)
	(cond 
		((null x) nil)
		((oddp (first x)) t)
		(t (anyoddp (rest x)))
	)
)

; リストを受けとり、数字の要素だけを選んでリストとして返す関数EXTRACTNUMBERS を定義しなさい。

(defun extract-numbers (x)
	(cond
		((null x) nil)
		((numberp (first x)) (cons (first x) (extract-numbers (rest x))))
		(t (extract-numbers (rest x)))
	)
)

; 要素が整数であるリストを受けとり、リスト中の奇数の個数を返す関数COUNTODD を定義しなさい。

(defun count-odd (x)
	(cond
		((null x) 0)
		((evenp (first x)) (count-odd (rest x)))
		(t (+ 1 (count-odd (rest x))))
	)
)


(setf line '(a b c))

; (A B C)

(append line (list (first line)))

; (A B C A)

(append (last line) line)

; (C A B C)

(list (first line) (last line))

; (A (C))

(cons (last line) line)

; ((C) A B C)

(append line '(d e f))

; (A B C D E F)

; 任意の深さに入れ子になっているリストからすべてのシンボルを抜き出す関数 FLATTEN を定義しなさい。

(defun flatten (x)
	(cond
		((null x) nil)
		((atom x) (list x))
		(t (append (flatten (first x)) (flatten (rest x))))
	)
)

; 任意の深さに入れ子になっているリスト中のすべてのシンボルをシンボル zにおきかえる関数 SLEEPY を定義しなさい。

(defun sleepy (x)
	(cond
		((null x) nil)
		((atom x) 'z)
		(t (cons (sleepy (first x)) (sleepy (rest x))))
	)
)

; リストを受けとり、リスト内の要素を逆順にしたものを返す関数 REV を定義しなさい。

(defun rev (x)
	(if (null x) 
		()
		(append (rev (cdr x)) (cons (car x) ()))
	)
)


; リストの中からある特定のオブジェクトを除く関数 RM を定義しなさい。

(defun rm (x y)
	(cond
		((null y) nil)
		((equal x (first y)) (rm x (rest y)))
		(t (cons (first y) (rm x (rest y))))
	)
)


; リスト内にある特定のオブジェクトがあるかどうかを調べる関数 MEM を定義しなさい。

(defun mem (x y)
	(cond
		((null y) nil)
		((equal x (first y)) y)
		(t (mem x (rest y)))
	)
)


; 上記の関数 MEM を使って、リスト L において X が Y より先に現れていれば真値 (nil でない値) を返す関数 BEFOREP(X, Y, L) を定義しなさい。

(defun beforep (x y ls)
	(let ((xs (member x ls)))
		(and xs (member y (cdr xs)))
	)
)

; リスト中の重複している要素を 1 つにする関数 RMDUP を定義しなさい。

(defun rmdup (ls)
	(cond
		((null ls) nil)
		((mem (first ls) (rest ls)) (rmdup (rest ls)))
		(t (cons (first ls) (rmdup (rest ls))))
	)
)


;  2 つの集合の和、積、差を求める関数をそれぞれ定義しなさい。

(defun my-union (x y)
	(cond
		((null x) y)
		((mem (first x) y) (my-union (rest x) y))
		(t (cons (first x) (my-union (rest x) y)))
	)
)
(defun my-intersection (x y)
	(cond
		((null x) nil)
		((mem (first x) y) (cons (first x) (my-intersection (rest x) y)))
		(t (my-intersection (rest x) y))
	)
)
(defun my-difference (x y)
	(cond
		((null x) nil)
		((mem (first x) y) (my-difference (rest x) y))
		(t (cons (first x) (my-difference (rest x) y)))
	)
)


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

; 要素が数のリストに対し，それぞれに 1 を足したリストを返す関数 ADD1 を定義しなさい.

(defun add1 (x)
	(mapcar #'(lambda (n) (+ n 1)) x)
)

; 上で定義した関数 DRAWLINE を使い，引数で与えられた大きさの * の箱を書く再帰的な関数 DRAWBOX を定義しなさい．

(defun drawbox (n m)
  (cond ((= m 0) nil)
        (t (drawline n)
           (format t "~%")
           (drawbox(n (-m 1)))
           )
        )
  )



; 要素が数のリストに対し，それぞれの数が 5 よりも大きいかどうかを判定し，その真偽をリストで返す関数 GREATER-THAN-FIVE-P を定義しなさい．

(defun greater-than-five-p (x)
	(mapcar #'(lambda (n) (> n 5)) x)
)


; (ON OFF ON ON) のようなリストを受取り，各要素を逆転させ (OFF ONOFF OFF) のようにする関数 FLIP を作りなさい．

(defun flip (x)
	(mapcar #'(lambda (s) (if (equal s 'on) 'off 'on)) x)
)


; 数のリストを受取り，1 と 5 の間の数のみをリストにして返す関数 PICK を定義しなさい．

(defun pick (x)
	(remove-if #'(lambda (a) (null a)) 
		(mapcar #'(lambda (e) (if (and (<= 1 e) (<= e 5)) e)) x)
	)
)

; 英単語列のリストを受取り，その中にあるtheの個数を返す関数COUNT-THEを定義しなさい.

(defun add-up (x)
    (if (= 1 (length x))
        (first x)
        (+ (first x) (add-up (rest x)))
    )
)
(setf addup #'add-up)
(defun count-the (x)
	(funcall addup (remove-if #'(lambda (a) (null a)) (mapcar #'(lambda (e) (if (equal e 'the) 1)) x)))
)

; 関数 REMOVE-IF-NOT と関数 MEMBER(以前定義した MEM と同じもの)を使い，2 つの集合の積を求める関数 MY-INTERSECTION を定義しなさい．


; 数のリスト X と数 K を受取り，X の数のうちで K と大体同じもの (最初のみ)を返す関数 ROUGHLY-EQUAL を定義しなさい．ただし，大体同じとは± 10 の範囲 (端点を含めず) にあるものとする．


; (defun foo (x) (mapcar #’(lambda (e) e) x))は何をする関数か。

(defun foo (x) (mapcar #'(lambda (e) e) x))

; (format t ”*”) を使い，引数で与えられた数だけの * を横一列に出力する再帰的な関数 DRAWLINE を定義しなさい．

(defun drawline (x)
	(format t "*") 
	(if (= x 1) 
		nil 
		(drawline (- x 1))
	)
)

(defun drawline_with_dotimes (n)
  (dotimes (e n)
    (format t "*")))

(defun drawline_with_let (n)
  (if (= 0 n) nil
    (let () (format t "*")
      (drawline (- n 1))
      )
    )
  )

(defun drawline_with_progn (n)
  (if (= 0 n) nil
    (progn (format t "*") (drawline(- n 1)))
    )
  )

(defun drawline_with_cond (n)
  (cond ((= 0 n) nil)
        (t (format t "*")
           (drawline ((- n 1)))
           )
        )
  )



