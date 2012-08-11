X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/11/3
Message-ID: <87fw7ut3k9.fsf@windlord.stanford.edu>
Date: Fri, 10 Aug 2012 22:12:22 -0700
From: Russ Allbery <rra@...nford.edu>
To: Kurt Seifried <kseifried@...hat.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE Request: rssh command-line parsing vulnerability
Content-Type: text/plain; charset=utf-8

Kurt Seifried <kseifried@...hat.com> writes:

> Not sure why I didn't get this a CVE earlier, please use CVE-2012-3478
> for this issue. Red Hat reference:
> https://bugzilla.redhat.com/show_bug.cgi?id=820414

Thanks!  I'm happy to share the patches that I have for the Debian package
if Red Hat would also like to use them.  They're somewhat different than
upstream (or, rather, I had to layer additional patches on top of
upstream) because Debian adds support for the new rsync protocol flags and
for svnserve as a supported program, which required changes to the patch.

-- 
Russ Allbery (rra@...nford.edu)             <http://www.eyrie.org/~eagle/>
