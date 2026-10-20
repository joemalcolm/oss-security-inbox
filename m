X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/19
Message-ID: <ateVZRlKdJ0j7R7b@donburi.himad.notcom.org>
Date: Tue, 20 Oct 2026 19:30:32 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

A test website is available at <https://emudhra.we-have-a-problem.com/> which
also lists mitigation options for systems which do not receive CRL or equivalent
revocation updates. Effectively: disable the root CAs "emSign ECC Root CA - G3"
and "Comodo AAA Services root" in your operating system trust store, while being
mindful of collateral damage. The Comodo root in particular has been widely used
in the past.

The site also has a zip file with signatures using the private keys of the
affected intermediate certificates, which verify using OpenSSL. Postings on
social media claim that the private keys are easily discoverable.

 -valtteri
 
