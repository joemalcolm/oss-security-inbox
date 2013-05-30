X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/05/30/1
Message-ID: <CAA7hUgHxQGo36UL5GER=ZzEc2BBnHKUYUjRbV4shGhYMp78gEQ@mail.gmail.com>
Date: Thu, 30 May 2013 10:50:20 +0200
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: znc: null pointer dereference in webadmin
Content-Type: text/plain; charset=utf-8

Hi,

A null pointer dereference was found in ZNC 1.0 in the webadmin module
which can be triggered by non-admins and cause denial of service[0].

Could a CVE id be assigned please?

Thanks in advance.

References:
[0] https://github.com/znc/znc/commit/2bd410ee5570cea127233f1133ea22f25174eb28
[1] https://secunia.com/advisories/53450/

Cheers,
--
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
