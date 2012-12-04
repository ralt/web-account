;;;; web-account.lisp

(in-package #:web-account)

;;; "web-account" goes here. Hacks and glory await!

(defroute "^/$"
  (get-route (params)
       "O hai!")
  (post-route (params)
        "O hai too!"))
