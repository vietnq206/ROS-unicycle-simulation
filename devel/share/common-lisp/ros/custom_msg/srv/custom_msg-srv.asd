
(cl:in-package :asdf)

(defsystem "custom_msg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "getDistance" :depends-on ("_package_getDistance"))
    (:file "_package_getDistance" :depends-on ("_package"))
  ))