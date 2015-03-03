X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/03/03/1
Message-ID: <54F5618B.4000605@redhat.com>
Date: Tue, 03 Mar 2015 00:23:55 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, Assign a CVE Identifier <cve-assign@...re.org>, security@...ian.org, dickey@...isible-island.net
Subject: Debian / xterm #779397
Content-Type: text/plain; charset=utf-8

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=779397#23

Package: xterm
Version: 312-1
Severity: important
Tags: security

$ xterm -S/dev/pts/20
*** buffer overflow detected ***: /usr/bin/xterm terminated

=======

This was fixed in #314, two months ago.

-- 
Thomas E. Dickey <dickey@...isible-island.net>

Did this get a CVE? I don't see a DSA for xterm.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
