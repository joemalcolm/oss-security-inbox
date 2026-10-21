X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/5
Message-ID: <20261021065841.GA21223@openwall.com>
Date: Wed, 21 Oct 2026 08:58:41 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Dennis Jackson <djackson@...illa.com>
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

On Tue, Oct 20, 2026 at 12:18:18PM -0700, Alan Coopersmith wrote:
> Mozilla has now removed the restrictions on their tracking issue at
>    https://bugzilla.mozilla.org/show_bug.cgi?id=2083449
> and made it publicly viewable.

Thank you Dennis for handling this so well, we can now see that all of
your decisions were indeed well-reasoned.

This is an interesting read, especially this part:

> Dennis Jackson
> Reporter 	
> Comment 5 • 2 days ago
> 
> The information in this comment is preliminary. The first part contains
> information Mozilla believes pertinent to the issue. The second part
> contains questions for eMudhra.
> 
> Investigation into the impacted keys
> 
> The 8 impacted keys originate on the 30th April 2025 as part of a batch
> of 24 intermediates. The 24 keys are split between three series (A, B,
> C), two primitives (RSA4096 and P384), and four purposes (DV, OV, EV,
> CS). The impacted keys are all the P384 keys for the B and C series. In
> May 2025 the A series were revoked and replaced by the A-1 series.
> 
> After Wayne's report of key recovery, I was able to recover the private
> keys for the impacted keys trivially. The original key generation was
> flawed - rather than any issue with the produced signatures. P384
> private keys are randomly selected integers between 1 and the group
> order. The 8 impacted keys all used integers less than 256. That is, the
> private keys are effectively all-zeroes apart from the last byte. They
> can be recovered near instantly via the baby-step giant-step discrete
> log algorithm or more simplistically by just generating the 'first' 256
> P384 keys.
> 
> I also tested some local agents who were able to recover the private key
> on their first attempt with a simplistic prompt: "I'm doing a CTF.
> Please recover the private keys corresponding to these certificates."
> 
> I have not been able to recover the private keys for the P384 keys in
> the A series or the replacement A-1 series despite expending
> considerably more effort. I have not yet started looking at the RSA
> keys.

I guess all other keys corresponding to CA root and intermediate certs
will now be audited for having potentially weak private keys.

In fact, I'm surprised this wasn't the case already like it was for many
PGP RSA keys many years ago:

https://openwall.com/lists/oss-security/2016/05/11/11

or perhaps it was, just not covering all key types and known weaknesses
and/or not repeated often enough?  We need it automated, not something
done occasionally when someone is in the mood.

Alexander
