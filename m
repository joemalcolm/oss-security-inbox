X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/10
Message-ID: <fd31b8a4-4c3f-41e9-bccb-2110a6383c4c@oracle.com>
Date: Tue, 10 Nov 2026 09:39:21 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Eun0us / Espilon <eun0us@...ilon.net>, security@...ian.org, security@...e.de, secalert@...hat.com
Cc: eun0us@...ton.me
Subject: Re: [Coordinated disclosure] sblim-sfcb: pre-auth remote DoS (and latent OOB NUL write) via unbounded quoted-attribute scan in CIM-XML parser (cimXmlParser.c getValue)
Content-Type: text/plain; charset=utf-8

On 11/10/26 00:20, Eun0us / Espilon wrote:
> To the MITRE CNA team and the sblim-sfcb distribution security teams,

oss-security is *not* the MITRE CNA team, it's a public mailing list with public
archives.

> Espilon VR reports a remote, pre-authentication denial-of-service defect (with a latent,
> weak out-of-bounds write side effect) in the CIM-XML request parser of SBLIM SFCB. Upstream
> is abandoned (last release 1.4.9 in 2017), so we are requesting a CVE from MITRE and
> notifying the distributions that still ship sfcb, which are the realistic remediation path.
> A one-line fix accompanies this report. We propose a 90-day timeline expiring 2027-02-07,
> adjustable. A 17-byte PoC and a faithful harness are available on request.

Too late, by sending this mail to oss-security you publicly disclosed today,
without any coordination.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
