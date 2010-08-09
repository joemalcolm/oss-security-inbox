X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/09/1
Message-ID: <AANLkTi=U6tn1xr3UpHUfeE_LdV4S7qpAfBzZQeWyOHST@mail.gmail.com>
Date: Mon, 9 Aug 2010 10:17:45 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com, coley <coley@...re.org>
Subject: CVE request: Lynx
Content-Type: text/plain; charset=utf-8

The Lynx browser is vulnerable to a heap overflow when parsing
malformed URLs with a "%" character in the last two characters of the
hostname.

Reference:
https://bugs.launchpad.net/ubuntu/+source/lynx-cur/+bug/613254

-Dan
