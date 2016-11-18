X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/18/9
Message-ID: <8bccaa90-c192-4f98-673c-26816137e513@redhat.com>
Date: Fri, 18 Nov 2016 14:01:05 +0000
From: Tristan Cacqueray <tdecacqu@...hat.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA 2016-013] Network information disclosure through Heat template source URL (CVE-2016-9185)
Content-Type: text/plain; charset=utf-8

==============================================================================
OSSA-2016-013: Network information disclosure through Heat template
source URL
==============================================================================

:Date: November 18, 2016
:CVE: CVE-2016-9185


Affects
~~~~~~~
- Heat: <=5.0.3, >=6.0.0 <=6.1.0 and ==7.0.0


Description
~~~~~~~~~~~
Tom Patzig from SAP reported a vulnerability in Heat. By launching a
new Heat stack with a local URL an authenticated user may conduct
network discovery revealing internal network configuration. All Heat
setup are affected.


Patches
~~~~~~~
- https://review.openstack.org/393149 (Liberty)
- https://review.openstack.org/393148 (Mitaka)
- https://review.openstack.org/393147 (Newton)
- https://review.openstack.org/393146 (Ocata)


Credits
~~~~~~~
- Tom Patzig from SAP (CVE-2015-9185)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1606500
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-9185

--
Tristan Cacqueray
OpenStack Vulnerability Management Team



Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
