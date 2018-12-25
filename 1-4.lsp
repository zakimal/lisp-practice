; 前の距離計の値、今の距離計の値、消費したガソリンの量という 3 つの値の入力に対して、その燃費を計算する関数 KILOMETER-PER-LITER を定義しなさい。


(defun kilometer-per-liter (prev now gas)
	(/ (- now prev) gas)
)

; KILOMETER-PER-LITER

(kilometer-per-liter 50 100 2)

; 25
