X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/11/3
Message-ID: <Pine.LNX.4.64.1501110937120.26662@beijing.mitre.org>
Date: Sun, 11 Jan 2015 09:38:25 -0500 (EST)
From: cve-assign@...re.org
To: Vasyl Kaigorodov <vkaigoro@...hat.com>
cc: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: Re: CVE request: roundcubemail: possible CSRF attacks to some address book operations as well as to the ACL and Managesieve plugins
Content-Type: text/plain; charset=utf-8


> Hello,
>
> Version 1.0.4 of Roundcube [1] contains a security fix:
> ...
> Security: Fix possible CSRF attacks to some address book operations as
> well as to the ACL and Managesieve plugins.
> ...
>
> Upstream commit:
> https://github.com/roundcube/roundcubemail/commit/376cbfd4f2dfcf455717409b70d9d056cbeb08b1
>
> [1]: http://roundcube.net/news/2014/12/18/update-1.0.4-released/
>
> Can a CVE be assigned to this please?
>
> References:
> https://bugs.gentoo.org/show_bug.cgi?id=534766
> https://bugzilla.redhat.com/show_bug.cgi?id=1179780

Use CVE-2014-9587.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
