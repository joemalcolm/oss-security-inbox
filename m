X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/1
Message-ID: <CAOnRL-WBJFx70z-_aCbnyRWvAgUkxvcJPmqQ-YAcsLzuT=L7Dw@mail.gmail.com>
Date: Mon, 28 Sep 2026 22:34:55 +0500
From: Muhammad Arslan Official <arslanqofficial@...il.com>
To: oss-security@...ts.openwall.com
Subject: Moodle LMS 3.9.2: authenticated file-upload validation bypass (CWE-434) leading to RCE under misconfiguration
Content-Type: text/plain; charset=utf-8

Hello,

I am disclosing a vulnerability in Moodle LMS and requesting a CVE ID, as
the
vendor (a registered CNA) has not assigned one after coordinated disclosure,
and a MITRE CNA-LR request (CAN-2026-2032565) has been under review for ~3
months without response.

Product: Moodle LMS
Confirmed version: 3.9.2 (other versions not yet verified)
Class: CWE-434 / CWE-20 - Unrestricted file upload / improper input
validation
Privilege required: authenticated, Student-level account
Vendor status: reported via Bugcrowd 2025-08-31, triaged P3 (2025-09-06);
vendor acknowledged the behaviour but has not assigned a CVE or committed
to a
code fix.

Summary
-------
The user profile picture upload is intended to accept images only and
enforces
this through multiple server- and client-side validation layers. All of
these
can be bypassed, allowing an authenticated Student-level user to store a
non-image, server-executable file (a PHP web shell). The bypass combines a
spoofed Content-Type, a non-image executable extension, a valid image magic-
byte header prepended to the payload, and manipulation of the client-side
accepted_types control.

Impact
------
The validation bypass (a code-level defect) is independent of server config.
Where the Moodle data directory (moodledata) is located inside the web root
-
a configuration Moodle documents as forbidden but which occurs in practice -
the stored file is directly reachable and executes, resulting in remote code
execution in the web-server context. Even in hardened configurations, the
stored payload is a durable chaining primitive for any file-inclusion flaw.

Disclosure timeline
-------------------
2025-08-31  Reported to vendor via Bugcrowd
2025-09-06  Triaged and accepted P3 by Bugcrowd
2025-11 to 2026-05  Vendor technical discussion; no fix commitment, no CVE
2026-06-27  MITRE CNA-LR request filed (CAN-2026-2032565) - still under
review
2026-09     Public disclosure via this post

I am withholding the full step-by-step exploit chain and PoC here, since no
patch exists, but can provide complete technical documentation (intercepted
requests, reproduction steps, command-execution evidence) to coordinators or
the vendor on request.

Requesting a CVE ID for this issue.

Regards,
Muhammad Arslan Qureshi (unlitshadow)

