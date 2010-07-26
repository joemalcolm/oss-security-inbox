X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/26/4
Message-ID: <694276987.1555921280172460532.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 26 Jul 2010 15:27:40 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: GnuPG 2
Content-Type: text/plain; charset=utf-8


----- "Florian Weimer" <fw@...eb.enyo.de> wrote:

> GnuPG 2.0 before version 2.0.17 reuses a freed pointer when verifying
> a signature or importing a certificate with many Subject Alternate
> Names, possibly allowing context-dependent attacks to execute
> arbitrary code.
> 
> <http://lists.gnupg.org/pipermail/gnupg-announce/2010q3/000302.html>

Please use CVE-2010-2547.

Thanks.

-- 
    JB
