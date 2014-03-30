(after 'ack-and-a-half
  (defadvice ack-and-a-half (before push-mark)
    (ring-insert find-tag-marker-ring (point-marker)))
  (ad-activate 'ack-and-a-half))

(after 'imenu
  (defadvice imenu (before push-mark)
    (ring-insert find-tag-marker-ring (point-marker)))
  (ad-activate 'imenu))

(after 'imenu-anywhere
  (defadvice imenu-anywhere (before push-mark)
    (ring-insert find-tag-marker-ring (point-marker)))
  (ad-activate 'imenu-anywhere))

(after 'grep-buffers
  (defadvice grep-buffers (before push-mark)
    (ring-insert find-tag-marker-ring (point-marker)))
  (ad-activate 'grep-buffers))

(defadvice rgrep (before push-mark)
  (ring-insert find-tag-marker-ring (point-marker)))
(ad-activate 'rgrep)

(defadvice find-function (before push-mark)
  (ring-insert find-tag-marker-ring (point-marker)))
(ad-activate 'find-function)

(defadvice ff-find-other-file (before push-mark)
  (ring-insert find-tag-marker-ring (point-marker)))
(ad-activate 'ff-find-other-file)
