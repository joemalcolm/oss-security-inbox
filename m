X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/4
Message-ID:  <ME2P300MB50556864DC3D67887C4F913589EEBC2@ME2P300MB505568.AUSP300.PROD.OUTLOOK.COM>
Date: Sun, 13 Sep 2026 10:35:02 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: Lexi Groves <contact@....fail>, Werner Koch <wk@...pg.org>
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

Sam James writes:

Since the slides quote me I'd like to also include (some of) the rest of the
what I said, not just that one sentence:

-- Snip -

The second one is the format, best summed up by Thomas Ptacek's comment at
https://news.ycombinator.com/item?id=46404339 which begins:

  A thru-line of some of the gnarliest vulnerabilities here is PGP's insane
  packet system, where a PGP message is a practically arbitrary stream of
  packets, some control and some data, with totally incoherent cryptographic
  bindings. It's like something in between XMLDSIG (which pulls cryptographic
  control data out of random places in XML messages according to attacker-
  controlled tags) and SSL2 (with no coherent authentication of the complete
  handshake).

For an example of this, consider compressed signed data, so you've got an EDI
transaction that you want to compress (it's a large blob of fixed-format text)
and then sign.  With CMS (Cryptographic Message Syntax) you get:

        Sign( Compress( Message ) )

With OpenPGP it's a crapshoot.  You'd expect something like the above but what
GPG does is:

        Compress( One-pass Sig || Message || Signature )

which is valid but pretty unexpected.  And then any application needs to have
complex and awkward logic to process these things as per tptacek's comment.

To appreciate just how bad it really is, grab a copy of RFC 9580 and see how
long it takes you to write down the sequence of fields (not packets, fields)
that you'd expect to see in a message encrypted with RSA and signed with
Ed25519 (to grab the two opposite ends of the cryptographic spectrum) as well
as the cryptographic bindings between them, i.e. which bits get hashed/signed/
processed, and also provide a confidence level in your work.  I suspect most
people won't even get to that, the answer would be "I can't figure it out".

A solution for mission-critical use like authenticating downloaded binaries
would be to do two things:

1. Create an app that does just that and nothing else: Here is a blob of data,
here is a detached signature, is it valid for the data?

[...]

-- Snip -

My code has just been through an LLM audit (still going through everything,
eventually I'll post a longish writeup, the results were pretty impressive)
and the one serious issue that's been discovered [0], out of all of { TLS,
SSH, S/MIME, SCEP, X.509, EAP, OCSP, CMP, CMS, etc } is... in the PGP code,
and it's directly caused by the OpenPGP jumble-of-packets data format and the
Rube-Goldberg code you need to handle it.  In this case it's because you need
to guess at what's coming up next and my code guessed wrong, something that
couldn't happen with The Other Format, CMS, because there's only one way to
order things in a message.

As an aside, since XMLDSig got mentioned, the one format I never ever ever
want to touch is XMLDSig.  That's not a signature format, it's a roadmap for
implementing future CVEs.

Peter.

[0] For anyone using it and about to panic, you have to sequence a series of
    function calls in a very specific way to trigger it, if you're using it as
    per the manual or sample code this won't occur, and it'll be fixed in the
    next release to remove the packet-guessing that caused the problem.

