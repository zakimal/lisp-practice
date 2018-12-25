; 次の関数において (scrabble ’tea) および (scrabble ’word) がどうなるか考えなさい。

; 	(defun scrabble (word)
; 		(list word ’is ’a ’word))
		
(defun scrabble (word)
	(list word 'is 'a 'word))

; SCRABBLE

(scrabble 'tea)

; (TEA IS A WORD)

(scrabble 'word)

; (WORD IS A WORD)
