X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/08/8
Message-ID: <Pine.GSO.4.51.0904081400340.29367@faron.mitre.org>
Date: Wed, 8 Apr 2009 14:00:38 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com, oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request -- bibtex, pam_ssh
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-1273
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-1273
Reference: CONFIRM:http://bugs.gentoo.org/show_bug.cgi?id=263579
Reference: SECUNIA:34536
Reference: URL:http://secunia.com/advisories/34536

pam_ssh 1.92 and possibly other versions, as used when PAM is compiled
with USE=ssh, generates different error messages depending on whether
the username is valid or invalid, which makes it easier for remote
attackers to enumerate usernames.


