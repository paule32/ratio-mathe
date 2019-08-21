;; (c) 2019 Jens Kallup
;; de.sci.mathe

(defconstant *maxWert* 10)  ;; maximum counter
 
(loop :for cnt0 :from 1 :to *maxWert*
      :do (loop :for cnt1 :from 1 :to *maxWert*
                :for cuA := (expt cnt0 3)
                :for cuB := (expt cnt1 3)
                :for cuC := (+ cuA cuB)
                :for cuD := (/ cuA cuB)
                :for cuAT := (typep cuC 'integer)
                :for cuBT := (typep cuD 'integer)
                :do (when (eq t cuAT)
                      (format t "; (a + b) = is cubic = true | a := ~10D^3 + b := ~10D^3, Wert = ~10D~%"
                              cuA cuB (- cuC 1)))
                :do (when (eq t cuBT)
                      (format nil "; (a / b) = is cubic = true | a := ~10D^3 / b := ~10D^3, Wert = ~10D~%"
                              cuA cuB cuD))))

(exit)

;; Result:
; (a + b) = is cubic = true | a :=          1^3 + b :=          1^3, Wert =          1
; (a + b) = is cubic = true | a :=          1^3 + b :=          8^3, Wert =          8
; (a + b) = is cubic = true | a :=          1^3 + b :=         27^3, Wert =         27
; (a + b) = is cubic = true | a :=          1^3 + b :=         64^3, Wert =         64
; (a + b) = is cubic = true | a :=          1^3 + b :=        125^3, Wert =        125
; (a + b) = is cubic = true | a :=          1^3 + b :=        216^3, Wert =        216
; (a + b) = is cubic = true | a :=          1^3 + b :=        343^3, Wert =        343
; (a + b) = is cubic = true | a :=          1^3 + b :=        512^3, Wert =        512
; (a + b) = is cubic = true | a :=          1^3 + b :=        729^3, Wert =        729
; (a + b) = is cubic = true | a :=          1^3 + b :=       1000^3, Wert =       1000
; (a + b) = is cubic = true | a :=          8^3 + b :=          1^3, Wert =          8
; (a + b) = is cubic = true | a :=          8^3 + b :=          8^3, Wert =         15
; (a + b) = is cubic = true | a :=          8^3 + b :=         27^3, Wert =         34
; (a + b) = is cubic = true | a :=          8^3 + b :=         64^3, Wert =         71
; (a + b) = is cubic = true | a :=          8^3 + b :=        125^3, Wert =        132
; (a + b) = is cubic = true | a :=          8^3 + b :=        216^3, Wert =        223
; (a + b) = is cubic = true | a :=          8^3 + b :=        343^3, Wert =        350
; (a + b) = is cubic = true | a :=          8^3 + b :=        512^3, Wert =        519
; (a + b) = is cubic = true | a :=          8^3 + b :=        729^3, Wert =        736
; (a + b) = is cubic = true | a :=          8^3 + b :=       1000^3, Wert =       1007
; (a + b) = is cubic = true | a :=         27^3 + b :=          1^3, Wert =         27
; (a + b) = is cubic = true | a :=         27^3 + b :=          8^3, Wert =         34
; (a + b) = is cubic = true | a :=         27^3 + b :=         27^3, Wert =         53
; (a + b) = is cubic = true | a :=         27^3 + b :=         64^3, Wert =         90
; (a + b) = is cubic = true | a :=         27^3 + b :=        125^3, Wert =        151
; (a + b) = is cubic = true | a :=         27^3 + b :=        216^3, Wert =        242
; (a + b) = is cubic = true | a :=         27^3 + b :=        343^3, Wert =        369
; (a + b) = is cubic = true | a :=         27^3 + b :=        512^3, Wert =        538
; (a + b) = is cubic = true | a :=         27^3 + b :=        729^3, Wert =        755
; (a + b) = is cubic = true | a :=         27^3 + b :=       1000^3, Wert =       1026
; (a + b) = is cubic = true | a :=         64^3 + b :=          1^3, Wert =         64
; (a + b) = is cubic = true | a :=         64^3 + b :=          8^3, Wert =         71
; (a + b) = is cubic = true | a :=         64^3 + b :=         27^3, Wert =         90
; (a + b) = is cubic = true | a :=         64^3 + b :=         64^3, Wert =        127
; (a + b) = is cubic = true | a :=         64^3 + b :=        125^3, Wert =        188
; (a + b) = is cubic = true | a :=         64^3 + b :=        216^3, Wert =        279
; (a + b) = is cubic = true | a :=         64^3 + b :=        343^3, Wert =        406
; (a + b) = is cubic = true | a :=         64^3 + b :=        512^3, Wert =        575
; (a + b) = is cubic = true | a :=         64^3 + b :=        729^3, Wert =        792
; (a + b) = is cubic = true | a :=         64^3 + b :=       1000^3, Wert =       1063
; (a + b) = is cubic = true | a :=        125^3 + b :=          1^3, Wert =        125
; (a + b) = is cubic = true | a :=        125^3 + b :=          8^3, Wert =        132
; (a + b) = is cubic = true | a :=        125^3 + b :=         27^3, Wert =        151
; (a + b) = is cubic = true | a :=        125^3 + b :=         64^3, Wert =        188
; (a + b) = is cubic = true | a :=        125^3 + b :=        125^3, Wert =        249
; (a + b) = is cubic = true | a :=        125^3 + b :=        216^3, Wert =        340
; (a + b) = is cubic = true | a :=        125^3 + b :=        343^3, Wert =        467
; (a + b) = is cubic = true | a :=        125^3 + b :=        512^3, Wert =        636
; (a + b) = is cubic = true | a :=        125^3 + b :=        729^3, Wert =        853
; (a + b) = is cubic = true | a :=        125^3 + b :=       1000^3, Wert =       1124
; (a + b) = is cubic = true | a :=        216^3 + b :=          1^3, Wert =        216
; (a + b) = is cubic = true | a :=        216^3 + b :=          8^3, Wert =        223
; (a + b) = is cubic = true | a :=        216^3 + b :=         27^3, Wert =        242
; (a + b) = is cubic = true | a :=        216^3 + b :=         64^3, Wert =        279
; (a + b) = is cubic = true | a :=        216^3 + b :=        125^3, Wert =        340
; (a + b) = is cubic = true | a :=        216^3 + b :=        216^3, Wert =        431
; (a + b) = is cubic = true | a :=        216^3 + b :=        343^3, Wert =        558
; (a + b) = is cubic = true | a :=        216^3 + b :=        512^3, Wert =        727
; (a + b) = is cubic = true | a :=        216^3 + b :=        729^3, Wert =        944
; (a + b) = is cubic = true | a :=        216^3 + b :=       1000^3, Wert =       1215
; (a + b) = is cubic = true | a :=        343^3 + b :=          1^3, Wert =        343
; (a + b) = is cubic = true | a :=        343^3 + b :=          8^3, Wert =        350
; (a + b) = is cubic = true | a :=        343^3 + b :=         27^3, Wert =        369
; (a + b) = is cubic = true | a :=        343^3 + b :=         64^3, Wert =        406
; (a + b) = is cubic = true | a :=        343^3 + b :=        125^3, Wert =        467
; (a + b) = is cubic = true | a :=        343^3 + b :=        216^3, Wert =        558
; (a + b) = is cubic = true | a :=        343^3 + b :=        343^3, Wert =        685
; (a + b) = is cubic = true | a :=        343^3 + b :=        512^3, Wert =        854
; (a + b) = is cubic = true | a :=        343^3 + b :=        729^3, Wert =       1071
; (a + b) = is cubic = true | a :=        343^3 + b :=       1000^3, Wert =       1342
; (a + b) = is cubic = true | a :=        512^3 + b :=          1^3, Wert =        512
; (a + b) = is cubic = true | a :=        512^3 + b :=          8^3, Wert =        519
; (a + b) = is cubic = true | a :=        512^3 + b :=         27^3, Wert =        538
; (a + b) = is cubic = true | a :=        512^3 + b :=         64^3, Wert =        575
; (a + b) = is cubic = true | a :=        512^3 + b :=        125^3, Wert =        636
; (a + b) = is cubic = true | a :=        512^3 + b :=        216^3, Wert =        727
; (a + b) = is cubic = true | a :=        512^3 + b :=        343^3, Wert =        854
; (a + b) = is cubic = true | a :=        512^3 + b :=        512^3, Wert =       1023
; (a + b) = is cubic = true | a :=        512^3 + b :=        729^3, Wert =       1240
; (a + b) = is cubic = true | a :=        512^3 + b :=       1000^3, Wert =       1511
; (a + b) = is cubic = true | a :=        729^3 + b :=          1^3, Wert =        729
; (a + b) = is cubic = true | a :=        729^3 + b :=          8^3, Wert =        736
; (a + b) = is cubic = true | a :=        729^3 + b :=         27^3, Wert =        755
; (a + b) = is cubic = true | a :=        729^3 + b :=         64^3, Wert =        792
; (a + b) = is cubic = true | a :=        729^3 + b :=        125^3, Wert =        853
; (a + b) = is cubic = true | a :=        729^3 + b :=        216^3, Wert =        944
; (a + b) = is cubic = true | a :=        729^3 + b :=        343^3, Wert =       1071
; (a + b) = is cubic = true | a :=        729^3 + b :=        512^3, Wert =       1240
; (a + b) = is cubic = true | a :=        729^3 + b :=        729^3, Wert =       1457
; (a + b) = is cubic = true | a :=        729^3 + b :=       1000^3, Wert =       1728
; (a + b) = is cubic = true | a :=       1000^3 + b :=          1^3, Wert =       1000
; (a + b) = is cubic = true | a :=       1000^3 + b :=          8^3, Wert =       1007
; (a + b) = is cubic = true | a :=       1000^3 + b :=         27^3, Wert =       1026
; (a + b) = is cubic = true | a :=       1000^3 + b :=         64^3, Wert =       1063
; (a + b) = is cubic = true | a :=       1000^3 + b :=        125^3, Wert =       1124
; (a + b) = is cubic = true | a :=       1000^3 + b :=        216^3, Wert =       1215
; (a + b) = is cubic = true | a :=       1000^3 + b :=        343^3, Wert =       1342
; (a + b) = is cubic = true | a :=       1000^3 + b :=        512^3, Wert =       1511
; (a + b) = is cubic = true | a :=       1000^3 + b :=        729^3, Wert =       1728
; (a + b) = is cubic = true | a :=       1000^3 + b :=       1000^3, Wert =       1999

