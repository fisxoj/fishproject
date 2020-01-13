;;;; (#| TMPL_VAR name |#).asd(#| TMPL_IF copyright |#)
;;
;;;; (#| TMPL_VAR copyright |#)(#| /TMPL_IF |#)

(asdf:defsystem (#| TMPL_VAR name |#)
  :description "Describe (#| TMPL_VAR name |#) here"
  :author "Matt Novenstern <fisxoj@gmail.com>"
  :license  "(#| TMPL_VAR license |#)"
  :version "0.0.1"(#| TMPL_IF depends-on |#)
  :depends-on (#| TMPL_VAR dependencies-string |#)(#| /TMPL_IF |#)
  :pathname "src/"
  :components ((:file "(#| TMPL_VAR name |#)"))
  :homepage "https://fisxoj.github.io/(#| TMPL_VAR name |#)/"
  :in-order-to ((test-op (test-op (#| TMPL_VAR name |#)/test)))
  :long-description #.(uiop:read-file-string #P"README.rst"))


(defsystem (#| TMPL_VAR name |#)/test
  :depends-on ("(#| TMPL_VAR name |#)"
	       "rove")
  :pathname "t"
  :components ((:file "(#| TMPL_VAR name |#)"))
  :perform (test-op (op c)
                    (declare (ignore op))
		    (uiop:symbol-call :rove :run c)))
