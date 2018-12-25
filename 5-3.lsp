; (ON OFF ON ON) のようなリストを受取り，各要素を逆転させ (OFF ONOFF OFF) のようにする関数 FLIP を作りなさい．

(defun flip (x)
	(mapcar #'(lambda (s) (if (equal s 'on) 'off 'on)) x)
)
