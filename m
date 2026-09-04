X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/04/6
Message-ID: <875x0kgbne.fsf@gentoo.org>
Date: Fri, 04 Sep 2026 18:38:13 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Vulnerability fixes in util-linux-2.42.3
Content-Type: text/plain; charset=utf-8

+util-linux 2.42.3 Release Notes
+===============================
+
+Security fixes:
+
+ CVE-2026-76642 - mount(8) post-mount hooks execute after helper failure.
+   When an external mount.<type> helper exits nonzero, post-mount hooks
+   (X-mount.idmap, X-mount.owner/group/mode) still execute as if the
+   mount had succeeded, allowing privileged operations on the
+   pre-existing target filesystem.
+
+ CVE-2026-78410 - mount(8) TOCTOU race on source path.
+   In restricted (SUID, non-root) mode, the source path is
+   canonicalized with realpath() as euid=0, following symlinks through
+   user-writable directories.  Additionally, open_tree() follows
+   symlinks in intermediate path components.  A local attacker can
+   redirect a privileged mount or post-mount ownership change to an
+   arbitrary path.
+
+ CVE-2026-78409 - mount(8) X-mount.subdir symlink escape.
+   The open_tree() call used to open a subdirectory on a detached mount
+   follows symlinks in intermediate path components, allowing escape
+   from the detached tree.
+
+ CVE-2026-78408 - nsenter(1), unshare(1) file descriptor leak.
+   File descriptors in nsenter and unshare were not created with
+   O_CLOEXEC, potentially leaking them across exec.  Added O_CLOEXEC
+   as defense in depth.
+
+ wall(1), write(1) - hostname escape sequence injection.
+   The CVE-2024-28085 fix sanitized only message bodies; the banner
+   headers still interpolated the system hostname without sanitization.
+   An unprivileged user can inject terminal escape sequences via a user
+   namespace hostname.
+   Additional fix for CVE-2024-28085.
+   Reported-by: Skyler Ferrante

TOCTOUs continue to be flavour of the month.

thanks,
sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
