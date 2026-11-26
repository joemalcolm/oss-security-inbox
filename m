X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/4
Message-ID: <CAKXLc7dYOOKObu7GY=FH8y2Bm77s=G4XW-=ee8yaqL51fgJBCw@mail.gmail.com>
Date: Thu, 26 Nov 2026 12:47:21 +0100
From: Kalin KOZHUHAROV <me.kalin@...il.com>
To: oss-security@...ts.openwall.com
Cc: cve-announce@...urity.metacpan.org
Subject: Re: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

On Wed, Nov 25, 2026 at 1:48 AM Robert Rothenberg <rrwo@...nsec.org> wrote:
>
> ========================================================================
> CVE-2026-122093                                      CPAN Security Group
> ========================================================================
>
>          CVE ID:  CVE-2026-122093
>
>    Distribution:  Strong-Random
>        Versions:  through 0.96
>        MetaCPAN:  https://metacpan.org/dist/Strong-Random
>
>
> Strong::Random versions through 0.96 for Perl allow every later rand
> output to be predicted from three earlier ones
>
I see a lot of Perl (CPAN) CVEs lately, which is good on its own, but
if there is some kind of centralized (semi-)automated approach, I
think it will definitely help add some context to what the module in
question is.

For example, I see that Strong::Random has just been released, under
"unknown license" (more of a proprietary, if "Commercial support by
Author for Open Source!" counts as a license) and it's only documented
use so far is another project from the same author (
https://metacpan.org/dist/Crypter ). While this is definitely out of
scope, just a 10-s look at Crypter shows it passes plain-text
passwords as command arguments (aka
https://cwe.mitre.org/data/definitions/214.html)...

Anyway, the idea is that there are probably thousands of CPAM modules
that are (yet) in this situation (not widely used), so it makes sense
to add some statistics when such a CVE is mentioned on a ML like
this/therse. And maybe just contact the author first/only anyway.
Unless hurding large number of filed CVEs is becoming a new kind of
cryptocurrency ;-)

Cheers,
Kalin.
