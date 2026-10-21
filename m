X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/13
Message-ID: <20261021091058.26ee8fd7@hboeck.de>
Date: Wed, 21 Oct 2026 09:10:58 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Bundled cert stores + eMudhra cert issue (nmap/ncat, texlive-infra)
Content-Type: text/plain; charset=utf-8

And there are many more applications with bundled stores. The NixOS
developers have collected lists of them:

https://github.com/NixOS/nixpkgs/issues/576475

With sub-issues:

https://github.com/NixOS/nixpkgs/issues/576541
Vendored PEM bundle

https://github.com/NixOS/nixpkgs/issues/576542
Bundle inside a wheel, jar or zip

https://github.com/NixOS/nixpkgs/issues/576543
Java keystore

https://github.com/NixOS/nixpkgs/issues/576544
Compiled into a binary

-- 
Hanno Böck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
