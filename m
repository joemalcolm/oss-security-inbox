X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/23/9
Message-ID: <CACYkhxj4WS_69bKpSPj_9b+yrTN=rbVhXZeSp=ZCgtE5AjpPbQ@mail.gmail.com>
Date: Wed, 23 Jul 2014 22:46:16 +1000
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: ecryptfs-setup-private nitpick
Content-Type: text/plain; charset=utf-8

On 23 July 2014 22:37, Michael Samuel <mik@...net.net> wrote:
> Perhaps I'm wrong, but it appears that at-least on my system encrypted
> swap comes up very early in boot - maybe even before the urandom rcS.d
> script.

Ok  don't mind me - ecryptfs-setup-swap puts /dev/random not
/dev/urandom in crypttab.
