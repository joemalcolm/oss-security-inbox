X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2702" "Wednesday" "6" "September" "2017" "17:15:00" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87ingva5rf.fsf@fifthhorseman.net>" "66" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "9" "2017090621:15:00" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        dkg@fifthhor Sep  6   66/2702  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11415 invoked by uid 550); 6 Sep 2017 22:01:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11388 invoked from network); 6 Sep 2017 22:01:46 -0000
In-Reply-To: <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com> <87wp63jgxn.fsf@fifthhorseman.net> <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
Message-ID: <87ingva5rf.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 06 Sep 2017 17:15:00 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation
To: Michael Orlitzky <michael@orlitzky.com>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

On Fri 2017-08-18 13:12:03 -0400, Michael Orlitzky wrote:
> I'm scared to reply because this is guaranteed to turn into a "you
> should just use systemd, grandpa" holy war.

I'm pleasantly surprised to see that that didn't happen :) And thanks
for your thoughtful response.

fwiw, i wasn't thinking specifically of systemd -- there are several
process managers that do more sensible things, including those in the
daemontools lineage (e.g. runit) and others.  Even sysvinit's /sbin/init
itself can monitor single-process daemons without any trouble or need
for a pidfile.

> If we had it all to do over again, I would probably agree with you. But
> there are still users with simple init systems, and many of those users
> are happy (or stuck) that way. If you want to convince upstreams to
> delete their PID file code and drop support for the associated init
> systems, you'll have to offer them something to make up for the users
> they'll lose.
>
> For some projects, "the code gets simpler and to hell with those users"
> will suffice. But for big projects where actual money is involved,
> you'll have a harder time.

Yup, these are the tradeoffs.

But i think future reports of problems with pidfiles (e.g. your helpful
cleanup of mimedefang -- thanks!)  should always include the suggestion
to disable pidfiles entirely and to encourage developers who must
implement them to ensure that they're only an extra feature, for use
with otherwise limited service managers, and perhaps to be compile-time
disabled.

Having a pidfile by default ought to be treated as an increase in the
attack surface in general, since they're so easy to get wrong.

Thanks for your work in tracking these down and cleaning them up,
Michael.

Regards,

          --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmwZVQACgkQFJitxsGS
Mjcy/BAAxDAyagxFnnmpfI80w9/eLCmBJPoFx3LITCDvKLsKPDhTy1ID5ixd7QzQ
JbKm2VzSd6IgVD0lIcjXRypl2RDeUPBMmZhdwr3HibSCC8SusYQiyFLI7aAJgPm/
zVr9wYnXnOzu1bd3Wca91wGZTOP5X+T4WF/DCG+5uLxmllr0nrkbxjpush3tH/dD
uzgIR73cyxXni20OVhZ1cgRwqp5lu5Gwlh49QZ99YFeiPLpK+N9xUthKCspe3yAP
CrXmxjHO12X+rLWm2yjbYEuPZG8dCTRb0IrkPGWFGJmphcTAEbPdmbnbfJpfUu0h
YCNCtfRNzAywrbgrRFtEQ4h+8drBTSSoGyfBeWJOGgnf/yH7gLxXzPqyA2gdciwB
gzeKtYmV68iLkxTYuaM+ClONKMjfylgD8ZulNMdWYBdNG0+IWiN8arwP1dD4b2UV
ZYVJGduVog59JQu9Beq6wPdInRiJ4cCVKl2XeDUfy3rPyDk62FVKCbz2PylgIt9G
2JCIBi/4yB+FRfUYXHAE+kkAfl7R2i0FApxxlZ9q+qI/xejp4wduFBlahvKg3/O1
St7XZru0iJKGl7YB8Rw0nuvUh/RGSSokLcMbZmSlUBdE+SxdJWBlbJ+f3rBofD2N
fpTSjaByQ8LTghjFoi8MTtb9ymwSRdAOXQCI5FEa6cj78DhUwZk=
=O1jk
-----END PGP SIGNATURE-----
--=-=-=--
