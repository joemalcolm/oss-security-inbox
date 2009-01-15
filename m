X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/15/3
Message-ID: <20090115213213.3dd5622a@redhat.com>
Date: Thu, 15 Jan 2009 21:32:13 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: CVE request - ganglia
Content-Type: text/plain; charset=utf-8

Hi!

A stack-based buffer overflow was reported for gmetad server part of the
ganglia:
http://www.mail-archive.com/ganglia-developers@lists.sourceforge.net/msg04929.html

Upstream bug:
http://bugzilla.ganglia.info/cgi-bin/bugzilla/show_bug.cgi?id=223

Upstream fix:
http://ganglia.svn.sourceforge.net/viewvc/ganglia?view=rev&revision=1946

-- 
Tomas Hoger / Red Hat Security Response Team
