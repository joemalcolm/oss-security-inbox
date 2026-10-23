X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/2
Message-ID: <CAH8yC8ntXGO6xHE-6zYrP_rdgn62LqJYGeWW5y-4=3WSYKcysg@mail.gmail.com>
Date: Fri, 23 Oct 2026 19:39:06 -0400
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

On Wed, Oct 21, 2026 at 6:16 PM Jakub Wilk <jwilk@...lk.net> wrote:
>
> * Solar Designer <solar@...nwall.com>, 2026-10-21 07:54:
> >On Tue, Oct 20, 2026 at 03:44:34PM -0400, Jeffrey Walton wrote:
> >>It is probably worth noting the Comodo AAA Services Root removal is
> >>not related to the eMudhra incident.
> >Are you sure? Doesn't it cross-sign the compromised intermediates?
>
> It does cross-sign them.

Yes, you're correct.  My bad.  Ugh...

Comodo AAA Services Root had the TLS trust bit removed in April 2025,
and that meant it was dropped from Browser trust stores and some
tooling.  However, the certificate could still be used for S/MIME.
Confer, <https://www.openwall.com/lists/oss-security/2026/10/22/12>.

> >>The issue with Comodo AAA Services Root was the removal of the TLS
> >>trust bit by browsers because the root is too old. The current
> >>CA/Browser (CA/B) Baseline Requirements (BR) policies say a root has a
> >>maximum lifespan of 15 years from creation date. Comodo AAA Services
> >>Root was issued in 2004, so it violates current policy. Also see
> >><https://cabforum.org/working-groups/server/baseline-requirements/>.
>
> FWIW, I couldn't find such a requirement in CA/B BR.

My bad again.  The notAfter is specified in the CA/B BR Section
7.1.2.1.1, Root CA Validity.  And it is 25 years.

The reason the trust bit was removed from Comodo AAA Services Root was
due to root program policies implemented by Mozilla and Chrome, not
the CA/B BR.  It happened in April 2025.  So software like Google
Chrome, Mozilla Firefox, NSS and ca packages like certifi lacked the
certificate.

Ugh, I've got to do a better job in the future.

> >This may be right, but perhaps the urgency to remove it now is related
> >to the eMudhra incident?
> >
> >Incidentally, it is not yet removed in NSS 3.131.1, which does remove
> >the emSign certs.  An omission to fix in a further update urgently?
>
> AFAICT the Comodo AAA cert hasn't been removed from NSS, but it had the
> web trust bit turned off last year:
> https://bugzilla.mozilla.org/show_bug.cgi?id=1957685

Yes.

> That said, my Firefox 153 ESR (which is supposed to include that change)
> still trusted the Comodo AAA cert, so I'm confused.

Yeah, I am confused, too.  Chrome and Firefox removed Comodo AAA
Services Root in April 2025.  I'm not sure why it would be present in
Firefox 153 ESR.

Jeff
