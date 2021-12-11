;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::custom)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'custom (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::CUSTOM")
  (make-package "BEGINNER_TUTORIALS::CUSTOM"))

(in-package "ROS")
;;//! \htmlinclude custom.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass beginner_tutorials::custom
  :super ros::object
  :slots (_robot_name _data_time _location ))

(defmethod beginner_tutorials::custom
  (:init
   (&key
    ((:robot_name __robot_name) (instance std_msgs::String :init))
    ((:data_time __data_time) (instance std_msgs::String :init))
    ((:location __location) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _robot_name __robot_name)
   (setq _data_time __data_time)
   (setq _location __location)
   self)
  (:robot_name
   (&rest __robot_name)
   (if (keywordp (car __robot_name))
       (send* _robot_name __robot_name)
     (progn
       (if __robot_name (setq _robot_name (car __robot_name)))
       _robot_name)))
  (:data_time
   (&rest __data_time)
   (if (keywordp (car __data_time))
       (send* _data_time __data_time)
     (progn
       (if __data_time (setq _data_time (car __data_time)))
       _data_time)))
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _robot_name
    (send _robot_name :serialization-length)
    ;; std_msgs/String _data_time
    (send _data_time :serialization-length)
    ;; geometry_msgs/Pose2D _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _robot_name
       (send _robot_name :serialize s)
     ;; std_msgs/String _data_time
       (send _data_time :serialize s)
     ;; geometry_msgs/Pose2D _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _robot_name
     (send _robot_name :deserialize buf ptr-) (incf ptr- (send _robot_name :serialization-length))
   ;; std_msgs/String _data_time
     (send _data_time :deserialize buf ptr-) (incf ptr- (send _data_time :serialization-length))
   ;; geometry_msgs/Pose2D _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::custom :md5sum-) "3d6c6b425f5ae28063ccf16e8002d35a")
(setf (get beginner_tutorials::custom :datatype-) "beginner_tutorials/custom")
(setf (get beginner_tutorials::custom :definition-)
      "std_msgs/String robot_name
std_msgs/String data_time

geometry_msgs/Pose2D location

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :beginner_tutorials/custom "3d6c6b425f5ae28063ccf16e8002d35a")


