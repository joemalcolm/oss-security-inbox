X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/19/8
Message-ID: <4e408aec-0c8d-4bd7-a608-e708706a615c@jvf.cc>
Date: Thu, 19 Nov 2026 10:15:37 -0800
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-053] Networking-Generic-Switch: Does not sanitize all inputs (CVE-2026-131919)
Content-Type: text/plain; charset=utf-8

=====================================================================
OSSA-2026-053: Networking-Generic-Switch does not sanitize all inputs
=====================================================================

:Date: November 19, 2026
:CVE: CVE-2026-131919


Affects
~~~~~~~
- Networking-generic-switch: <8.0.2, >=9.0.0 <9.1.2, >=10.0.0 <10.1.1, 
==10.2.0


Description
~~~~~~~~~~~
Jay Faulkner reported a vulnerability in Networking-Generic-Switch. By 
setting specially crafted metadata in an upstream service, such as 
Ironic, an authenticated user may compel Networking-Generic-Switch to 
execute arbitrary switch commands.



Patches
~~~~~~~
- https://review.opendev.org/1016499 (2023.1/antelope (unmaintained))
- https://review.opendev.org/1016498 (2024.1/caracal (unmaintained))
- https://review.opendev.org/1016496 (2025.1/epoxy (unmaintained))
- https://review.opendev.org/1016495 (2025.2/flamingo (stable))
- https://review.opendev.org/1016494 (2026.1/gazpacho (stable))
- https://review.opendev.org/1016493 (2026.2/hibiscus (stable))
- https://review.opendev.org/1016492 (2027.1/indri (development))


Credits
~~~~~~~
- Jay Faulkner from G-Research OSS


References
~~~~~~~~~~
- https://launchpad.net/bugs/2163364
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-131919


Notes
~~~~~
- Unmaintained branches (2025.1, 2024.1, 2023.1) are not actively
   maintained and no longer receive new releases, but a patch is being
   provided as a convenience.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)
