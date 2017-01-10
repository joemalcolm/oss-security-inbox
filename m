X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/10/6
Message-ID: <20170110072939.GC18447@centurion.befour.org>
Date: Tue, 10 Jan 2017 08:29:39 +0100
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE request: python-pysaml2 XML external entity attack
Content-Type: text/plain; charset=utf-8

Hello,

the Debian security team would like to request a CVE for an XML XEE
discovered in python-pysaml2 by Matias P. Brutti; python-pysaml2 does
not sanitize SAML XML requests or responses:

  https://github.com/rohe/pysaml2/issues/366
  https://github.com/rohe/pysaml2/pull/379
  https://bugs.debian.org/850716

Cheers,

--Seb
