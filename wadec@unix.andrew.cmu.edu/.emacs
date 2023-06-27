;;(define-key org-mode-map "\C-a" 'org-beginning-of-line)
;;(define-key org-mode-map "\C-e" 'org-end-of-line)
(global-visual-line-mode t)

(setq inhibit-splash-screen t)
(load-theme 'wheatgrass t) ;; sudo emacs /usr/share/emacs/27.1/etc/themes/wheatgrass-theme.el changed so no black background in order to preserve transparent terminal background ;; also somehow we ended up changing the default theme's minibuffer-prompt face with M-x list-faces-display somehow. idek at this point
(setq initial-scratch-message "and seemingly, every type of love <3\n\n")

(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq auto-save-default nil)

(setq-default message-log-max nil)
(kill-buffer "*Messages*")

(setq scroll-step            1
      scroll-conservatively  10000)

(setq select-enable-clipboard t)

(defun my-command-error-function (data context caller)
  "Ignore the beginning-of-buffer,
end-of-buffer signals; pass the rest to the default handler."
  (when (not (memq (car data) '(beginning-of-buffer
                                end-of-buffer)))
    (command-error-default-function data context caller)))

(setq command-error-function #'my-command-error-function)

(xterm-mouse-mode 1)

(menu-bar-mode -1)

(defun doNothing()(interactive)) ;; remove beep on M-z for BetterAltSpace
(global-set-key (kbd "M-z") #'doNothing)

(xclip-mode 1)

;; heya cutie <3

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(xclip)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
