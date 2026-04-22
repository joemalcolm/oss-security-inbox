X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/7
Message-ID: <20260422153514.G-euM1kA@steffen%sdaoden.eu>
Date: Wed, 22 Apr 2026 17:35:14 +0200
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2017-20230: Storable versions before 3.05 for Perl has a stack overflow
Content-Type: text/plain; charset=utf-8

Sam James wrote in
 <87bjfcnh0n.fsf@...too.org>:
 |Sam James <sam@...too.org> writes:
 |> Robert Rothenberg <rrwo@...nsec.org> writes:
 ...
 |>>         CVE ID:  CVE-2017-20230
 |>>   Distribution:  Storable
 |>>       Versions:  before 3.05
 |>>
 |>>       MetaCPAN:  https://metacpan.org/dist/Storable
 |>>       VCS Repo:  https://github.com/Perl/perl5/
 |>>
 |>> Storable versions before 3.05 for Perl has a stack overflow
 ...
 |> I'm always suspicious by default of anything involving
 |> serialisation. The perldoc for Storable [0] says:
 ...
 |> and later (between much other omitted text):
 ...
 |> Is this vulnerability valid in light of that? Thanks.
 |
 |In fact, the linked patch in the original message from Robert has in its
 |commit message:
 |> No CVE since p5p believes local Storable
 |> files are not exploitable.
 |
 |Has the p5p policy changed on this? If so, could the perldoc be updated
 |please?
 |
 |(My own view is that it should not change, of course.)

I am still disappointed because of CVE-2023-31486, for HTTP::Tiny
etc; it had a similar very clear and understandable policy
documented in the manual, but switched entirely because of
that "safe by default" policy.  Ie commit [77f557ef84698ef]:

  -B<By default, HTTP::Tiny does not verify server identity>.
  -
  -Server identity verification is controversial and potentially tricky because it
  -depends on a (usually paid) third-party Certificate Authority (CA) trust model
  -to validate a certificate as legitimate.  This discriminates against servers
  -with self-signed certificates or certificates signed by free, community-driven
  -CA's such as L<CAcert.org|http://cacert.org>.
  +B<By default, HTTP::Tiny verifies server identity>.

  -By default, HTTP::Tiny does not make any assumptions about your trust model,
  -threat level or risk tolerance.  It just aims to give you an encrypted channel
  -when you need one.
  +This was changed in version 0.083 due to security concerns. The previous default
  +behavior can be enabled by setting C<$ENV{PERL_HTTP_TINY_SSL_INSECURE_BY_DEFAULT}>
  +to 1.

That gives me an entire oil tanker, really.  For free, that is.
I know someone who uses TOFU for connections to the internet; he
seems to be under DoS, unfortunately, hard times; i wanted to
include a link to his software.  But what i mean is, do we really
sit broad behind a CA pool, and have given up on the rest?  Like,
even, MTA-STS, and what more to come in that area?  I mean, where
is TOFU mode in firefox, for example.  Wouldn't that make sense,
and they have myriads of database instances, anyway.  With
a timeout.  I mean, CA pool, a first class security relief.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
