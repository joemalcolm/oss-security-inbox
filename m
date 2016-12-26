X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/26/8
Message-ID: <36b82e6f-869b-57c5-366f-f47686dc53bb@orlitzky.com>
Date: Mon, 26 Dec 2016 14:51:27 -0500
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Incomplete fix for CVE-2016-8641 (Nagios local root via (sym)links)
Content-Type: text/plain; charset=utf-8

I don't know what I'm doing, and could use some advice.

CVE-2016-8641 relates to a symlink attack in the Nagios init script. If
he wishes, the "nagios" user can replace a specific file with a symlink,
and then the init script will chown the target of that symlink to the
"nagios" user the next time it is run.

A fix for this was released:

https://github.com/NagiosEnterprises/nagioscore/commit/f2ed227673d3b2da643eb5cad26b2d87674f28c1

Largely it consists of passing "-h" to chown, preventing chown from
following symlinks. And yet symlinks are not the only kind of link.
Chown will follow the other kind, too, meaning that the fix in that
commit is insufficient. I'm able to pull off the same sort of attack.

I sent a note to the Nagios maintainer a few minutes ago, but I don't
know what the best course of action is regarding the CVE. Start a new
one? Amend the existing one? Pretend it never happened because it's
Christmas?
