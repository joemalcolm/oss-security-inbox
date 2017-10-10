X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/10/7
Message-ID: <b784889f-6aa3-998c-6b8e-d21bc4f566a1@chbi.eu>
Date: Tue, 10 Oct 2017 19:54:53 +0200
From: chbi@...i.eu
To: oss-security@...ts.openwall.com
Subject: Re: Reflected XSS vulnerability in Shaarli v0.9.1
Content-Type: text/plain; charset=utf-8


> A reflected XSS vulnerability in Shaarli v0.9.1 allows an
> unauthenticated attacker to inject JavaScript. If the victim is an
> administrator, an attacker can (for example) takeover the admin session
> or change global settings or add/delete links. It is also possible to
> execute JavaScript against unauthenticated users.
> 
> Fix:
> https://github.com/shaarli/Shaarli/pull/987

CVE-2017-15215 has been assigned.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-15215


-- 
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc



Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
