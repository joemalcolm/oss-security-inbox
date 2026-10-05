X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/6
Message-ID: <85f79b2d-d477-4734-8fd8-940d4130fc9d@redhat.com>
Date: Mon, 5 Oct 2026 17:18:52 +0200
From: Zdenek Dohnal <zdohnal@...hat.com>
To: oss-security@...ts.openwall.com
Subject: [cups] Multiple security fixes in incoming new version 2.4.20
Content-Type: text/plain; charset=utf-8

Hi all!

due heavy load of security reports and long queues of Github CNA we had 
re-evaluate our security policies to the following points:

- we do embargoes for vulnerabilities with CVSS score > 7.0, which will 
be announced on proper security lists

- we use GHSA ids for vulnerabilities under CVSS score 7.0, and we 
commit the fix and publish the advisory without embargo - this point was 
applied because of long queue for getting CVE id and severity of fixes 
was not severe to go via full embargo process. Those vulnerabilities 
will be repeated on oss-security list right before new version release, 
with links to the relevant advisories where are links to the patching 
commits. Some of the issues might have CVE ids, because the id was assigned

For more details check SECURITY.md in CUPS project.

The new soon-to-be version 2.4.20 includes fixes:

   SECURITY-5.7: CVE-2026-55480: copy_model() creates a predictable PPD 
tempfile without O_EXCL/O_NOFOLLOW (CVE-2026-55480)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-jj94-x3qh-ffp9

   SECURITY-5.5: Unauthenticated read-only IPP attribute filter bypass 
in cupsd leads to persistent denial of service (and job-status forgery) 
(GHSA-7j85-5r23-xhvh)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-7j85-5r23-xhvh

   SECURITY-5.3: CVE-2026-61702: root-side banner file disclosure 
(CVE-2026-61702)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-gq9p-4w7m-2f5g

   SECURITY-4.6: CUPS: malformed IPP attribute names bypass 
CVE-2026-34980 mitigations (GHSA-w9hj-hq9p-m7f6)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-w9hj-hq9p-m7f6

   SECURITY-4.3: Heap out-of-bounds read in cupsUTF32ToUTF8() via 
missing source-length bound — reachable from SNMP supply-description 
parsing (backend/snmp-supplies.c) (CVE-2026-87875)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-559w-7676-3xrq

   SECURITY-4.1: NULL pointer dereference in cupsdCheckJobs crashes 
cupsd after temporary printer deletion (GHSA-qqm8-4q5h-jg55)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-qqm8-4q5h-jg55

   SECURITY-3.4: `job-presets-supported` member values allow PPD filter 
injection and code execution as lp under some circumstances 
(GHSA-fw7q-ww8w-phx8)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-fw7q-ww8w-phx8

   SECURITY-3.3: Unauthenticated Denial of Service in cupsd via Repeated 
IPP Group Tags (GHSA-wjc4-qhjr-5m5x)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-wjc4-qhjr-5m5x

   SECURITY-3.3: CUPS ipp backend status-line injection can update queue 
PPD and lead to conditional RCE as lp via foomatic-rip (CVE-2026-55453)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-7hqf-mfhx-7r3v

   SECURITY-3.0: ZDI-CAN-33033: OpenPrinting CUPS Scheduler 
Configuration Time-Of-Check Time-Of-Use Local Privilege Escalation 
Vulnerability (GHSA-gj33-wxpv-6fgg)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-gj33-wxpv-6fgg

   SECURITY-3.0: CVE-2026-27447 follow-up: remaining case-insensitive 
username matching in scheduler side paths (CVE-2026-87876)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-r8jp-q6fh-g5r2

   SECURITY-2.5: Argument injection in mailto notifier allows 
unauthenticated remote code execution (CVE-2026-105326)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-r4wf-366f-f6g3

   SECURITY-2.5: CUPS fax option values bypass the CVE-2026-34980 
control-character sanitizer (incomplete fix) (CVE-2026-55467)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-69qc-prxg-h2c7

   SECURITY-2.3: Double-free in cupsd class management via 
CUPS-Add-Modify-Class and CUPS-Delete-Class (GHSA-pwg4-pv39-8c22)
https://github.com/OpenPrinting/cups/security/advisories/GHSA-pwg4-pv39-8c22


Have a nice day!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

