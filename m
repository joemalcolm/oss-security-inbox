X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/14/7
Message-ID: <Pine.GSO.4.51.0810141819140.1682@faron.mitre.org>
Date: Tue, 14 Oct 2008 18:19:24 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: vlc
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-4558
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-4558
Reference: MISC:http://www.coresecurity.com/content/vlc-xspf-memory-corruption

Array index error in VLC media player 0.9.2 allows remote attackers to
overwrite arbitrary memory and execute arbitrary code via an XSPF
playlist file with a negative identifier tag, which passes a signed
comparison.


