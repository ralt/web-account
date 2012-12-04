;;;; web-account.asd

(asdf:defsystem #:web-account
  :serial t
  :description "Describe web-account here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on ("hunchentoot")
  :components ((:file "package")
               (:file "web-account")))
