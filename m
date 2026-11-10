X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/27
Message-ID: <179433634849.705174.15076121586760123411@espilon.net>
Date: Tue, 10 Nov 2026 18:45:49 +0000
From: Eun0us / Espilon <eun0us@...ilon.net>
To: oss-security@...ts.openwall.com
Cc: alan.coopersmith@...cle.com, h@...er.ee, security@...ian.org, security@...e.de, secalert@...hat.com, eun0us@...ton.me
Subject: Re: [Coordinated disclosure] sblim-sfcb: pre-auth remote DoS (and latent OOB NUL write) via unbounded quoted-attribute scan in CIM-XML parser (cimXmlParser.c getValue)
Content-Type: text/plain; charset=utf-8

Hello,

Alan, you are right, and the earlier reply was right that this is public information now. oss-security is a public list, not the MITRE CNA, and our message disclosed the issue the moment it went out. It was meant for the distribution security teams only. That was our mistake, and the embargo date in it no longer applies.

We also need to correct the impact we stated. sfcb handles each connection in a forked child process (doFork defaults to 1, httpAdapter.c line 1538; fork() at line 1343), and its XML parser already ends that child with exit(1) on malformed input. The unbounded scan in getValue() (cimXmlParser.c lines 313 to 315) therefore only crashes the child serving the attacker's own connection; the broker keeps serving other clients. We withdraw the 7.5 score and the "remote DoS" description. What remains is a heap over-read, and possibly one stray NUL byte, inside that short-lived child.

In our view this is a robustness bug rather than a vulnerability, and we are not requesting a CVE. For anyone who wants to patch it anyway:

    while (xb->cur < xb->last && *xb->cur != dlm) xb->cur++;
    if (xb->cur >= xb->last) Throw(xb, "unterminated attribute value");

Best regards,
Eun0us
President, Espilon
eun0us@...ilon.net
