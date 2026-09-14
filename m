X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/1
Message-ID: <87tsnskt3e.fsf@athena.silentflame.com>
Date: Mon, 14 Sep 2026 11:47:17 +0100
From: Sean Whitton <spwhitton@...hitton.name>
To: oss-security@...ts.openwall.com
Cc: Eli Zaretskii <eliz@....org>, Michael Albinus <michael.albinus@....de>, Stefan Monnier <monnier@....umontreal.ca>, João Távora <joaotavora@...il.com>, Bas Alberts <anticomputer@...hub.com>
Subject: Emacs arbitrary code execution: incomplete fix for CVE-2024-53920
Content-Type: text/plain; charset=utf-8

Bas Alberts of the GitHub Security Lab discovered that the fix for
CVE-2024-53920, an arbitrary code execution flaw in Emacs, was
incomplete.  Viewing or editing untrusted text files in modes other than
Emacs Lisp mode can also permit arbitrary code execution.  For example:

    #!/usr/bin/perl
    # -*- mode: perl; mode: flymake -*-
    BEGIN { system("touch uh_oh.txt"); }

This problem affects all Emacs versions affected by CVE-2024-53920.
This means Emacs 24 and newer, and possibly also older versions.

A minimal fix, attached, is queued up for release with Emacs 31.2.
We (the Emacs upstream maintainers) don't expect to backport the fix to
older Emacs releases ourselves.

This fix is more aggressive than the one we have on our master branch in
that it also implicitly disables the Eglot flymake backend.
I think we will be able to undo that before releasing Emacs 31.2, but I
wanted to get this notification out as soon as possible.

I would be grateful if someone could assign us a CVE for this issue.

-- >8 --
From: Stefan Monnier <monnier@....umontreal.ca>
Date: Mon, 14 Sep 2026 11:30:39 +0100
Subject: [PATCH] flymake.el: Generalize trusted-content-p check to all
 backends

Minimal safe backport of this change:

    Author:     Stefan Monnier <monnier@....umontreal.ca>
    AuthorDate: Fri Sep 11 21:48:55 2026 -0400

      flymake.el: Generalize trusted-content-p check to all backends

      Rather than have each and every backend check
      'trusted-content-p' if it feels necessary, implement the check
      once and forall in flymake.el and provide a wat for backends to
      skip that test, so we replace an "opt-in" with an "opt-out"
      that's a bit more secure by design.

      * lisp/progmodes/elisp-mode.el (elisp-flymake-byte-compile):
      Move 'trusted-content-p' to flymake.el.
      * lisp/progmodes/flymake.el (flymake--run-backend):
      Move 'trusted-content-p' from elisp-mode.el.

      * lisp/progmodes/eglot.el (eglot-flymake-backend): Mark as safe.

* lisp/progmodes/flymake.el (flymake--run-backend): Copy
trusted-content-p check from elisp-mode.el.  Do not merge to
master.
---
 lisp/progmodes/flymake.el | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/lisp/progmodes/flymake.el b/lisp/progmodes/flymake.el
index fff42696761..40761031dc2 100644
--- a/lisp/progmodes/flymake.el
+++ b/lisp/progmodes/flymake.el
@@ -1271,8 +1271,13 @@ with a report function."
             (flymake--state-disabled state) nil
             (flymake--state-reported-p state) nil))
     (condition-case-unless-debug err
-        (apply backend (flymake-make-report-fn backend run-token)
-               args)
+        (if (or (trusted-content-p) (function-get backend 'flymake-always-safe))
+            (apply backend (flymake-make-report-fn backend run-token)
+                   args)
+          (message "Disabling %S in %s (untrusted content)"
+                   backend (buffer-name))
+          (user-error "Disabling %S in %s (untrusted content)"
+                      backend (buffer-name)))
       (error
        (flymake--disable-backend backend err)))))
-- 
Sean Whitton
