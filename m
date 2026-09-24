X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/5
Message-ID: <6e0df360-4055-405b-8242-67310d323f40@gmail.com>
Date: Thu, 24 Sep 2026 09:21:57 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-041] OpenStack Swift: Cross-container information disclosure via Swift tempurl (CVE-2026-97149)
Content-Type: text/plain; charset=utf-8

=======================================================================
OSSA-2026-041: Cross-container information disclosure via Swift tempurl
=======================================================================

:Date: September 24, 2026
:CVE: CVE-2026-97149


Affects
~~~~~~~
- Swift: >=1.4.6 <2.35.5, >=2.36.0 <2.36.4, >=2.37.0 <2.37.4, >=2.38.0 
<2.38.2


Description
~~~~~~~~~~~
Oren Yomtov from ACT Security and "swdb", a security
researcher, independently reported a vulnerability in the
Swift tempurl middleware. A party holding a single-object PUT
TempURL signed with an account-level key
(``X-Account-Meta-Temp-URL-Key``) could resend the signed request
with an ``X-Copy-From`` header naming any object in the same
account, causing Swift to copy the named object into the granted
destination object, and read the copied bytes back with a second
GET TempURL, disclosing objects the holder of the TempURL was not
authorized to access. Only deployments with the tempurl middleware
enabled are affected. The copy is limited to the account that
owns the key, and the attacker must know the target container and
object name.

As a mitigation, operators can add ``x-copy-from`` to the
``incoming_remove_headers`` option of the ``[filter:tempurl]``
section of their proxy server configuration. With that
configuration the header is silently removed and the PUT stores no
data; the patches below instead reject the request with a 400
response.



Patches
~~~~~~~
- https://review.opendev.org/1007050 (2025.1/epoxy)
- https://review.opendev.org/1007049 (2025.2/flamingo)
- https://review.opendev.org/1007048 (2026.1/gazpacho)
- https://review.opendev.org/1007047 (2026.2/hibiscus)
- https://review.opendev.org/1007046 (2027.1/indri (development))


Credits
~~~~~~~
- Oren Yomtov from ACT Security
- swdb from Independent


References
~~~~~~~~~~
- https://launchpad.net/bugs/2166876
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-97149


Notes
~~~~~
- This issue is distinct from the S3API vulnerabilities in
   OSSA-2026-030; it affects the native Swift API with the default proxy
   pipeline and does not require the S3API middleware or the ``s3_acl``
   configuration.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
