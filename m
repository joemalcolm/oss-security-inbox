X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1636" "Monday" "24" "June" "2019" "17:53:41" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20190625005341.GA26741@hunt>" "46" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062500:53:41" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "U       seth.arnold@ Jun 24   46/1636  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30065 invoked by uid 550); 25 Jun 2019 00:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30047 invoked from network); 25 Jun 2019 00:53:54 -0000
Message-ID: <20190625005341.GA26741@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
 <E1hfSKS-00015J-V5@rmmprod07.runbox>
 <20190624193048.GA8039@espresso.pseudorandom.co.uk>
 <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 24 Jun 2019 17:53:41 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 24, 2019 at 07:15:20PM -0400, Alex Gaynor wrote:
> sounds very hard to me, at least without requiring more user involvement
> than ASAN requires right now. This seems like a very cool area for academic
> research though!

Have you tried the gdb exploitable plugin yet?

https://github.com/jfoote/exploitable

Some of the tools written around AFL have included support for running
exploitable directly on the fuzzer results and helping to prioritize,
roughly, in what order the specimens should be worked on:

https://gitlab.com/rc0r/afl-utils

with a direct link to a pretty screenshot:

https://gitlab.com/rc0r/afl-utils/raw/master/.scrots/afl_collect_sample.png

I assume like most such tools, this is another case of being a good start
but not nearly as reliable as a knowledgeable human. It's also probably
completely useless for issues that aren't memory-safety issues. But it's
something that exists today and may be helpful.

Thanks

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl0RcIsACgkQ8yFyWZ2N
LpeMDAf+Kd18WGs/RF9GNUGd1URmxeksKotHB1QnQ6ir9aoLhOxBPBri8FOVYKiW
vMlHM0A2ACm7GUUq505w0kTp2vfs8KQvi1gW8R0BL4nvVG8HEWBz3bvvRsAUMiLo
Az4cKVSgBPsK4OH5cDWu05dnCBYNFyyA30A5x2ybaOXEdeLsC2Xkighc00n8P0HX
KJXJHhlmtAMiuaPxO/RfyvEBn1xvwYmOwErMihud5KY5hqVukhxjf7q3IoXcjdD5
OQyMD1gW6Mot2tbdH1mNjrhC32Ka9F+buQ467VuN1bjkauQwQzT/oGEMuvIvdBjR
wloUJITb9jSpEHQhUDLFg5PeGdF9CQ==
=+kaJ
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
