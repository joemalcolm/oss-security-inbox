X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/09/4
Message-ID: <ecf4ae371694ce099bbebc4ab108fb23c19270a6.camel@apache.org>
Date: Wed, 09 Dec 2020 08:01:39 -0800
From: Brennan Ashton <btashton@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-17528: Apache NuttX (incubating) Out of Bound Write from invalid TCP Urgent length
Content-Type: text/plain; charset=utf-8

Description:
Out-of-bounds Write vulnerability in TCP stack of Apache Software
Foundation Apache NuttX (incubating) allows attacker to corrupt memory
by supplying arbitrary urgent data pointer offsets within TCP packets
including beyond the length of the packet.

This issue affects:
Apache Software Foundation Apache NuttX (incubating) versions prior to
9.1.1 AND 10.0.0.

This issue is also known as AMNESIA:33 CVE-2020-17437

Credit:
Apache NuttX would like to thank Forescout for reporting the issue

Thanks you,
Brennan Ashton

