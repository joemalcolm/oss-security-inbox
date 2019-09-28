X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/28/3
Message-ID: <20190928103219.GJ16334@jumper.schlittermann.de>
Date: Sat, 28 Sep 2019 12:32:19 +0200
From: Heiko Schlittermann <hs@...littermann.de>
To: oss-security@...ts.openwall.com
Subject: Re: Exim CVE-2019-16928 RCE using a heap-based buffer overflow
Content-Type: text/plain; charset=utf-8

Dominic Taylor <dom@...blepoint.com> (Sa 28 Sep 2019 02:56:11 CEST):
> Hi Heiko,
> Good find, but why no embargo?

The issue was reported publicly via our bugtracker. No point in having
an embargo.

> Presumably because privs are dropped so this is maybe not as bad as previous?

Yes, the privs are dropped in the reported case, but there may be other ways to call the
vulnerable function.

    Best regards from Dresden/Germany
    Viele Grüße aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

Download attachment "signature.asc" of type "application/pgp-signature" (489 bytes)
