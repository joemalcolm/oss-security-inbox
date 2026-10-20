X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/17
Message-ID: <d1756656-3edc-4015-8c20-c340cac2378d@gmail.com>
Date: Tue, 20 Oct 2026 12:26:37 -0400
From: Brian Rosmaita <rosmaita.fossdev@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-045] Cinder: Cross-project information disclosure in Cinder Messages API (CVE-2026-93856)
Content-Type: text/plain; charset=utf-8

==========================================================================
OSSA-2026-045: Cross-project information disclosure in Cinder Messages API
==========================================================================

:Date: October 20, 2026
:CVE: CVE-2026-93856


Affects
~~~~~~~
- Cinder: >=9.0.0 <26.3.1, ==27.0.0, ==28.0.0, ==29.0.0


Description
~~~~~~~~~~~
Yuliang Xiao, an independent reporter, and Chen YuXiang of the
Institute of Computing Technology, Chinese Academy of Sciences
independently reported a vulnerability in Cinder's messages API.
A non-admin user with the project-scoped 'member' or 'reader' role
making the Block Storage API v3.3 "List messages" call finds the
non-expired user messages for other projects included in the
response, resulting in the leakage of UUIDs of resources owned by
other projects in addition to the user message about the other
projects' resources (which, by design, are sanitized generic
messages). All Cinder deployments are affected.



Patches
~~~~~~~
- https://review.opendev.org/1011490 (2025.1/epoxy)
- https://review.opendev.org/1011489 (2025.2/flamingo)
- https://review.opendev.org/1011488 (2026.1/gazpacho)
- https://review.opendev.org/1011487 (2026.2/hibiscus)
- https://review.opendev.org/1011486 (2027.1/indri (development))


Credits
~~~~~~~
- Yuliang Xiao (CVE-2026-93856)
- Chen YuXiang from Institute of Computing Technology, Chinese
   Academy of Sciences (CVE-2026-93856)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2160671
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-93856


Notes
~~~~~
- Although the UUIDs of resources of other projects are leaked, a
   project_id is not included in the response, so someone wishing to
   exploit the leak must find an independent means of correlating each
   resource ID with its associated project.
- The user messages API was introduced during the Newton development
   cycle and first appeared in Cinder 9.0.0.
- The Cinder Contributor Guide contains more information about User
   Messages:
   https://docs.openstack.org/cinder/latest/contributor/user_messages.html
- Cinder user messages are controlled by the configuration options
   ``message_ttl`` (default: 30 days) and ``message_reap_interval``
   (default: 24 hours).


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
