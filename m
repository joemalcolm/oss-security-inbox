Received: (qmail 9558 invoked by uid 550); 23 Jun 2024 09:04:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28474 invoked from network); 23 Jun 2024 08:39:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1719131982; bh=Jh4fwpi6qRCoCsn0evSe4dfAjx3vClun0Ug9Mxp8YuQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=eRSSJby7KfYT5kEtb9aU6dH9B2VqCslRyTHWdJfeA54RaBopa2YAz034s+FFhCqJA
	 xNunbyEvzTEpgNVWcYXEy1spKXpuV0CQsfzpgvN8dcfMfZCPPxxhUwe7JjI0QCfh3j
	 pxKkAOFwgEXE/OgRUX5Fl0wVftxthsSbLMPJVXLVn5jFHfiIHossi6hXH5U/4qFMgP
	 PO+z/zI+4x2P321ywBikuSyWCJWJa1rVHxE53XU0RTunv7Q9yGq1nRtrmb6BSKkS9E
	 GDApt6xDYO41JH7Y+BrjHqaKWtMT1KQLFJuIhS8oTXmagA78eUfEH/q2/eA3FYWbjj
	 HSFWwQ4pdVlVg==
From: Ihor Radchenko <yantar92@posteo.net>
To: oss-security@lists.openwall.com
Date: Sun, 23 Jun 2024 08:41:15 +0000
Message-ID: <87wmmguk44.fsf@localhost>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Subject: [oss-security] Arbitrary shell command evaluation in Org mode (GNU Emacs)

--=-=-=
Content-Type: text/plain

Hi,

Here is a vulnerability in Emacs Org mode.

Reproducer is the following .org file:

#+LINK: shell %(shell-command-to-string)
[[shell:touch ~/hacked.txt]]

When sent by email and previewed in Emacs or when opened in Emacs as a
file, the above Org file will evaluate "touch ~/hacked.txt" without any
prompts.

The fix is attached. It is against Org mode git repository.
The fix can be applied to older versions of Org mode/Emacs if deemed
necessary.

The fix has been included into Emacs 29.4 and Org 9.7.5 (released
yesterday).


--=-=-=
Content-Type: text/x-patch
Content-Disposition: inline;
 filename=v3-0001-org-link-expand-abbrev-Do-not-evaluate-arbitrary-.patch

From d1f32835c875d79ec373cc27eb0fa2ef0dd61984 Mon Sep 17 00:00:00 2001
Message-ID: <d1f32835c875d79ec373cc27eb0fa2ef0dd61984.1718785968.git.yantar92@posteo.net>
From: Ihor Radchenko <yantar92@posteo.net>
Date: Tue, 18 Jun 2024 13:06:44 +0200
Subject: [PATCH v3] org-link-expand-abbrev: Do not evaluate arbitrary unsafe
 Elisp code

* lisp/ol.el (org-link-expand-abbrev): Refuse expanding %(...) link
abbrevs that specify unsafe function.  Instead, display a warning, and
do not expand the abbrev.  Clear all the text properties from the
returned link, to avoid any potential vulnerabilities caused by
properties that may contain arbitrary Elisp.
---
 lisp/ol.el | 40 +++++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/lisp/ol.el b/lisp/ol.el
index 7a7f4f558..8a556c7b9 100644
--- a/lisp/ol.el
+++ b/lisp/ol.el
@@ -1152,17 +1152,35 @@ (defun org-link-expand-abbrev (link)
       (if (not as)
 	  link
 	(setq rpl (cdr as))
-	(cond
-	 ((symbolp rpl) (funcall rpl tag))
-	 ((string-match "%(\\([^)]+\\))" rpl)
-	  (replace-match
-	   (save-match-data
-	     (funcall (intern-soft (match-string 1 rpl)) tag))
-	   t t rpl))
-	 ((string-match "%s" rpl) (replace-match (or tag "") t t rpl))
-	 ((string-match "%h" rpl)
-	  (replace-match (url-hexify-string (or tag "")) t t rpl))
-	 (t (concat rpl tag)))))))
+        ;; Drop any potentially dangerous text properties like
+        ;; `modification-hooks' that may be used as an attack vector.
+        (substring-no-properties
+	 (cond
+	  ((symbolp rpl) (funcall rpl tag))
+	  ((string-match "%(\\([^)]+\\))" rpl)
+           (let ((rpl-fun-symbol (intern-soft (match-string 1 rpl))))
+             ;; Using `unsafep-function' is not quite enough because
+             ;; Emacs considers functions like `genenv' safe, while
+             ;; they can potentially be used to expose private system
+             ;; data to attacker if abbreviated link is clicked.
+             (if (or (eq t (get rpl-fun-symbol 'org-link-abbrev-safe))
+                     (eq t (get rpl-fun-symbol 'pure)))
+                 (replace-match
+	          (save-match-data
+	            (funcall (intern-soft (match-string 1 rpl)) tag))
+	          t t rpl)
+               (org-display-warning
+                (format "Disabling unsafe link abbrev: %s
+You may mark function safe via (put '%s 'org-link-abbrev-safe t)"
+                        rpl (match-string 1 rpl)))
+               (setq org-link-abbrev-alist-local (delete as org-link-abbrev-alist-local)
+                     org-link-abbrev-alist (delete as org-link-abbrev-alist))
+               link
+	       )))
+	  ((string-match "%s" rpl) (replace-match (or tag "") t t rpl))
+	  ((string-match "%h" rpl)
+	   (replace-match (url-hexify-string (or tag "")) t t rpl))
+	  (t (concat rpl tag))))))))
 
 (defun org-link-open (link &optional arg)
   "Open a link object LINK.
-- 
2.45.1


--=-=-=
Content-Type: text/plain


-- 
Ihor Radchenko // yantar92,
Org mode contributor,
Learn more about Org mode at <https://orgmode.org/>.
Support Org development at <https://liberapay.com/org-mode>,
or support my work at <https://liberapay.com/yantar92>

--=-=-=--
