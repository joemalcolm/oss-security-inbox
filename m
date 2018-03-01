X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/01/3
Message-ID: <410408356.339.1519887146548@appsuite-dev.open-xchange.com>
Date: Thu, 1 Mar 2018 08:52:26 +0200 (EET)
From: Aki Tuomi <aki.tuomi@...n-xchange.com>
To: oss-security@...ts.openwall.com
Subject: Dovecot Security Advisory: CVE-2017-15130 TLS SNI config lookups are inefficient and can be used for DoS
Content-Type: text/plain; charset=utf-8

Vulnerable versions: 2.2.0 - 2.2.33, 2.3.0
Fixed versions: 2.2.34, 2.3.0.1
Score: 3.7, AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L

If dovecot has been configured with local name or local net
configuration blocks, SNI lookups can be used to trash memory with
useless config by using random servernames.
