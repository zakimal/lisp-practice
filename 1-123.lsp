(cons 5 (list 6 7))

; (5 6 7)

(cons 5 '(list 6 7))

; (5 LIST 6 7)

(list 3 'from 9 'gives (- 9 3))

; (FROM 9 GIVES 3)

(+ (length '(1 a 2 b))(third '(1 a 2 b)))

; 6

(rest '(cons is short for construct))

; (IS SHORT FOR CONSTRUCT)

(third '(the quixk brown fox))

; BROWN

(list '(2 and 2 is 4))

; ((2 AND 2 IS 4))

(+ 1 (length(list t t t t)))

;5

(cons 'patorick '(seymour marvin))

; (PATORICK SEYMOUR MARVIN)

(cons 'patorick (list 'seymour 'marvin))

; (PATORICK SEYMOUR MARVIN)

(cons 'grapes '(of wrath))

; (GRAPES OF WRATH)

(list t 'is 'not nil)

; (T IS NOT NIL)

(first '(list 'moose 'goose))

; LIST

(cons 'home ('sweet 'home))

; Error in EVAL [or a callee]: The function 'SWEET is undefined.
; Fast links are on: do (use-fast-links nil) for debugging
; Broken at EVAL.  Type :H for Help.

