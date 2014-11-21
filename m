X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/21/12
Message-ID: <546F721194C2784A97981FD35526BB191F500E88@SRVEXCH>
Date: Fri, 21 Nov 2014 11:04:10 +0000
From: Damien Millescamps <Damien.Millescamps@...ida.fr>
To: "'oss-security@...ts.openwall.com'" <oss-security@...ts.openwall.com>
Subject: CVE request: heap buffer overflow in ClamAV
Content-Type: text/plain; charset=utf-8

Hi,

A heap buffer overflow was reported in [1] in ClamAV when scanning a specially crafted y0da Crypter obfuscated PE file.
Note that this is remotely exploitable when ClamAV is used as a mail gateway scanner.

Upstream fix is available here: [2].
ClamAV 0.98.5 contains the above fix.

Additional references:
[1] https://bugzilla.clamav.net/show_bug.cgi?id=11155
[2] https://github.com/vrtadmin/clamav-devel/commit/fc3794a54d2affe5770c1f876484a871c783e91e

Can a CVE be assigned to this, please ?

Thanks,
--
Damien Millescamps | Oppida

