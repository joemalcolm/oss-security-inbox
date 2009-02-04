X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/04/2
Message-Id: <200902041518.46855.rbu@gentoo.org>
Date: Wed, 4 Feb 2009 15:18:44 +0100
From: Robert Buchholz <rbu@...too.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: Audacity <1.3.6 Buffer overflow
Content-Type: text/plain; charset=utf-8

Audacity before 1.3.6 contains a buffer overflow in
String_parse::get_nonspace_quoted() in lib-src/allegro/strparse.cpp when 
importing *.gro MIDI files.

https://bugs.gentoo.org/show_bug.cgi?id=253493
http://www.milw0rm.com/exploits/7634
http://n2.nabble.com/Audacity-%22String_parse::get_nonspace_quoted()%22-Buffer-Overflow-td2139537.html
http://secunia.com/advisories/33356/
http://www.f-secure.com/vulnerabilities/SA200900191

Download attachment "signature.asc " of type "application/pgp-signature" (836 bytes)
