X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/27/9
Message-ID: <Pine.GSO.4.51.0803271906020.14208@faron.mitre.org>
Date: Thu, 27 Mar 2008 19:06:08 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Lubomir Kundrak <lkundrak@...hat.com>
cc: "Steven M. Christey" <coley@...us.mitre.org>, oss-security <oss-security@...ts.openwall.com>
Subject: Re: CVE Request: Perlbal DoS
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-1532
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-1532
Reference: CONFIRM:http://search.cpan.org/src/BRADFITZ/Perlbal-1.70/CHANGES
Reference: CONFIRM:http://bugs.gentoo.org/show_bug.cgi?id=214784
Reference: CONFIRM:https://bugzilla.redhat.com/show_bug.cgi?id=439054

Perlbal before 1.70, when buffered upload is enabled, allows remote
attackers to cause a denial of service (crash) via a zero-byte chunked
upload.


