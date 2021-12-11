; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Stud_info.msg.html

(cl:defclass <Stud_info> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (stud_if
    :reader stud_if
    :initarg :stud_if
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass Stud_info (<Stud_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stud_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stud_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Stud_info> is deprecated: use beginner_tutorials-msg:Stud_info instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Stud_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'stud_if-val :lambda-list '(m))
(cl:defmethod stud_if-val ((m <Stud_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:stud_if-val is deprecated.  Use beginner_tutorials-msg:stud_if instead.")
  (stud_if m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Stud_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:age-val is deprecated.  Use beginner_tutorials-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <Stud_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:weight-val is deprecated.  Use beginner_tutorials-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stud_info>) ostream)
  "Serializes a message object of type '<Stud_info>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'stud_if)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stud_info>) istream)
  "Deserializes a message object of type '<Stud_info>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stud_if) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stud_info>)))
  "Returns string type for a message object of type '<Stud_info>"
  "beginner_tutorials/Stud_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stud_info)))
  "Returns string type for a message object of type 'Stud_info"
  "beginner_tutorials/Stud_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stud_info>)))
  "Returns md5sum for a message object of type '<Stud_info>"
  "bec0436c0268e15cb002e8251ec500b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stud_info)))
  "Returns md5sum for a message object of type 'Stud_info"
  "bec0436c0268e15cb002e8251ec500b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stud_info>)))
  "Returns full string definition for message of type '<Stud_info>"
  (cl:format cl:nil "string name~%~%int8 stud_if~%uint8 age~%float32 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stud_info)))
  "Returns full string definition for message of type 'Stud_info"
  (cl:format cl:nil "string name~%~%int8 stud_if~%uint8 age~%float32 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stud_info>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stud_info>))
  "Converts a ROS message object to a list"
  (cl:list 'Stud_info
    (cl:cons ':name (name msg))
    (cl:cons ':stud_if (stud_if msg))
    (cl:cons ':age (age msg))
    (cl:cons ':weight (weight msg))
))
