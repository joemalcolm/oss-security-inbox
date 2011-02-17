X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/17/7
Message-ID: <956948156.90449.1297975227221.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 17 Feb 2011 15:40:27 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE id request: telepathy-gabble
Content-Type: text/plain; charset=utf-8

As best as I can tell, we should only need one ID:

CVE-2011-1000
• In jingle-factory.c, a malicious contact can trick Gabble into relaying media
through a server of their choosing. This allows any contact to intercept your
audio and video calls (as opposed to only attacker who can passively intercept
your network traffic, which is the normal state of affairs for unencrypted
calls).

If you think any of the others deserve an ID, let me know.

Thanks.

-- 
    JB

----- Original Message -----
> Can I get a CVE id for:
> https://bugs.freedesktop.org/show_bug.cgi?id=34048
> 
> Thanks!
> 
> --
> Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG:
> 0xA0A0AAAA
> For security reasons, all text in this mail is double-rot13 encrypted.
