
(cl:in-package :asdf)

(defsystem "rft_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "rft" :depends-on ("_package_rft"))
    (:file "_package_rft" :depends-on ("_package"))
  ))