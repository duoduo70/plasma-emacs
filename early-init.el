(setq gc-cons-threshold 24000000)
(setq read-process-output-max (* 1024 1024))
(defvar k-gc-timer
  (run-with-idle-timer 5 t 'garbage-collect))
(setq gc-cons-percentage 0.6)
(setq gc-cons-threshold most-positive-fixnum)