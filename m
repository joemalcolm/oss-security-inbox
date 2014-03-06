X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/06/1
Message-ID: <5317D0DF.2000305@redhat.com>
Date: Thu, 06 Mar 2014 12:35:27 +1100
From: Garth Mollett <gmollett@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0036 rubygem-rbovirt: unsafe use of rest-client
Content-Type: text/plain; charset=utf-8

Michael Samuel of Amcom discovered that the rbovirt gem used rest-client
with SSL verification disabled. Any products making use of this gem are
likely vulnerable to MITM attacks.

This is fixed in the latest upstream release:
http://rubygems.org/gems/rbovirt/versions/0.0.24

-- 
Garth Mollett / Red Hat Security Response Team




Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
