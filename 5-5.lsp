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