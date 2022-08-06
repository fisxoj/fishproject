(defpackage (#| TMPL_VAR name |#)/test
  (:use :cl :parachute))

(in-package :(#| TMPL_VAR name |#)/test)


(define-test (#| TMPL_VAR name |#)
    (true (eq 1 1) "testing works"))
