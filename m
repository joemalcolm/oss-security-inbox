X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/25/1
Message-ID: <48B25AB3.3040000@redhat.com>
Date: Mon, 25 Aug 2008 15:09:39 +0800
From: Eugene Teo <eteo@...hat.com>
To: oss-security@...ts.openwall.com
CC: coley@...re.org
Subject: CVE request: kernel: sctp: fix potential panics in the SCTP-AUTH API
Content-Type: text/plain; charset=utf-8

This was committed in upstream kernel recently.

"[PATCH] sctp: fix potential panics in the SCTP-AUTH API.

All of the SCTP-AUTH socket options could cause a panic if the extension
is disabled and the API is envoked.

Additionally, there were some additional assumptions that certain
pointers would always be valid which may not always be the case."

Upstream commit:
5e739d1752aca4e8f3e794d431503bfca3162df4

References:
http://marc.info/?l=linux-netdev&m=121928747903176&w=2
http://lkml.org/lkml/2008/8/23/49

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
