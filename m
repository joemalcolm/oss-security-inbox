X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/26/5
Message-ID: <CAKG8Do6j938c8Qkdp0MfqyYwOfdTt9FAgPs251cWVu5Bq65cCw@mail.gmail.com>
Date: Wed, 26 Oct 2016 17:09:42 +0200
From: Cedric Buissart <cbuissar@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2016-4455: subscription-manager: incorrect permisions in /var/lib/rhsm/
Content-Type: text/plain; charset=utf-8

Hi,

This is to disclose the following CVE:

CVE-2016-4455: subscription-manager: incorrect permissions in /var/lib/rhsm/
Description :

It was found that subscription-manager assigned incorrect permissions to
content in /var/lib/rhsm/, causing an information disclosure flaw. An
unprivileged local attacker could use this flaw to access sensitive data
that could later be used for a social engineering attack.

Upstream patch :
https://github.com/candlepin/subscription-manager/commit/9dec31

Impact : Low
CVSSv2 scoring : 1.7 - AV:L/AC:L/Au:S/C:P/I:N/A:N
CVSSv3 scoring : 3.3 - AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N

Reported by : Robert Scheck

Best regards,


-- 
Cedric Buissart,
Product Security

