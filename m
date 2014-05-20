X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/20/1
Message-ID: <537B4398.6050302@enovance.com>
Date: Tue, 20 May 2014 07:59:20 -0400
From: Tristan Cacqueray <tristan.cacqueray@...vance.com>
To: oss-security@...ts.openwall.com
Subject: CVE request for vulnerability in OpenStack Heat
Content-Type: text/plain; charset=utf-8

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Heat template URL information leakage
Reporter: Jason Dunsmore (Rackspace)
Products: Heat
Versions: 2013.2 to 2013.2.3, and 2014.1

Description:
Jason Dunsmore from Rackspace reported a vulnerability in Heat. An
authenticated user may temporarily see the URL of a provider template
used in another tenant by listing heat resources types. This may result
in disclosure of additional information if the template itself can be
accessed. The URL disappears from the listing after a certain point in
the stack creation. All Heat setups are affected.

References:
https://launchpad.net/bugs/1311223

Thanks in advance,

-- 
Tristan Cacqueray
OpenStack Vulnerability Management Team




Download attachment "signature.asc" of type "application/pgp-signature" (556 bytes)
