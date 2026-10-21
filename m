X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/2
Message-ID: <20261021034006.0bc63b3e@hboeck.de>
Date: Wed, 21 Oct 2026 03:40:06 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Bundled cert stores + eMudhra cert issue (nmap/ncat, texlive-infra)
Content-Type: text/plain; charset=utf-8

Hi,

The recent eMudhra certificate compromise means that every software
that bundles its own root certificate store is potentially affected.

I went through my systems and checked for installed .crt files in /usr:

/usr/share/tlpkg/installer/curl/curl-ca-bundle.crt
Apparently belongs to the texlive-core package on Gentoo, which, in
turn, uses the file from an upstream package called texlive-infra.
Contains the affected "Comodo AAA Services root". In its git code, that
has been removed already:
https://github.com/TeX-Live/texlive-infra

Distros may want to make sure they update that.

/usr/share/ncat/ca-bundle.crt
Belongs to ncat, which is part of nmap. I've reported this to nmap's
developer.
Latest nmap 7.992 also contains "Comodo AAA Services root".

I would like to encourage people to look for other places where
software ships its own root certificate store. Also, I'd like to
encourage these software projects to stop doing that and use the system
root store. It's much easier to fix such things in one place than in
countless places.

-- 
Hanno Böck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
