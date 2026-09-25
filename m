X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/25
Message-ID: <CAKTWQS84gn2uNvJzbto9=9aCM0VsxS93tB-g4LMaGjfORZBsEg@mail.gmail.com>
Date: Fri, 25 Sep 2026 22:26:57 +0000
From: Haitam Lazaar <contact.lazaar.haitam@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-100310: GNU libextractor < 1.16 Privilege Escalation via LIBEXTRACTOR_PREFIX
Content-Type: text/plain; charset=utf-8

Hello oss-security,

An untrusted search path vulnerability leading to Local Privilege
Escalation (LPE) was identified in GNU libextractor for versions prior
to 1.16. The vulnerability has been assigned CVE-2026-100310.

Description:
GNU libextractor before 1.16 uses getenv("LIBEXTRACTOR_PREFIX") in
`src/main/extractor_plugpath.c` (`get_installation_paths()`) to
determine plugin search paths without checking whether the calling
process is running with elevated privileges (setuid/setgid).

Because this environment variable is not an `LD_*` variable, the
dynamic linker does not strip it from the environment of setuid
binaries. A local unprivileged attacker can set `LIBEXTRACTOR_PREFIX`
to a directory containing a malicious shared object, which is then
loaded and executed with elevated privileges (e.g., euid=0) when any
setuid application linked against libextractor runs. An attacker can
call `setuid(0)` from within the shared library's constructor to
achieve full root privilege escalation.

Affected Versions:
libextractor >= 0, < 1.16

Fix:
The issue is patched in GNU libextractor version 1.16.

References:
* CVE Record: https://www.cve.org/CVERecord?id=CVE-2026-100310
* VulnCheck Advisory:
https://www.vulncheck.com/advisories/gnu-libextractor-before-1.16-privilege-escalation-via-libextractor-prefix
* PoC & Technical Details: https://github.com/Haitam-lazaar/libextractor-privesc
* Upstream Patch:
https://git.gnunet.org/gnunet/libextractor/commit/6edfa653c048800e24a17f7e8cc2bb42659b8d01.html
* GNU libextractor: https://www.gnu.org/software/libextractor/

Regards,
Haitam Lazaar

