(asdf:defsystem mecab-blob
  :author "Pavel Korolev"
  :description "Foreign library collection of MeCab library"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :class :bodge-blob-system
  :depends-on (base-blobs)
  :libraries (((:darwin :x86-64) "libmecab.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libmecab.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libmecab.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libmecab.so.bodged" "x86/")
              ((:windows :x86-64) "libmecab.dll.bodged" "x86_64/")
              ((:windows :x86) "libmecab.dll.bodged" "x86/")))
