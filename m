X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/02/2
Message-ID: <25eccda6-535c-c688-2081-87e4819f59d9@teufelsnetz.com>
Date: Mon, 2 May 2016 19:14:58 +0200
From: Max Teufel <max@...felsnetz.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: atheme: security fixes
Content-Type: text/plain; charset=utf-8

Hi,

Multiple security issues were found in Atheme, an IRC services package,
which will be fixed in the upcoming 7.2.7 release. Could CVEs be
assigned to the issues summarized below?

Fix:
https://github.com/atheme/atheme/commit/c597156adc60a45b5f827793cd420945f47bc03b
Description: A remote attacker could change Atheme's behavior by
registering/dropping certain accounts/nicks.
Reference: https://github.com/atheme/atheme/issues/397

Fix:
https://github.com/atheme/atheme/commit/87580d767868360d2fed503980129504da84b63e
Description: Under certain circumstances, a remote attacker could cause
denial of service due to a buffer overflow in the XMLRPC response
encoding code.

Regards,
Max Teufel

