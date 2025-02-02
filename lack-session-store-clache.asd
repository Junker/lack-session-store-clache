(defsystem "lack-session-store-clache"
  :version "0.1.0"
  :author "Dmitrii Kosenkov"
  :license "MIT"
  :depends-on ("lack-middleware-session"
               "clache")
  :components ((:file "clache")))

(register-system-packages "lack-session-store-clache"
                          '(:lack.session.store.clache))
