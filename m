X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/4
Message-ID: <20261021055455.GA20935@openwall.com>
Date: Wed, 21 Oct 2026 07:54:55 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

On Tue, Oct 20, 2026 at 03:44:34PM -0400, Jeffrey Walton wrote:
> On Tue, Oct 20, 2026 at 1:07 PM Valtteri Vuorikoski <vuori@...com.org> wrote:
> > A test website is available at <https://emudhra.we-have-a-problem.com/> which
> > also lists mitigation options for systems which do not receive CRL or equivalent
> > revocation updates. Effectively: disable the root CAs "emSign ECC Root CA - G3"
> > and "Comodo AAA Services root" in your operating system trust store, while being
> > mindful of collateral damage. The Comodo root in particular has been widely used
> > in the past.
> 
> It is probably worth noting the Comodo AAA Services Root removal is
> not related to the eMudhra incident.

Are you sure?  Doesn't it cross-sign the compromised intermediates?

> The issue with Comodo AAA Services Root was the removal of the TLS
> trust bit by browsers because the root is too old.  The current
> CA/Browser (CA/B) Baseline Requirements (BR) policies say a root has a
> maximum lifespan of 15 years from creation date.  Comodo AAA Services
> Root was issued in 2004, so it violates current policy.  Also see
> <https://cabforum.org/working-groups/server/baseline-requirements/>.

This may be right, but perhaps the urgency to remove it now is related
to the eMudhra incident?

Incidentally, it is not yet removed in NSS 3.131.1, which does remove
the emSign certs.  An omission to fix in a further update urgently?

Alexander
