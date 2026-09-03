X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/03/2
Message-ID: <df56d1a1-101c-4fd8-b1b9-04ed09cb45d3@gmail.com>
Date: Thu, 3 Sep 2026 09:07:27 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-038] OpenStack Glance: Multiple SSRF vulnerabilities in web-download and HTTP image APIs (CVE-2026-71196, CVE-2026-71197, CVE-2026-71198)
Content-Type: text/plain; charset=utf-8

=======================================================================================
OSSA-2026-038: Multiple SSRF vulnerabilities in Glance web-download and 
HTTP image APIs
=======================================================================================

:Date: September 03, 2026
:CVE: CVE-2026-71196,
       CVE-2026-71197,
       CVE-2026-71198


Affects
~~~~~~~
- Glance: >=16.0.0 <30.2.1, >=31.0.0 <31.1.1, >=32.0.0 <32.0.1


Description
~~~~~~~~~~~
Sergey Kanibor (Luntry), Sami Yessou (switch.ch), and Abhishek Kekane
(Red Hat) reported three related SSRF vulnerabilities in OpenStack
Glance.

The web-download import method ships with insecure default filtering
that permits authenticated users to fetch arbitrary internal URLs,
including cloud metadata endpoints. The URI validator does not perform
DNS resolution before applying host filters, enabling bypass via
attacker-controlled domains and DNS rebinding attacks. The HTTP image
location API lacks host filtering entirely when the HTTP store is
enabled, and fetched content is stored as image data accessible for
download, converting blind SSRF into full-read exfiltration.

All Glance deployments using the web-download import method or HTTP
image location APIs are affected.



Patches
~~~~~~~
- https://review.opendev.org/1003822 (2025.1/epoxy)
- https://review.opendev.org/1003823 (2025.1/epoxy)
- https://review.opendev.org/1003824 (2025.1/epoxy)
- https://review.opendev.org/1003825 (2025.1/epoxy)
- https://review.opendev.org/1003816 (2025.2/flamingo)
- https://review.opendev.org/1003817 (2025.2/flamingo)
- https://review.opendev.org/1003818 (2025.2/flamingo)
- https://review.opendev.org/1003819 (2025.2/flamingo)
- https://review.opendev.org/1003812 (2026.1/gazpacho)
- https://review.opendev.org/1003813 (2026.1/gazpacho)
- https://review.opendev.org/1003814 (2026.1/gazpacho)
- https://review.opendev.org/1003815 (2026.1/gazpacho)
- https://review.opendev.org/1003805 (2026.2/hibiscus (development))
- https://review.opendev.org/1003806 (2026.2/hibiscus (development))
- https://review.opendev.org/1003807 (2026.2/hibiscus (development))
- https://review.opendev.org/1003808 (2026.2/hibiscus (development))


Credits
~~~~~~~
- Sergey Kanibor from Luntry (CVE-2026-71196, CVE-2026-71197)
- Sami Yessou from switch.ch (CVE-2026-71196)
- Abhishek Kekane from Red Hat (CVE-2026-71198)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2158998
- https://launchpad.net/bugs/2158999
- https://launchpad.net/bugs/2161330
- https://launchpad.net/bugs/2160020
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71196
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71197
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-71198


Notes
~~~~~
- All four commits in each patch set are interdependent and must be
   applied together, in the order listed above, as each builds on the
   previous. The DoS issue (LP#2160020) is addressed as part of this
   coordinated fix.
- A related Tempest test compatibility fix was proposed at
   https://review.opendev.org/1003560

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
