X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/20/3
Message-ID: <AANLkTi=kEpzBU4YCVj+vMGrj4tdf3KFA8uGZaQO3zYU9@mail.gmail.com>
Date: Sun, 20 Mar 2011 15:26:53 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: heap corruption in IrDA
Content-Type: text/plain; charset=utf-8

When providing an invalid IrDA nickname for an IrNET peer, a local
attacker can cause a kernel panic due to an underflow in a memcpy()
size calculation or cause a controllable heap overflow that may lead
to privilege escalation.  Write access to the /dev/irnet device file
is required to trigger the vulnerability.

Reference:
http://marc.info/?l=linux-netdev&m=130060169116047&w=2

Regards,
Dan
