X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/04/1
Message-ID: <20140204103546.576fb238@hboeck.de>
Date: Tue, 4 Feb 2014 10:35:46 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: python-gnupg before 0.3.5 shell injection
Content-Type: text/plain; charset=utf-8

Hi,

I was criticised in the past for making CVE requests without enough
information. This is another case where I have a hard time complying to
them.

python-gnupg 0.3.5 lists in the changelog:
"Added improved shell quoting to guard against shell injection."
Source: https://code.google.com/p/python-gnupg/

Sounds like a severe security issue, but further info is lacking.
python-gnupg has no public source code repository, so I can't link to
any commit. I could obviously download the last and current version,
diff them and try to find out. But that's quite a lot of work for a CVE
request.

Despite the lack of info, please assign CVE, as I think it's a severe
issue.

cu,
-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
