X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/6
Message-ID: <080d7bad-ec61-488d-82ea-bf1576e28f87@gmail.com>
Date: Thu, 24 Sep 2026 09:22:58 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSA-2026-042] OpenStack Zaqar: Zaqar empty URL-Signature header bypasses authentication (CVE-2026-97404)
Content-Type: text/plain; charset=utf-8

=======================================================================
OSSA-2026-042: Zaqar empty URL-Signature header bypasses authentication
=======================================================================

:Date: September 24, 2026
:CVE: CVE-2026-97404


Affects
~~~~~~~
- Zaqar: >=1.0.0 <20.1.2, >=21.0.0 <21.0.2, >=22.0.0 <22.0.2


Description
~~~~~~~~~~~
pple, an independent security researcher, reported that Zaqar's
WSGI transport mishandles an empty URL-Signature header: a request
carrying the header with an empty value bypasses both Keystone
authentication and pre-signed URL verification. An unauthenticated
remote attacker who knows a target project's UUID can then read,
enumerate, create, and delete that project's queues, messages,
claims, and subscriptions. By additionally claiming an
administrative role, the attacker may also perform administrative
operations, such as managing pools and flavors in admin_mode
deployments. Only deployments using the WSGI transport with an
authentication strategy configured are affected; the websocket
transport is not affected.



Patches
~~~~~~~
- https://review.opendev.org/1007162 (2025.1/epoxy)
- https://review.opendev.org/1007161 (2025.2/flamingo)
- https://review.opendev.org/1007160 (2026.1/gazpacho)
- https://review.opendev.org/1007159 (2026.2/hibiscus)
- https://review.opendev.org/1007158 (2027.1/indri (development))


Credits
~~~~~~~
- pple from Independent (CVE-2026-97404)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2164987
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-97404


Notes
~~~~~
- This issue is distinct from the EXTRA-SPEC header bypass in
   OSSA-2026-029; the fix for that issue removed the EXTRA-SPEC branch
   but left the empty-value handling of the URL-Signature header
   untouched.

--
Goutham Pacha Ravi
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
