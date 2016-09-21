X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/21/1
Message-ID: <f4140eea-595f-612b-8875-36d117aedeb0@redhat.com>
Date: Wed, 21 Sep 2016 00:39:23 +0000
From: Tristan Cacqueray <tdecacqu@...hat.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE request for vulnerability in OpenStack Nova
Content-Type: text/plain; charset=utf-8

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Nova may fail to delete images in resize state regression
Reporter: Rajesh Tailor (Red Hat)
Products: Nova
Affects: ==13.0.0

Description:
Rajesh Tailor from Red Hat reported a vulnerability in Nova. If an
authenticated user deletes an instance while it is in resize state, it
will cause the original instance to not be deleted from the compute node
it was running on. An attacker can use this to launch a denial of
service attack. All Nova setups are affected.

Note:
This bug is similar to OSSA-2015-017 (CVE-2015-3280) and was
re-introduced in the first release of Mitaka version of Nova and it was
re-fixed in nova-13.1.0.

References:
https://launchpad.net/bugs/1589821

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team



Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
