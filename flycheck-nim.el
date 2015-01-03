;;; flycheck-nim.el --- Defines a flycheck syntax checker for nim

;; Copyright (c) 2015 Adam Schwalm
;; Author: Adam Schwalm <adamschwalm@gmail.com>
;; Version: 0.1

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'flycheck)

(flycheck-define-checker nim
  "A syntax checker for the nim programming language

See http://nim-lang.org"
  :command ("nim" "check"
            ;; Must use source-original so relative imports and
            ;; qualified references to local variables resolve correctly
            source-original)
  :error-patterns
  ((error line-start (file-name) "(" line ", "
          column ") Error:" (message) line-end)
   (warning line-start (file-name) "(" line ", "
            column ") " (or "Hint:" "Warning:") (message) line-end))
  :error-filter
  (lambda (errors)
    (flycheck-sanitize-errors (flycheck-increment-error-columns errors)))
  :modes (nim-mode nimrod-mode))

(add-to-list 'flycheck-checkers 'nim)

(provide 'flycheck-nim)
;;; flycheck-nim.el ends here
