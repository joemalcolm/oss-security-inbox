X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/33
Message-ID: <CAH8yC8nkBEzKS379o5En5XnJo_-w6P-Nf=oEqJMB7Bw7Dd3m0A@mail.gmail.com>
Date: Tue, 20 Oct 2026 15:44:34 -0400
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

On Tue, Oct 20, 2026 at 1:07 PM Valtteri Vuorikoski <vuori@...com.org> wrote:
>
> A test website is available at <https://emudhra.we-have-a-problem.com/> which
> also lists mitigation options for systems which do not receive CRL or equivalent
> revocation updates. Effectively: disable the root CAs "emSign ECC Root CA - G3"
> and "Comodo AAA Services root" in your operating system trust store, while being
> mindful of collateral damage. The Comodo root in particular has been widely used
> in the past.

It is probably worth noting the Comodo AAA Services Root removal is
not related to the eMudhra incident.

The issue with Comodo AAA Services Root was the removal of the TLS
trust bit by browsers because the root is too old.  The current
CA/Browser (CA/B) Baseline Requirements (BR) policies say a root has a
maximum lifespan of 15 years from creation date.  Comodo AAA Services
Root was issued in 2004, so it violates current policy.  Also see
<https://cabforum.org/working-groups/server/baseline-requirements/>.

> The site also has a zip file with signatures using the private keys of the
> affected intermediate certificates, which verify using OpenSSL. Postings on
> social media claim that the private keys are easily discoverable.

Jeff
