X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/03/4
Message-ID: <CAPGxrc_N_=z12njMyN2WrSO74A9=ioEnppxs2YGExMn0qd6MJA@mail.gmail.com>
Date: Thu, 3 Nov 2016 17:58:14 +0800
From: redrain root <rootredrain@...il.com>
To: dickey@...isible-island.net, oss-security@...ts.openwall.com,  fulldisclosure@...lists.org
Cc: cve-assign@...re.org
Subject: CVE request:Lynx invalid URL parsing with '?'
Content-Type: text/plain; charset=utf-8

I can't find any bugtracker in lynx ,so i will disclose by this mail and
sent to the author dickey@...isible-island.net.

redrain (rootredrain@...il.com)
Date:2016-11-03
Version: 2.8.8pre.4、2.8.9dev.8 and earlier
Platform: Linux and Windows
Vendor: http://lynx.browser.org/
Vendor Notified: 2016-11-03


VULNERABILITY
-------------------------

Lynx doesn't parse the authority component of the URL correctly when the
host
name part ends with '?', and could instead be tricked into
connecting to a different host.

Passing in `*http://google.com?@...kdog.me/
<http://google.com?@...kdog.me/>*` <http://example.com/#@evil.com/x.txt> would
wrongly make lynx send a
request to hackdog.me while your browser would connect to google.com given
the same URL.

PoC
------------------------
lynx  "http://google.com?@...kdog.me/"


SOLUTION
-------------------------
follow the RFC and check for domains before send request.



Regards,
redrain

