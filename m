X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/27
Message-ID: <CAErT4g1Wf28JVDg5C=Fh+-7SmguxWc98OfpJRj3FNSbirvTQ0g@mail.gmail.com>
Date: Mon, 9 Nov 2026 11:15:15 -0800
From: Vidya Murthy <vidya@...crypt.com>
To: oss-security@...ts.openwall.com
Subject: Re: “sshole”: password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Adding a data point from the medical-device side: we reproduced this
independently at Medcrypt, including on a stock Yocto image, no unusual
configuration, which is the concerning part given how common musl + no-PAM
+ password-auth-on + *-locked service accounts is as a “hardened” embedded
baseline. Wrote up the mechanism (the pick_salt() cache and
explicit_bzero() interaction is worth a careful read if you haven’t dug
into the two-attempt requirement) plus a 5-minute field test for teams that
need to check fielded units without source access:

https://www.medcrypt.com/blogs/asterisk-hole-cve-2026-123158-when-a-locked-account-is-the-way-in


Medcrypt Product Security
info@...crypt.com

