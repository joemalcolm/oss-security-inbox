X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/3
Message-ID: <cdac64dc-04e5-44d4-99fe-52a41fa088f0@gmail.com>
Date: Tue, 17 Nov 2026 08:10:15 -0500
From: Brian Rosmaita <rosmaita.fossdev@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-051] Cinder: Local Privilege Escalation in LIO iSCSI driver (CVE-2026-pending)
Content-Type: text/plain; charset=utf-8

====================================================================
OSSA-2026-051: Local Privilege Escalation in Cinder LIO iSCSI driver
====================================================================

:Date: November 17, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Cinder: <27.1.1, >=28.0.0 <28.1.1, >=29.0.0 <29.1.1


Description
~~~~~~~~~~~
Sami Yessou, cloud engineer at switch.ch, reported a vulnerability
in Cinder.  By making an os-initialize_connection request with an
IQN that includes a path traversal as part of the connector's
initiator element, an authenticated user with a 'member' role may
create or overwrite files in the volume host filesystem.  Only
cinder-volume hosts using the LIO iSCSI target driver are affected.
This target driver is typically used with the LVM volume driver.



Patches
~~~~~~~
- https://review.opendev.org/1015676 (2025.1/epoxy (unmaintained))
- https://review.opendev.org/1015654 (2025.2/flamingo)
- https://review.opendev.org/1015486 (2026.1/gazpacho)
- https://review.opendev.org/1015485 (2026.2/hibiscus)
- https://review.opendev.org/1015478 (2027.1/indri (development))


Credits
~~~~~~~
- Sami Yessou from switch.ch


References
~~~~~~~~~~
- https://launchpad.net/bugs/2163562
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-pending


Notes
~~~~~
- A patch is available for the unmaintained/2025.1 branch as a courtesy.
   Unmaintained branches do not receive updated releases.
- A CVE identifier was requested from MITRE for this vulnerability on
   2026-11-12. The CVE will be added to this advisory by errata once
   assigned.


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
