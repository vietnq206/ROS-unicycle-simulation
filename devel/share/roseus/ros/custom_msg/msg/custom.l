;; Auto-generated. Do not edit!


(when (boundp 'custom_msg::custom)
  (if (not (find-package "CUSTOM_MSG"))
    (make-package "CUSTOM_MSG"))
  (shadow 'custom (find-package "CUSTOM_MSG")))
(unless (find-package "CUSTOM_MSG::CUSTOM")
  (make-package "CUSTOM_MSG::CUSTOM"))

(in-package "ROS")
;;//! \htmlinclude custom.msg.html


(defclass custom_msg::custom
  :super ros::object
  :slots (_time _data ))

(defmethod custom_msg::custom
  (:init
   (&key
    ((:time __time) 0.0)
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _data (float __data))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_msg::custom :md5sum-) "32dad2e35d01ff0ba1fd46c34539c7a5")
(setf (get custom_msg::custom :datatype-) "custom_msg/custom")
(setf (get custom_msg::custom :definition-)
      "float64 time
float64 data

")



(provide :custom_msg/custom "32dad2e35d01ff0ba1fd46c34539c7a5")


