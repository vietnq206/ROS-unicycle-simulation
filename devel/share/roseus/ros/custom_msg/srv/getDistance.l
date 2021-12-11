;; Auto-generated. Do not edit!


(when (boundp 'custom_msg::getDistance)
  (if (not (find-package "CUSTOM_MSG"))
    (make-package "CUSTOM_MSG"))
  (shadow 'getDistance (find-package "CUSTOM_MSG")))
(unless (find-package "CUSTOM_MSG::GETDISTANCE")
  (make-package "CUSTOM_MSG::GETDISTANCE"))
(unless (find-package "CUSTOM_MSG::GETDISTANCEREQUEST")
  (make-package "CUSTOM_MSG::GETDISTANCEREQUEST"))
(unless (find-package "CUSTOM_MSG::GETDISTANCERESPONSE")
  (make-package "CUSTOM_MSG::GETDISTANCERESPONSE"))

(in-package "ROS")





(defclass custom_msg::getDistanceRequest
  :super ros::object
  :slots (_locX _locY ))

(defmethod custom_msg::getDistanceRequest
  (:init
   (&key
    ((:locX __locX) 0.0)
    ((:locY __locY) 0.0)
    )
   (send-super :init)
   (setq _locX (float __locX))
   (setq _locY (float __locY))
   self)
  (:locX
   (&optional __locX)
   (if __locX (setq _locX __locX)) _locX)
  (:locY
   (&optional __locY)
   (if __locY (setq _locY __locY)) _locY)
  (:serialization-length
   ()
   (+
    ;; float64 _locX
    8
    ;; float64 _locY
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _locX
       (sys::poke _locX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _locY
       (sys::poke _locY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _locX
     (setq _locX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _locY
     (setq _locY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass custom_msg::getDistanceResponse
  :super ros::object
  :slots (_distance ))

(defmethod custom_msg::getDistanceResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass custom_msg::getDistance
  :super ros::object
  :slots ())

(setf (get custom_msg::getDistance :md5sum-) "59d4abc9a91cdb664f2e1f1ab2e98752")
(setf (get custom_msg::getDistance :datatype-) "custom_msg/getDistance")
(setf (get custom_msg::getDistance :request) custom_msg::getDistanceRequest)
(setf (get custom_msg::getDistance :response) custom_msg::getDistanceResponse)

(defmethod custom_msg::getDistanceRequest
  (:response () (instance custom_msg::getDistanceResponse :init)))

(setf (get custom_msg::getDistanceRequest :md5sum-) "59d4abc9a91cdb664f2e1f1ab2e98752")
(setf (get custom_msg::getDistanceRequest :datatype-) "custom_msg/getDistanceRequest")
(setf (get custom_msg::getDistanceRequest :definition-)
      "float64 locX
float64 locY
---
float64 distance

")

(setf (get custom_msg::getDistanceResponse :md5sum-) "59d4abc9a91cdb664f2e1f1ab2e98752")
(setf (get custom_msg::getDistanceResponse :datatype-) "custom_msg/getDistanceResponse")
(setf (get custom_msg::getDistanceResponse :definition-)
      "float64 locX
float64 locY
---
float64 distance

")



(provide :custom_msg/getDistance "59d4abc9a91cdb664f2e1f1ab2e98752")


