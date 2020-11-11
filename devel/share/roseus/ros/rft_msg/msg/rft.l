;; Auto-generated. Do not edit!


(when (boundp 'rft_msg::rft)
  (if (not (find-package "RFT_MSG"))
    (make-package "RFT_MSG"))
  (shadow 'rft (find-package "RFT_MSG")))
(unless (find-package "RFT_MSG::RFT")
  (make-package "RFT_MSG::RFT"))

(in-package "ROS")
;;//! \htmlinclude rft.msg.html


(defclass rft_msg::rft
  :super ros::object
  :slots (_f_x _f_y _f_z ))

(defmethod rft_msg::rft
  (:init
   (&key
    ((:f_x __f_x) 0.0)
    ((:f_y __f_y) 0.0)
    ((:f_z __f_z) 0.0)
    )
   (send-super :init)
   (setq _f_x (float __f_x))
   (setq _f_y (float __f_y))
   (setq _f_z (float __f_z))
   self)
  (:f_x
   (&optional __f_x)
   (if __f_x (setq _f_x __f_x)) _f_x)
  (:f_y
   (&optional __f_y)
   (if __f_y (setq _f_y __f_y)) _f_y)
  (:f_z
   (&optional __f_z)
   (if __f_z (setq _f_z __f_z)) _f_z)
  (:serialization-length
   ()
   (+
    ;; float64 _f_x
    8
    ;; float64 _f_y
    8
    ;; float64 _f_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _f_x
       (sys::poke _f_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_y
       (sys::poke _f_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_z
       (sys::poke _f_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _f_x
     (setq _f_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_y
     (setq _f_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_z
     (setq _f_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rft_msg::rft :md5sum-) "bfff34252712dea0382c929d95a84d0b")
(setf (get rft_msg::rft :datatype-) "rft_msg/rft")
(setf (get rft_msg::rft :definition-)
      "float64 f_x
float64 f_y
float64 f_z

")



(provide :rft_msg/rft "bfff34252712dea0382c929d95a84d0b")


