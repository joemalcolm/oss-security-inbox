X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/09/22
Message-Id: <20140909183612.91C8C33201F@smtpvbsrv1.mitre.org>
Date: Tue,  9 Sep 2014 14:36:12 -0400 (EDT)
From: cve-assign@...re.org
To: security@....org
Cc: cve-assign@...re.org, oss-security@...ts.openwall.com
Subject: Re: Xen Security Advisory 107 - Mishandling of uninitialised FIFO-based event channel control blocks
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> When using the FIFO-based event channels, there are no checks for the
> existence of a control block when binding an event or moving it to a
> different VCPU.

Use CVE-2014-6268.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJUD0hFAAoJEKllVAevmvmsaTwH/jjeQlCo0oa2qzpYvOanqz6n
oYo75vg9bEM05FVa765NLDc9CwerQLJZQ0AVW2D8FbP7PyLGQyAXeXDImezzqfKX
2WxX3/igtVK+6wR3DanTpK3YZNWXNkGeWVw/5yxW6rEaSgBBNetHnwAnhETJaPrK
kwJj1r28KbFvZchhANo3lirzNHgRTIYfB0QeTwMJUYkn5ac1BS8znC329loBfuVb
sHrXRu8cQfJTcDdAndiwPK+1uUcLrkpH1wDXWhKO0ZMQWDJUjX+bxQ3ukdSnHvcr
U2v4yAUAe3nAKbVzslTPbsg+xCu39QJZySTEM6Rr+FNKEdXdmD2JilYSL1KlbM4=
=MMmc
-----END PGP SIGNATURE-----
