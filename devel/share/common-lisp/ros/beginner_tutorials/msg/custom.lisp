; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude custom.msg.html

(cl:defclass <custom> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (data_time
    :reader data_time
    :initarg :data_time
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (location
    :reader location
    :initarg :location
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass custom (<custom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<custom> is deprecated: use beginner_tutorials-msg:custom instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:robot_name-val is deprecated.  Use beginner_tutorials-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'data_time-val :lambda-list '(m))
(cl:defmethod data_time-val ((m <custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:data_time-val is deprecated.  Use beginner_tutorials-msg:data_time instead.")
  (data_time m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:location-val is deprecated.  Use beginner_tutorials-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom>) ostream)
  "Serializes a message object of type '<custom>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom>) istream)
  "Deserializes a message object of type '<custom>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom>)))
  "Returns string type for a message object of type '<custom>"
  "beginner_tutorials/custom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom)))
  "Returns string type for a message object of type 'custom"
  "beginner_tutorials/custom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom>)))
  "Returns md5sum for a message object of type '<custom>"
  "3d6c6b425f5ae28063ccf16e8002d35a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom)))
  "Returns md5sum for a message object of type 'custom"
  "3d6c6b425f5ae28063ccf16e8002d35a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom>)))
  "Returns full string definition for message of type '<custom>"
  (cl:format cl:nil "std_msgs/String robot_name~%std_msgs/String data_time~%~%geometry_msgs/Pose2D location~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom)))
  "Returns full string definition for message of type 'custom"
  (cl:format cl:nil "std_msgs/String robot_name~%std_msgs/String data_time~%~%geometry_msgs/Pose2D location~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom>))
  "Converts a ROS message object to a list"
  (cl:list 'custom
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':data_time (data_time msg))
    (cl:cons ':location (location msg))
))
