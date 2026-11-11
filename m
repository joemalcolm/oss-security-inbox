X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/7
Message-ID: <87wlqjzoxd.fsf@athena.silentflame.com>
Date: Wed, 11 Nov 2026 09:40:30 +0000
From: Sean Whitton <spwhitton@...hitton.name>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Cc: Eli Zaretskii <eliz@....org>, Stefan Monnier <monnier@....umontreal.ca>, xeroday.sec@...il.com, 82213@...bugs.gnu.org
Subject: Emacs .dir-locals.el arbitrary code execution
Content-Type: text/plain; charset=utf-8

X3r0Day discovered that Emacs 31.1 did not adequately validate the
contents of .dir-locals.el before executing code there.

Emacs 30.2 is unaffected.

A patch from Stefan Monnier is attached and will be included in our
upcoming 31.2 release.

For full details on the vulnerability please see
<https://debbugs.gnu.org/82213>.

-- >8 --
From: Stefan Monnier <monnier@....umontreal.ca>

diff --git a/lisp/files.el b/lisp/files.el
index 4cb1ac67629..eec547657d5 100644
--- a/lisp/files.el
+++ b/lisp/files.el
@@ -3565,44 +3565,42 @@ magic-mode-regexp-match-limit
   "Upper limit on `magic-mode-alist' regexp matches.
 Also applies to `magic-fallback-mode-alist'.")
 
-(defun set-auto-mode--find-matching-alist-entry (alist name case-insensitive)
+(defun set-auto-mode--from-matching-alist-entry ( alist name case-insensitive
+                                                  keep-mode-if-same dir-local)
   "Find first matching entry in ALIST for file NAME.
 
 If CASE-INSENSITIVE, the file system of file NAME is case-insensitive."
-  (let (mode)
-    (while name
-      (let ((newmode
-             (if case-insensitive
-                 ;; Filesystem is case-insensitive.
-                 (let ((case-fold-search t))
-                   (assoc-default name alist 'string-match))
-               ;; Filesystem is case-sensitive.
-               (or
-                ;; First match case-sensitively.
-                (let ((case-fold-search nil))
-                  (assoc-default name alist 'string-match))
-                ;; Fallback to case-insensitive match.
-                (and auto-mode-case-fold
-                     (let ((case-fold-search t))
-                       (assoc-default name alist 'string-match)))))))
-        (when newmode
-          (when mode
-            ;; We had already found a mode but in a (REGEXP MODE t)
-            ;; entry, so we still have to run MODE.  Let's do it now.
-            ;; FIXME: It's kind of ugly to run the function here.
-            ;; An alternative could be to return a list of functions and
-            ;; callers.
-            (set-auto-mode-0 mode t))
-          (setq mode newmode))
-        (if (and newmode
-                 (not (functionp newmode))
-                 (consp newmode)
-                 (cadr newmode))
-            ;; It's a (REGEXP MODE t): Keep looking but remember the MODE.
-            (setq mode (car newmode)
-                  name (substring name 0 (match-beginning 0)))
-          (setq name nil))))
-    mode))
+  (let (was-set)
+    (while
+        (let* ((newmode
+                (if case-insensitive
+                    ;; Filesystem is case-insensitive.
+                    (let ((case-fold-search t))
+                      (assoc-default name alist 'string-match))
+                  ;; Filesystem is case-sensitive.
+                  (or
+                   ;; First match case-sensitively.
+                   (let ((case-fold-search nil))
+                     (assoc-default name alist 'string-match))
+                   ;; Fallback to case-insensitive match.
+                   (and auto-mode-case-fold
+                        (let ((case-fold-search t))
+                          (assoc-default name alist 'string-match))))))
+               ;; Extract MODE from (REGEXP MODE t) entries.
+               (mode-t (when (and (not (functionp newmode))
+                                  (consp newmode)
+                                  (cadr newmode))
+                         (setq name (substring name 0 (match-beginning 0)))
+                         (car newmode)))
+               (mode (or mode-t newmode)))
+          (when newmode
+            (if (and dir-local
+                     (not (set-auto-mode--dir-local-valid-p mode)))
+                (message "Ignoring invalid mode `%S'" mode)
+              (set-auto-mode-0 mode keep-mode-if-same)
+              (setq was-set t))
+            mode-t)))
+    was-set))
 
 (defun set-auto-mode--apply-alist (alist keep-mode-if-same dir-local)
   "Helper function for `set-auto-mode'.
@@ -3614,8 +3612,7 @@ set-auto-mode--apply-alist
 DIR-LOCAL non-nil means this call is via directory-locals, and
 extra checks should be done."
   (if buffer-file-name
-      (let (mode
-            (name buffer-file-name)
+      (let ((name buffer-file-name)
             (remote-id (file-remote-p buffer-file-name))
             (case-insensitive-p (file-name-case-insensitive-p
                                  buffer-file-name)))
@@ -3625,15 +3622,8 @@ set-auto-mode--apply-alist
         (when (and (stringp remote-id)
                    (string-match (regexp-quote remote-id) name))
           (setq name (substring name (match-end 0))))
-        (setq mode (set-auto-mode--find-matching-alist-entry
-                    alist name case-insensitive-p))
-        (when (and dir-local mode
-                   (not (set-auto-mode--dir-local-valid-p mode)))
-          (message "Ignoring invalid mode `%S'" mode)
-          (setq mode nil))
-        (when mode
-          (set-auto-mode-0 mode keep-mode-if-same)
-          t))))
+        (set-auto-mode--from-matching-alist-entry
+         alist name case-insensitive-p keep-mode-if-same dir-local))))
 
 (defun set-auto-mode--dir-local-valid-p (mode)
   "Say whether MODE can be used in a .dir-local.el `auto-mode-alist'."
-- 
Sean Whitton
