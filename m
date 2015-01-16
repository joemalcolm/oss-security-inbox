X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/16/16
Message-ID: <54B98976.8090108@enovance.com>
Date: Fri, 16 Jan 2015 16:58:14 -0500
From: Tristan Cacqueray <tristan.cacqueray@...vance.com>
To: oss-security@...ts.openwall.com
Subject: CVE request for vulnerability in OpenStack Glance
Content-Type: text/plain; charset=utf-8

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although an
advisory was not sent yet.

Title: Glance user storage quota bypass
Reporter: Tushar Patil (NTT)
Products: Glance
Versions: up to 2014.1.3 and 2014.2 version up to 2014.2.1

Description:
Tushar Patil from NTT reported a vulnerability in Glance. By deleting images
that are being uploaded, a malicious user can overcome the storage quota and
thus may overrun the backend. Images in deleted state are not taken into
account by quota and won't be effectively deleted until the upload is
completed. Only Glance setups configured with user_storage_quota are
affected.

References:
https://launchpad.net/bugs/1398830

Thanks in advance,

-- 
Tristan Cacqueray
OpenStack Vulnerability Management Team


Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
