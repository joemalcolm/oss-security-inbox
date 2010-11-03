X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/03/2
Message-ID: <AANLkTi=ncwzKWFHAgFghGipZH-bZC6B7w8OXTFjt4Re7@mail.gmail.com>
Date: Wed, 3 Nov 2010 18:15:30 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: X.25 remote DoS
Content-Type: text/plain; charset=utf-8

Due to bad parsing of malformed X.25 facilities, a remote attacker can
cause a kernel panic due to heap corruption (assuming both parties are
communicating using X.25).  Since the below post, the X.25 maintainer
has confirmed the issue.

Reference:
http://marc.info/?l=linux-netdev&m=128871017529408&w=2

-Dan
