X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/03/22
Message-ID: <Pine.LNX.4.64.1501031857580.1923@beijing.mitre.org>
Date: Sat, 3 Jan 2015 18:59:18 -0500 (EST)
From: cve-assign@...re.org
To: Vincent Danen <vdanen@...hat.com>
cc: oss-security <oss-security@...ts.openwall.com>, cve-assign@...re.org
Subject: Re: CVE request: denial of service flaw in firebird
Content-Type: text/plain; charset=utf-8


> I've not seen a CVE for this; could one be assigned?  Thanks.
>
> It was found that an unauthenticated remote attacker could send a malformed 
> network packet to a firebird server, which would cause the server to crash.
>
> http://www.firebirdsql.org/en/news/security-updates-for-v2-1-and-v2-5-series-66011/
> http://tracker.firebirdsql.org/browse/CORE-4630
> http://sourceforge.net/p/firebird/code/60331/
> https://bugs.mageia.org/show_bug.cgi?id=14726
> https://bugzilla.redhat.com/show_bug.cgi?id=1172445

Use CVE-2014-9492.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
