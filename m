X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/14/11
Message-ID: <CAED0SFy7R3OZXiyJ4TQn63qw_F931Ro5HEZEkDDPJZfWhos7=g@mail.gmail.com>
Date: Thu, 14 May 2020 15:14:51 -0300
From: Matheus Bratfisch <matheusbrat@...il.com>
To: oss-security@...ts.openwall.com
Subject: Python Beaker - Deserialization of Untrasted Data which can lead to Arbitrary code execution
Content-Type: text/plain; charset=utf-8

Hello all,

python beaker is affected by Deserialization of untrusted data (CWE-502)
which could lead to Arbitrary code execution.

I believe it was initially pointed out the flaw on Session here:
https://github.com/bbangert/beaker/issues/35

Some improvements were made by adding a secret/HMAC but the Cache layer
still has the same flaw. I reported the flaw on cache level here:
https://github.com/bbangert/beaker/issues/191
I created a POC but didn't publish it on the ticket.

There is no CVE assigned to this.

This package exists on Fedora and Debian at least.

Should I take any extra action?

Best regards,
--
Matheus (X-warrior) Bratfisch.
http://matbra.com

