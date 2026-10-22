X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/11
Message-ID: <atnaIUzVfQiBDonp@symphytum.spacehopper.org>
Date: Thu, 22 Oct 2026 10:40:49 +0100
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

On 2026/10/20 19:30, Valtteri Vuorikoski wrote:
> A test website is available at <https://emudhra.we-have-a-problem.com/> which
> also lists mitigation options for systems which do not receive CRL or equivalent
> revocation updates. Effectively: disable the root CAs "emSign ECC Root CA - G3"
> and "Comodo AAA Services root" in your operating system trust store, while being
> mindful of collateral damage. The Comodo root in particular has been widely used
> in the past.

Collateral damage for "emSign ECC Root CA - G3" includes the various
InCommon intermediate CAs:

C=US, O=Internet2, CN=InCommon Intermediate CA - DVG3C
C=US, O=Internet2, CN=InCommon Intermediate CA - EVG3C
C=US, O=Internet2, CN=InCommon Intermediate CA - OVG3C

as well as the eMudhra Technologies Limited ones.

(Unless you also remove the RSA root, like was done here for a bit,
then it's a bit wider..
https://github.com/certifi/python-certifi/commit/5cb238caeeb6c30ec1a7309ad3e16a5aa7b10ce8)

