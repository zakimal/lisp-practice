(defun mestery (x)
	(list (second x) (first x))
)

; MESTERY

(mestery '(dancing bear))

; (BEAR DANCING)

(mestery 'dancing 'bear)

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
