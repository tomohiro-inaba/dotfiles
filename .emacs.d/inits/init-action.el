;; theme
(defun make-counter ()
  (lexical-let ((x 0))
    (lambda () (setq x (1+ x)))))

(defun toggle-theme ()
  (interactive)
  (let ((x (counter)))
    (cond ((eq (% x 2) 0) (load-theme 'tsdh-light t))
          ((eq (% x 2) 1) (load-theme 'tsdh-dark t))
          (t "error"))))

;; skeleton-py
(defun skeleton-py ()
  (interactive)
  (insert "#!/usr/bin/env python\n")
  (insert "# -*- coding: utf-8 -*-\n")
  (insert "\n")
  (insert "if __name__ == '__main__':\n")
  (insert "    print('hello')\n"))

;; main
(fset 'counter (make-counter))
(toggle-theme)
(buffer-menu)