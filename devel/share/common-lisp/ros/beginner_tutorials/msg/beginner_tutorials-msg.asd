
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Stud_info" :depends-on ("_package_Stud_info"))
    (:file "_package_Stud_info" :depends-on ("_package"))
    (:file "custom" :depends-on ("_package_custom"))
    (:file "_package_custom" :depends-on ("_package"))
  ))