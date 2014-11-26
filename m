X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/26/27
Message-Id: <E1Xtkoj-0006C0-49@rmm6prod02.runbox.com>
Date: Wed, 26 Nov 2014 17:12:09 -0500 (EST)
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: "oss-security" <oss-security@...ts.openwall.com>
Subject: Re: Apple goto fail - lessons that should be learned
Content-Type: text/plain; charset=utf-8

On Wed, 26 Nov 2014 21:01:09 +0100, Hanno Böck <hanno@...eck.de> wrote:
> I've written something similar on POODLE (and BERserk), not sure if I
> posted this here before:
> https://blog.hboeck.de/archives/858-Dancing-protocols,-POODLEs-and-other-tales-from-TLS.html
> 
> Not surprisingly I come to somewhat similar conclusions (protocol
> downgrade protection, encrypt-then-mac etc.)

Excellent!  I've added a citation from my POODLE paper to your post.

> But the most important conclusion from POODLE is imho: Be very careful
> with implementing workarounds for broken hard/software - and don't do
> them if they compromise security.

Agreed.  It's going to be hard to do that in practice, I fear.
Thankfully, it looks like SSLv3 will disappear, reducing the pressure to do that
for TLS.  That will help.

--- David A. Wheeler
