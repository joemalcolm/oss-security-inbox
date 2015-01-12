X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/12/5
Message-ID: <54B44A24.5030405@enovance.com>
Date: Mon, 12 Jan 2015 17:26:44 -0500
From: Tristan Cacqueray <tristan.cacqueray@...vance.com>
To: oss-security@...ts.openwall.com
Subject: CVE request for vulnerability in OpenStack Glance
Content-Type: text/plain; charset=utf-8

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Glance v2 API unrestricted path traversal through filesystem://
       scheme
Reporter: Jin Liu (EMC)
Products: Glance
Versions: up to 2014.1.3 and 2014.2 versions up to 2014.2.1

Description:
Jin Liu from EMC reported that path traversal vulnerabilities in Glance
were not fully patched in OSSA 2014-041. By setting a malicious image
location to a filesystem:// scheme an authenticated user can still
download or delete any file on the Glance server for which the Glance
process user has access to. Only setups using the Glance V2 API are
affected by this flaw.

References:
https://launchpad.net/bugs/1408663

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
