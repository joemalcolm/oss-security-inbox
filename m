X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/10/5
Message-ID: <Pine.GSO.4.51.0803101644450.18792@faron.mitre.org>
Date: Mon, 10 Mar 2008 16:44:50 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Jonathan Smith <smithj@...ethemallocs.com>
cc: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: yet another lighttpd issue
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-1270
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-1270
Reference: CONFIRM:http://trac.lighttpd.net/trac/ticket/1587
Reference: CONFIRM:https://bugs.gentoo.org/show_bug.cgi?id=212930
Reference: CONFIRM:https://issues.rpath.com/browse/RPL-2344

mod_userdir in lighttpd 1.4.18 and earlier, when userdir.path is not
set, uses a default of $HOME, which might allow remote attackers to
read arbitrary files, as demonstrated by accessing the ~nobody
directory.


