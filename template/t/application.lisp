(defpackage (#| TMPL_VAR name |#)/test
  (:use :cl :rove))

(in-package :(#| TMPL_VAR name |#)/test)

(deftest test-(#| TMPL_VAR name |#)
  (ok (eq 1 1) "testing works"))
