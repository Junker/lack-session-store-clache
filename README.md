# lack-session-store-clache

[Clache](https://github.com/html/clache) Session store for [Lack](https://github.com/fukamachi/lack)

## Installation

This system can be installed from [UltraLisp](https://ultralisp.org/) like this:

```lisp
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload "lack-session-store-clache")
```

## Usage

```common-lisp
(defparameter *clache-session-cache*
  (make-instance 'clache:file-store
                 :directory #P"/var/www/myproject/sessions/"))
(setf *app*
      (lack:builder
       (:session :store (lack.middleware.session.store.clache:make-clache-store
                         :cache *clache-session-cache*))
       *app*))
```
