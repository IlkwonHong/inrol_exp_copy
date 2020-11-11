; Auto-generated. Do not edit!


(cl:in-package rft_msg-msg)


;//! \htmlinclude rft.msg.html

(cl:defclass <rft> (roslisp-msg-protocol:ros-message)
  ((f_x
    :reader f_x
    :initarg :f_x
    :type cl:float
    :initform 0.0)
   (f_y
    :reader f_y
    :initarg :f_y
    :type cl:float
    :initform 0.0)
   (f_z
    :reader f_z
    :initarg :f_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass rft (<rft>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rft>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rft)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rft_msg-msg:<rft> is deprecated: use rft_msg-msg:rft instead.")))

(cl:ensure-generic-function 'f_x-val :lambda-list '(m))
(cl:defmethod f_x-val ((m <rft>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rft_msg-msg:f_x-val is deprecated.  Use rft_msg-msg:f_x instead.")
  (f_x m))

(cl:ensure-generic-function 'f_y-val :lambda-list '(m))
(cl:defmethod f_y-val ((m <rft>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rft_msg-msg:f_y-val is deprecated.  Use rft_msg-msg:f_y instead.")
  (f_y m))

(cl:ensure-generic-function 'f_z-val :lambda-list '(m))
(cl:defmethod f_z-val ((m <rft>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rft_msg-msg:f_z-val is deprecated.  Use rft_msg-msg:f_z instead.")
  (f_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rft>) ostream)
  "Serializes a message object of type '<rft>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'f_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'f_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'f_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rft>) istream)
  "Deserializes a message object of type '<rft>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rft>)))
  "Returns string type for a message object of type '<rft>"
  "rft_msg/rft")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rft)))
  "Returns string type for a message object of type 'rft"
  "rft_msg/rft")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rft>)))
  "Returns md5sum for a message object of type '<rft>"
  "bfff34252712dea0382c929d95a84d0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rft)))
  "Returns md5sum for a message object of type 'rft"
  "bfff34252712dea0382c929d95a84d0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rft>)))
  "Returns full string definition for message of type '<rft>"
  (cl:format cl:nil "float64 f_x~%float64 f_y~%float64 f_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rft)))
  "Returns full string definition for message of type 'rft"
  (cl:format cl:nil "float64 f_x~%float64 f_y~%float64 f_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rft>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rft>))
  "Converts a ROS message object to a list"
  (cl:list 'rft
    (cl:cons ':f_x (f_x msg))
    (cl:cons ':f_y (f_y msg))
    (cl:cons ':f_z (f_z msg))
))
