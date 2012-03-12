X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/12/5
Message-ID: <1331582630.3983.14.camel@mdlinux>
Date: Mon, 12 Mar 2012 16:03:50 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com
Subject: CVE Request: ldm (LTSP display manager)
Content-Type: text/plain; charset=utf-8

Could we please get a CVE assigned to the following issue?:

Starting with ldm 2.2.x, upstream switched to using wwm as a minimal window manager.
It was discovered that wwm ships with keybindings that allow spawning an xterm.

As the ldm greeter runs as root, this allows for a passwordless root shell.

Bug:
https://bugs.launchpad.net/ubuntu/+source/ldm/+bug/953340

Commit:
http://bazaar.launchpad.net/~ltsp-upstream/ltsp/ldm-trunk/revision/1419

Thanks,

Marc.


-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/



