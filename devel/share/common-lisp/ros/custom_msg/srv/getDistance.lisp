; Auto-generated. Do not edit!


(cl:in-package custom_msg-srv)


;//! \htmlinclude getDistance-request.msg.html

(cl:defclass <getDistance-request> (roslisp-msg-protocol:ros-message)
  ((locX
    :reader locX
    :initarg :locX
    :type cl:float
    :initform 0.0)
   (locY
    :reader locY
    :initarg :locY
    :type cl:float
    :initform 0.0))
)

(cl:defclass getDistance-request (<getDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msg-srv:<getDistance-request> is deprecated: use custom_msg-srv:getDistance-request instead.")))

(cl:ensure-generic-function 'locX-val :lambda-list '(m))
(cl:defmethod locX-val ((m <getDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg-srv:locX-val is deprecated.  Use custom_msg-srv:locX instead.")
  (locX m))

(cl:ensure-generic-function 'locY-val :lambda-list '(m))
(cl:defmethod locY-val ((m <getDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg-srv:locY-val is deprecated.  Use custom_msg-srv:locY instead.")
  (locY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getDistance-request>) ostream)
  "Serializes a message object of type '<getDistance-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'locX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'locY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getDistance-request>) istream)
  "Deserializes a message object of type '<getDistance-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'locX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'locY) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getDistance-request>)))
  "Returns string type for a service object of type '<getDistance-request>"
  "custom_msg/getDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getDistance-request)))
  "Returns string type for a service object of type 'getDistance-request"
  "custom_msg/getDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getDistance-request>)))
  "Returns md5sum for a message object of type '<getDistance-request>"
  "59d4abc9a91cdb664f2e1f1ab2e98752")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getDistance-request)))
  "Returns md5sum for a message object of type 'getDistance-request"
  "59d4abc9a91cdb664f2e1f1ab2e98752")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getDistance-request>)))
  "Returns full string definition for message of type '<getDistance-request>"
  (cl:format cl:nil "float64 locX~%float64 locY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getDistance-request)))
  "Returns full string definition for message of type 'getDistance-request"
  (cl:format cl:nil "float64 locX~%float64 locY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getDistance-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getDistance-request
    (cl:cons ':locX (locX msg))
    (cl:cons ':locY (locY msg))
))
;//! \htmlinclude getDistance-response.msg.html

(cl:defclass <getDistance-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass getDistance-response (<getDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msg-srv:<getDistance-response> is deprecated: use custom_msg-srv:getDistance-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <getDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg-srv:distance-val is deprecated.  Use custom_msg-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getDistance-response>) ostream)
  "Serializes a message object of type '<getDistance-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getDistance-response>) istream)
  "Deserializes a message object of type '<getDistance-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getDistance-response>)))
  "Returns string type for a service object of type '<getDistance-response>"
  "custom_msg/getDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getDistance-response)))
  "Returns string type for a service object of type 'getDistance-response"
  "custom_msg/getDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getDistance-response>)))
  "Returns md5sum for a message object of type '<getDistance-response>"
  "59d4abc9a91cdb664f2e1f1ab2e98752")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getDistance-response)))
  "Returns md5sum for a message object of type 'getDistance-response"
  "59d4abc9a91cdb664f2e1f1ab2e98752")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getDistance-response>)))
  "Returns full string definition for message of type '<getDistance-response>"
  (cl:format cl:nil "float64 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getDistance-response)))
  "Returns full string definition for message of type 'getDistance-response"
  (cl:format cl:nil "float64 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getDistance-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getDistance-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getDistance)))
  'getDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getDistance)))
  'getDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getDistance)))
  "Returns string type for a service object of type '<getDistance>"
  "custom_msg/getDistance")