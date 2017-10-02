X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/02/5
Message-ID: <164d0bb4-6209-5e9b-32e9-0574cf31d54a@thekelleys.org.uk>
Date: Mon, 2 Oct 2017 16:47:18 +0100
From: Simon Kelley <simon@...kelleys.org.uk>
To: oss-security@...ts.openwall.com
Subject: dnsmasq: CVE-2017-14491 to CVE-2017-14496 and CVE-2017-13704
Content-Type: text/plain; charset=utf-8

A set of serious security vulnerabilities for dnsmasq have been released
today.

These include remote DoS and possibly code execution, and at least some
apply to essentially every non-ancient dnsmasq release.

Most of these were found by Google and their writeup is here.

https://security.googleblog.com/2017/10/behind-masq-yet-more-dns-and-dhcp.html

The fixes are contained in the dnsmasq 2-78 release, announced here:

http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2017q4/011771.html


and are in the dnsmasq git repo, here:


http://thekelleys.org.uk/gitweb/?p=dnsmasq.git;a=summary


Cheers,

Simon.



Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
