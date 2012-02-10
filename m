X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/10/1
Message-ID: <87r4y3a63j.fsf@mid.deneb.enyo.de>
Date: Fri, 10 Feb 2012 01:24:00 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: surf
Content-Type: text/plain; charset=utf-8

surf does not protect its cookie jar against access read access from
other local users, as reported by Jakub Wilk in this Debian bug:

<http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=659296>

Could someone please assign a CVE for this?

uzbl <http://uzbl.org/> (in the uzbl-browser wrapper script) and
netsurf <http://www.netsurf-browser.org/> (the nsgtk_check_homedir
function creates the dot directory with world-readable settings) have
a similar issue, but are from different code bases.  I think those
should get distinct CVEs, too.
