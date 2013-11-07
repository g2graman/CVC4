(set-logic QF_S)
(set-option :fmf-strings true)
(set-info :status sat)

(declare-fun x () String)
(declare-fun y () String)
(declare-fun z () String)

(assert (str.in.re x
                (re.+ (re.range "a" "c"))
				                ))

(assert (= x (str.++ y "c" z "b")))
(assert (> (str.len z) 1))

(check-sat)