X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/01/1
Message-ID: <20081001134843.GA10309@anguilla.debian.or.at>
Date: Wed, 1 Oct 2008 15:48:43 +0200
From: Gerfried Fuchs <rhonda@....at>
To: oss-security@...ts.openwall.com
Subject: CVE id request: sabre
Content-Type: text/plain; charset=utf-8

        Hello!

 There is a tmp file symlink attack pattern in the sabre run scripts
introduced by a Debian patch to them. Given that one of the binaries has
to be run as root due to svgalib requirements this might lead to
overwriting root-owned files in certain use cases.

Debian Bugreport: <http://bugs.debian.org/433996>

Patch is currently in the works so I can't offer it yet.

 Could I please get a CVE id for it?

 Thanks in advance,
Rhonda
