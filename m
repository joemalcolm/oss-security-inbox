X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/08/8
Message-ID: <20090908231346.GI7304@outflux.net>
Date: Tue, 8 Sep 2009 16:13:46 -0700
From: Kees Cook <kees@...ntu.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
Cc: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request - glib symlink copying permission exposure
Content-Type: text/plain; charset=utf-8

Hi,

I'd like to request a CVE for an issue where glib causes symlink targets
to gain 0777 permissions when any symlink pointing at the target is
copied.  There is no privilege escalation, but it can lead to situations
where other users on a system could have read/write access to important
files (e.g. .ssh/id_rsa).

https://bugs.launchpad.net/bugs/418135
http://bugzilla.gnome.org/show_bug.cgi?id=593406

Thanks,

-Kees

-- 
Kees Cook
Ubuntu Security Team
