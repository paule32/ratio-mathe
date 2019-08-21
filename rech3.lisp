;; (c) 2019 Jens Kallup
;; de.sci.mathe

(defconstant *maxWert* 10)  ;; maximum counter

;; counter's
(defvar cnt0 1)
(defvar cnt1 1)

(dotimes (cnt0 *maxWert*)
    (dotimes (cnt1 *maxWert*)
        (setq cuA (expt (+ 1 cnt0) 3))
        (setq cuB (expt (+ 1 cnt1) 3))
        ;
        (setf cuC (+ (+ 1 cuA) (+ 1 cuB)))
        (setf cuD (/ (+ 1 cuA) (+ 1 cuB)))
        ;
        (setq cuAT (typep cuC 'integer))
        (setq cuBT (typep cuD 'integer))
        ;
        (progn
            (if (eq t cuAT) (princ (format nil "; (a + b) = is cubic = true | a := ~10D^3 + b := ~10D^3, Wert = ~10D~%" cuA cuB (- cuC 2))))
            (if (eq t cuBT) (princ (format nil "; (a / b) = is cubic = true | a := ~10D^3 / b := ~10D^3, Wert = ~10D~%" cuA cuB cuD)))
        )
    )
)
(exit)

;; Result:
; (a + b) = is cubic = true | a :=          1^3 + b :=          1^3, Wert =          2
; (a / b) = is cubic = true | a :=          1^3 / b :=          1^3, Wert =          1
; (a + b) = is cubic = true | a :=          1^3 + b :=          8^3, Wert =          9
; (a + b) = is cubic = true | a :=          1^3 + b :=         27^3, Wert =         28
; (a + b) = is cubic = true | a :=          1^3 + b :=         64^3, Wert =         65
; (a + b) = is cubic = true | a :=          1^3 + b :=        125^3, Wert =        126
; (a + b) = is cubic = true | a :=          1^3 + b :=        216^3, Wert =        217
; (a + b) = is cubic = true | a :=          1^3 + b :=        343^3, Wert =        344
; (a + b) = is cubic = true | a :=          1^3 + b :=        512^3, Wert =        513
; (a + b) = is cubic = true | a :=          1^3 + b :=        729^3, Wert =        730
; (a + b) = is cubic = true | a :=          1^3 + b :=       1000^3, Wert =       1001
; (a + b) = is cubic = true | a :=          8^3 + b :=          1^3, Wert =          9
; (a + b) = is cubic = true | a :=          8^3 + b :=          8^3, Wert =         16
; (a / b) = is cubic = true | a :=          8^3 / b :=          8^3, Wert =          1
; (a + b) = is cubic = true | a :=          8^3 + b :=         27^3, Wert =         35
; (a + b) = is cubic = true | a :=          8^3 + b :=         64^3, Wert =         72
; (a + b) = is cubic = true | a :=          8^3 + b :=        125^3, Wert =        133
; (a + b) = is cubic = true | a :=          8^3 + b :=        216^3, Wert =        224
; (a + b) = is cubic = true | a :=          8^3 + b :=        343^3, Wert =        351
; (a + b) = is cubic = true | a :=          8^3 + b :=        512^3, Wert =        520
; (a + b) = is cubic = true | a :=          8^3 + b :=        729^3, Wert =        737
; (a + b) = is cubic = true | a :=          8^3 + b :=       1000^3, Wert =       1008
; (a + b) = is cubic = true | a :=         27^3 + b :=          1^3, Wert =         28
; (a / b) = is cubic = true | a :=         27^3 / b :=          1^3, Wert =         14
; (a + b) = is cubic = true | a :=         27^3 + b :=          8^3, Wert =         35
; (a + b) = is cubic = true | a :=         27^3 + b :=         27^3, Wert =         54
; (a / b) = is cubic = true | a :=         27^3 / b :=         27^3, Wert =          1
; (a + b) = is cubic = true | a :=         27^3 + b :=         64^3, Wert =         91
; (a + b) = is cubic = true | a :=         27^3 + b :=        125^3, Wert =        152
; (a + b) = is cubic = true | a :=         27^3 + b :=        216^3, Wert =        243
; (a + b) = is cubic = true | a :=         27^3 + b :=        343^3, Wert =        370
; (a + b) = is cubic = true | a :=         27^3 + b :=        512^3, Wert =        539
; (a + b) = is cubic = true | a :=         27^3 + b :=        729^3, Wert =        756
; (a + b) = is cubic = true | a :=         27^3 + b :=       1000^3, Wert =       1027
; (a + b) = is cubic = true | a :=         64^3 + b :=          1^3, Wert =         65
; (a + b) = is cubic = true | a :=         64^3 + b :=          8^3, Wert =         72
; (a + b) = is cubic = true | a :=         64^3 + b :=         27^3, Wert =         91
; (a + b) = is cubic = true | a :=         64^3 + b :=         64^3, Wert =        128
; (a / b) = is cubic = true | a :=         64^3 / b :=         64^3, Wert =          1
; (a + b) = is cubic = true | a :=         64^3 + b :=        125^3, Wert =        189
; (a + b) = is cubic = true | a :=         64^3 + b :=        216^3, Wert =        280
; (a + b) = is cubic = true | a :=         64^3 + b :=        343^3, Wert =        407
; (a + b) = is cubic = true | a :=         64^3 + b :=        512^3, Wert =        576
; (a + b) = is cubic = true | a :=         64^3 + b :=        729^3, Wert =        793
; (a + b) = is cubic = true | a :=         64^3 + b :=       1000^3, Wert =       1064
; (a + b) = is cubic = true | a :=        125^3 + b :=          1^3, Wert =        126
; (a / b) = is cubic = true | a :=        125^3 / b :=          1^3, Wert =         63
; (a + b) = is cubic = true | a :=        125^3 + b :=          8^3, Wert =        133
; (a / b) = is cubic = true | a :=        125^3 / b :=          8^3, Wert =         14
; (a + b) = is cubic = true | a :=        125^3 + b :=         27^3, Wert =        152
; (a + b) = is cubic = true | a :=        125^3 + b :=         64^3, Wert =        189
; (a + b) = is cubic = true | a :=        125^3 + b :=        125^3, Wert =        250
; (a / b) = is cubic = true | a :=        125^3 / b :=        125^3, Wert =          1
; (a + b) = is cubic = true | a :=        125^3 + b :=        216^3, Wert =        341
; (a + b) = is cubic = true | a :=        125^3 + b :=        343^3, Wert =        468
; (a + b) = is cubic = true | a :=        125^3 + b :=        512^3, Wert =        637
; (a + b) = is cubic = true | a :=        125^3 + b :=        729^3, Wert =        854
; (a + b) = is cubic = true | a :=        125^3 + b :=       1000^3, Wert =       1125
; (a + b) = is cubic = true | a :=        216^3 + b :=          1^3, Wert =        217
; (a + b) = is cubic = true | a :=        216^3 + b :=          8^3, Wert =        224
; (a + b) = is cubic = true | a :=        216^3 + b :=         27^3, Wert =        243
; (a + b) = is cubic = true | a :=        216^3 + b :=         64^3, Wert =        280
; (a + b) = is cubic = true | a :=        216^3 + b :=        125^3, Wert =        341
; (a + b) = is cubic = true | a :=        216^3 + b :=        216^3, Wert =        432
; (a / b) = is cubic = true | a :=        216^3 / b :=        216^3, Wert =          1
; (a + b) = is cubic = true | a :=        216^3 + b :=        343^3, Wert =        559
; (a + b) = is cubic = true | a :=        216^3 + b :=        512^3, Wert =        728
; (a + b) = is cubic = true | a :=        216^3 + b :=        729^3, Wert =        945
; (a + b) = is cubic = true | a :=        216^3 + b :=       1000^3, Wert =       1216
; (a + b) = is cubic = true | a :=        343^3 + b :=          1^3, Wert =        344
; (a / b) = is cubic = true | a :=        343^3 / b :=          1^3, Wert =        172
; (a + b) = is cubic = true | a :=        343^3 + b :=          8^3, Wert =        351
; (a + b) = is cubic = true | a :=        343^3 + b :=         27^3, Wert =        370
; (a + b) = is cubic = true | a :=        343^3 + b :=         64^3, Wert =        407
; (a + b) = is cubic = true | a :=        343^3 + b :=        125^3, Wert =        468
; (a + b) = is cubic = true | a :=        343^3 + b :=        216^3, Wert =        559
; (a + b) = is cubic = true | a :=        343^3 + b :=        343^3, Wert =        686
; (a / b) = is cubic = true | a :=        343^3 / b :=        343^3, Wert =          1
; (a + b) = is cubic = true | a :=        343^3 + b :=        512^3, Wert =        855
; (a + b) = is cubic = true | a :=        343^3 + b :=        729^3, Wert =       1072
; (a + b) = is cubic = true | a :=        343^3 + b :=       1000^3, Wert =       1343
; (a + b) = is cubic = true | a :=        512^3 + b :=          1^3, Wert =        513
; (a + b) = is cubic = true | a :=        512^3 + b :=          8^3, Wert =        520
; (a / b) = is cubic = true | a :=        512^3 / b :=          8^3, Wert =         57
; (a + b) = is cubic = true | a :=        512^3 + b :=         27^3, Wert =        539
; (a + b) = is cubic = true | a :=        512^3 + b :=         64^3, Wert =        576
; (a + b) = is cubic = true | a :=        512^3 + b :=        125^3, Wert =        637
; (a + b) = is cubic = true | a :=        512^3 + b :=        216^3, Wert =        728
; (a + b) = is cubic = true | a :=        512^3 + b :=        343^3, Wert =        855
; (a + b) = is cubic = true | a :=        512^3 + b :=        512^3, Wert =       1024
; (a / b) = is cubic = true | a :=        512^3 / b :=        512^3, Wert =          1
; (a + b) = is cubic = true | a :=        512^3 + b :=        729^3, Wert =       1241
; (a + b) = is cubic = true | a :=        512^3 + b :=       1000^3, Wert =       1512
; (a + b) = is cubic = true | a :=        729^3 + b :=          1^3, Wert =        730
; (a / b) = is cubic = true | a :=        729^3 / b :=          1^3, Wert =        365
; (a + b) = is cubic = true | a :=        729^3 + b :=          8^3, Wert =        737
; (a + b) = is cubic = true | a :=        729^3 + b :=         27^3, Wert =        756
; (a + b) = is cubic = true | a :=        729^3 + b :=         64^3, Wert =        793
; (a + b) = is cubic = true | a :=        729^3 + b :=        125^3, Wert =        854
; (a + b) = is cubic = true | a :=        729^3 + b :=        216^3, Wert =        945
; (a + b) = is cubic = true | a :=        729^3 + b :=        343^3, Wert =       1072
; (a + b) = is cubic = true | a :=        729^3 + b :=        512^3, Wert =       1241
; (a + b) = is cubic = true | a :=        729^3 + b :=        729^3, Wert =       1458
; (a / b) = is cubic = true | a :=        729^3 / b :=        729^3, Wert =          1
; (a + b) = is cubic = true | a :=        729^3 + b :=       1000^3, Wert =       1729
; (a + b) = is cubic = true | a :=       1000^3 + b :=          1^3, Wert =       1001
; (a + b) = is cubic = true | a :=       1000^3 + b :=          8^3, Wert =       1008
; (a + b) = is cubic = true | a :=       1000^3 + b :=         27^3, Wert =       1027
; (a + b) = is cubic = true | a :=       1000^3 + b :=         64^3, Wert =       1064
; (a + b) = is cubic = true | a :=       1000^3 + b :=        125^3, Wert =       1125
; (a + b) = is cubic = true | a :=       1000^3 + b :=        216^3, Wert =       1216
; (a + b) = is cubic = true | a :=       1000^3 + b :=        343^3, Wert =       1343
; (a + b) = is cubic = true | a :=       1000^3 + b :=        512^3, Wert =       1512
; (a + b) = is cubic = true | a :=       1000^3 + b :=        729^3, Wert =       1729
; (a + b) = is cubic = true | a :=       1000^3 + b :=       1000^3, Wert =       2000
; (a / b) = is cubic = true | a :=       1000^3 / b :=       1000^3, Wert =          1

