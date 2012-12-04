;;;; hunchentils.lisp

(in-package #:web-account)

;;; "hunchentils" goes here. Hacks and glory await!

(defmacro defroute (route &body body)
  `(create-regex-dispatcher ,route
                            #'(lambda ()
                                (progn
                                  ,@body))))

(defmacro get-route (params &body body)
  `(when (get-parameters*)
     (let ((,@params (get-parameters*)))
       ,@body)))

(defmacro post-route (params &body body)
  `(when (post-parameters*)
     (let ((,@params (post-parameters*)))
       ,@body)))
