X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/10/3
Message-ID: <4EE38547.8000001@gmail.com>
Date: Sat, 10 Dec 2011 17:13:59 +0100
From: Paul <pawlkt@...il.com>
To: oss-security@...ts.openwall.com
Subject: cve request: bat_socket_read memory corruption
Content-Type: text/plain; charset=utf-8

Hi

can I get a CVE for this:
https://lists.open-mesh.org/pipermail/b.a.t.m.a.n/2011-December/005904.html
?

If root does read() on a specific socket, it's possible to corrupt
(kernel) memory over network, with an ICMP packet, if B.A.T.M.A.N. mesh
protocol is used.

-- 
Regards,             twitter.com/pa_kt
Paul


