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

