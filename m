X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/06/1
Message-ID: <20111106164932.GA394@devzero.fr>
Date: Sun, 6 Nov 2011 17:49:32 +0100
From: vladz <vladz@...zero.fr>
To: oss-security@...ts.openwall.com
Cc: benml@...idev.fr
Subject: Re: Request for CVE Identifier: bzexe insecure temporary file
Content-Type: text/plain; charset=utf-8


Hi,

Here is a PoC for this race condition.  It uses the Inotify API and
always succeed on my Dual-core CPU.  

  http://vladz.devzero.fr/other/bzexe_PoC.c.html

Regards,
-- 
http://vladz.devzero.fr
PGP key 8F7E2D3C from pgp.mit.edu

