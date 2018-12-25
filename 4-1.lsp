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