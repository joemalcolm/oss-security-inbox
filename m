X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/05/1
Message-Id: <1451953836.236177.482914922.46C7D6CD@webmail.messagingengine.com>
Date: Tue, 05 Jan 2016 00:30:36 +0000
From: Filippo Valsorda <ml@...ippo.io>
To: oss-security@...ts.openwall.com
Subject: CVE Request: python-rsa signature forgery
Content-Type: text/plain; charset=utf-8

Hello,

please assign a CVE to this signature forgery vulnerability in
python-rsa. It allows an attacker to fake signatures for arbitrary
messages for any key with low exponent "e" (like the common 3).

Writeup:
https://blog.filippo.io/bleichenbacher-06-signature-forgery-in-python-rsa/
Fix:
https://bitbucket.org/sybren/python-rsa/pull-requests/14/security-fix-bb06-attack-in-verify-by/diff
Project: https://pypi.python.org/pypi/rsa

Thanks,
Filippo
