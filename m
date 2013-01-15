X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/15/9
Message-ID: <87ehhmtez6.fsf@mid.deneb.enyo.de>
Date: Tue, 15 Jan 2013 20:37:17 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: Kurt Seifried <kseifried@...hat.com>
Cc: oss-security@...ts.openwall.com,  Salvatore Bonaccorso <carnil@...ian.org>,  team@...urity.debian.org
Subject: Re: CVE request: Digest::SHA double free when using load subroutine
Content-Type: text/plain; charset=utf-8

* Kurt Seifried:

> I'm not clear, how would an attacker exploit this? They'd need to be
> able to specify the file that gets hashed, and the file would have to
> be not present and would thus trigger the crash? Are there any real
> world examples of an affected application? (web based?)

My hunch is that this is just a bug, not a security issue.
