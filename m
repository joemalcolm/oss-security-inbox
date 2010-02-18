X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/18/3
Message-ID: <4B7CCC51.7030501@redhat.com>
Date: Thu, 18 Feb 2010 13:12:49 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE requests - kernel network vulns
Content-Type: text/plain; charset=utf-8

1) gre: fix netns vs proto registration ordering
http://patchwork.ozlabs.org/patch/45553/

"GRE protocol receive hook can be called right after protocol addition 
is done. If netns stuff is not yet initialized, we're going to oops in
net_generic().

This is remotely oopsable if ip_gre is compiled as module and packet
comes at unfortunate moment of module loading."

2) tunnels: fix netns vs proto registration ordering
http://patchwork.ozlabs.org/patch/45554/

"Same stuff as in ip_gre patch: receive hook can be called before netns
setup is done, oopsing in net_generic()."

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
