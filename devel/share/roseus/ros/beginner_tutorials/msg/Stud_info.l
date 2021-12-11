;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Stud_info)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Stud_info (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::STUD_INFO")
  (make-package "BEGINNER_TUTORIALS::STUD_INFO"))

(in-package "ROS")
;;//! \htmlinclude Stud_info.msg.html


(defclass beginner_tutorials::Stud_info
  :super ros::object
  :slots (_name _stud_if _age _weight ))

(defmethod beginner_tutorials::Stud_info
  (:init
   (&key
    ((:name __name) "")
    ((:stud_if __stud_if) 0)
    ((:age __age) 0)
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _stud_if (round __stud_if))
   (setq _age (round __age))
   (setq _weight (float __weight))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:stud_if
   (&optional __stud_if)
   (if __stud_if (setq _stud_if __stud_if)) _stud_if)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int8 _stud_if
    1
    ;; uint8 _age
    1
    ;; float32 _weight
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _stud_if
       (write-byte _stud_if s)
     ;; uint8 _age
       (write-byte _age s)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _stud_if
     (setq _stud_if (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stud_if 127) (setq _stud_if (- _stud_if 256)))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Stud_info :md5sum-) "bec0436c0268e15cb002e8251ec500b4")
(setf (get beginner_tutorials::Stud_info :datatype-) "beginner_tutorials/Stud_info")
(setf (get beginner_tutorials::Stud_info :definition-)
      "string name

int8 stud_if
uint8 age
float32 weight

")



(provide :beginner_tutorials/Stud_info "bec0436c0268e15cb002e8251ec500b4")


