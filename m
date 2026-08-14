X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/14/1
Message-ID: <158ebf83-d3bb-37bc-f02f-1449f439fb0e@iki.fi>
Date: Fri, 14 Aug 2026 13:26:37 +0300 (EEST)
From: Harry Sintonen <sintonen@....fi>
To: oss-security@...ts.openwall.com
Subject: Info-ZIP test option (-T) command injection
Content-Type: text/plain; charset=utf-8

Info-ZIP test option command injection
======================================
The latest version of this advisory is available at:
https://sintonen.fi/advisories/infozip-test-option-command-injection.txt


Description
-----------

Info-ZIP 3.0 has the '-T' option to test ZIP file integrity. Unfortunately this option
contains a command injection (CWE-78) vulnerability. This vulnerability will allow an
attacker who controls the archive file name to execute arbitrary commands in the context
of the user executing the "zip -T <filename>" command.


Impact
------

The impact of this vulnerability depends on the context where the "zip -T <filename>"
command is executed. The most impacted are automated systems that perform the command
in response to an external party providing a zip file (such as a website upload form or
message attachment or similar).


Proof-of-Concept
----------------

This Proof-of-Concept demonstrates the Info-ZIP command injection vulnerability:

1. echo foo > foo; zip "';id >poc;'.zip" foo

2. zip -T "';id >poc;'.zip"

3. cat poc


Platforms affected
------------------

General UNIX Info-ZIP is affected. Other platforms might also be affected, but were
not tested.

zip command in macOS is not affected.


Versions affected
-----------------

Version 1.1 and earlier are not affected (functionality not implemented yet).
Versions 2.2 to 3.0 (inclusive) are affected.
Unreleased beta versions 3.1a, 3.1b, 3.1c are affected.


Recommendations to vendor
-------------------------

Do not use the system() function to execute commands. Rather, always use posix_spawn()
when available, and (v)fork() + execve() as a fallback. Alternatively, quote the
command line options in a way that doesn't allow escaping the quoting.


Mitigations
-----------

Update to Info-ZIP version that includes a fix (*). If updating zip is not possible,
replace the use of "zip -T" with "unzip -t" or other means of validating the ZIP
archive integrity.

*) https://sources.debian.org/data/main/z/zip/3.0-16/debian/patches/fix-command-injection.patch


Timeline
--------

2026-07-31  Discovered the vulnerability and reported it to Info-ZIP via the project bug
             tracker.
2026-07-31  Identified that Apple appears to have fixed the very issue in 2008 already in
             https://github.com/apple-oss-distributions/zip/blob/zip-11.1/zip/patch-Apple
             Unfortunately it appears this fix never migrated to upstream.
2026-07-31  Reported the issue again over email.
2026-07-31  Requested CVE ID from MITRE CNA-LR (CAN-2026-2034879).
2026-08-07  Debian bug #1143866 submitted by Info-ZIP project with a fix.
2026-08-07  zip 3.0-16 with a fix released in Debian sid.
2026-08-14  Debian DSA 6439-1 released.
2026-08-14  This advisory released.
