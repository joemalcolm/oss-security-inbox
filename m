X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/10
Message-ID: <87ecfel40o.fsf@gentoo.org>
Date: Mon, 31 Aug 2026 16:10:31 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: libksba-1.8.1 fixes a possible CMS parser infinite loop
Content-Type: text/plain; charset=utf-8

From libksba-1.8.0 vs libksba-1.8.1:

@@ -1,3 +1,11 @@
+Noteworthy changes in version 1.8.1 (2026-08-24) [C24/A16/R1]
+------------------------------------------------
+
+ * Fix CMS parser to avoid possible infinite loop.  [T8361]
+
+ Release-info: https://dev.gnupg.org/T8253

The fix is:

commit 06720f9b16a172404f49089cbb6eb95e4344f562
Author:     NIIBE Yutaka <gniibe@...j.org>
AuthorDate: Thu Jul 30 14:18:27 2026 +0900
Commit:     NIIBE Yutaka <gniibe@...j.org>
CommitDate: Thu Jul 30 14:28:38 2026 +0900

    Fix CMS parser to avoid possible infinite loop.

    * src/cms-parser.c (_ksba_cms_parse_signed_data_part_2): Finish
    when detecting no progress.
    (_ksba_cms_parse_enveloped_data_part_1): Likewise.

    --

    Found by AISLE in partnership with Red Hat.

    Reported by: Jakub Jelen
    GnuPG-bug-id: 8361
    Signed-off-by: NIIBE Yutaka <gniibe@...j.org>

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
