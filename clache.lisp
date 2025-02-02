(defpackage lack.middleware.session.store.clache
  (:nicknames :lack.session.store.clache)
  (:use #:cl #:lack.middleware.session.store)
  (:import-from #:clache
                #:getcache
                #:setcache
                #:remcache)
  (:export #:clache-store
           #:make-clache-store
           #:fetch-session
           #:store-session
           #:remove-session))

(in-package #:lack.middleware.session.store.clache)

(defstruct (clache-store (:include store))
  (cache nil))

(defmethod fetch-session ((store clache-store) sid)
  (getcache sid (clache-store-cache store)))

(defmethod store-session ((store clache-store) sid session)
  (setcache sid session (clache-store-cache store)))

(defmethod remove-session ((store clache-store) sid)
  (remcache sid (clache-store-cache store)))
