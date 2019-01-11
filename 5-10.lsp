; 上で定義した関数 DRAWLINE を使い，引数で与えられた大きさの * の箱を書く再帰的な関数 DRAWBOX を定義しなさい．

(defun drawbox (n m)
  (cond ((= m 0) nil)
        (t (drawline n)
           (format t "~%")
           (drawbox(n (-m 1)))
           )
        )
  )


