X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/03/10
Message-ID: <Pine.LNX.4.64.1501031711300.1923@beijing.mitre.org>
Date: Sat, 3 Jan 2015 17:12:22 -0500 (EST)
From: cve-assign@...re.org
To: Robert Scheck <robert@...oraproject.org>
cc: Open Source Security Mailing List <oss-security@...ts.openwall.com>, Red Hat Security Response Team <secalert@...hat.com>, cve-assign@...re.org
Subject: Re: CVE request: Unauthenticated remote disk space exhaustion in Zarafa WebAccess and WebApp
Content-Type: text/plain; charset=utf-8


On Sun, 7 Dec 2014, Robert Scheck wrote:

> I discovered a flaw in Zarafa WebAccess >= 7.0.0 and Zarafa WebApp (any
> version) that could allow a remote unauthenticated attacker to exhaust the
> disk space of /tmp. Depending on the setup /tmp might be on / (e.g. RHEL).
> Zarafa WebApp is a fork and the successor of the Zarafa WebAccess.
>
> The affected files are /usr/share/zarafa-webaccess/senddocument.php as well
> as /usr/share/zarafa-webapp/senddocument.php. The default upload size is 30
> MB (via /etc/httpd/conf.d/zarafa-webaccess.conf / zarafa-webapp.conf).

Use CVE-2014-9465.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
