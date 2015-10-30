X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3085" "Friday" "30" "October" "2015" "13:05:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151030170549.4FECE6C014C@smtpvmsrv1.mitre.org>" "71" "[oss-security] Re: CVE Request: Openpgp.js Critical vulnerability in S2K" nil nil nil "10" "2015103017:05:49" "[oss-security] Re: CVE Request: Openpgp.js Critical vulnerability in S2K" (number mark "        cve-assign@m Oct 30   71/3085  " thread-indent "\"[oss-security] Re: CVE Request: Openpgp.js Critical vulnerability in S2K\"\n") "<CAGq7Pojhq-Cnm97H=D8TOm8K+Z2CFssGAUyyY==WonqhWCwVBg@mail.gmail.com>" ("<CAGq7Pojhq-Cnm97H=D8TOm8K+Z2CFssGAUyyY==WonqhWCwVBg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21966 invoked by uid 550); 30 Oct 2015 17:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21945 invoked from network); 30 Oct 2015 17:06:01 -0000
In-Reply-To: <CAGq7Pojhq-Cnm97H=D8TOm8K+Z2CFssGAUyyY==WonqhWCwVBg@mail.gmail.com>
Message-Id: <20151030170549.4FECE6C014C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 30 Oct 2015 13:05:49 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Openpgp.js Critical vulnerability in S2K
To: g.hollestelle@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A vulnerability in the S2K function of OpenPGP.js allows to produce a
> predictable session key without knowing the passphrase.
> 
> An attacker is able to create a private PGP key that will decrypt in
> OpenPGP.js regardless of the passphrase given.
> 
> Also using this flaw it is possible to forge a symmetrically encrypted PGP
> message (Symmetric-Key Encrypted Session Key Packets (Tag 3)) that
> will decrypt with any passphrase in OpenPGP.js. This can be an attack
> vector if successful decryption of such a message is used as an
> authentication mechanism.
> 
> The bug is fixed with a strict check on unknown S2K types.
> 
> https://www.mail-archive.com/list@openpgpjs.org/msg00918.html
> https://github.com/openpgpjs/openpgpjs/commit/668a9bbe7033f3f475576209305eb57a54306d29

Nobody has commented on this, so we'll conclude that "successful
decryption of such a message is used as an authentication mechanism"
is a plausible use case, and assign a CVE ID: CVE-2015-8013.

As far as we know, the scenario might be something like:

  if a user symmetrically encrypts a message of "hello" with the
  hard-to-guess passphrase of secret0, then an automated process
  grants them access to uid 0

  if a user symmetrically encrypts a message of "hello" with the
  hard-to-guess passphrase of secret1, then an automated process
  grants them access to uid 1

  etc.

Although there is a communication channel from the user to the
automated process, there is no way for the user to send a helpful hint
about what passphrase should be tried. The automated process only
tries its own set of hard-coded passphrases. For this reason, it is a
vulnerability if a user is able to construct (intentionally) a
properly formatted message that seems to be encrypted in a useful
way, but actually isn't encrypted in a useful way.

This vulnerability (unlike the
https://github.com/openpgpjs/openpgpjs/wiki/Cure53-security-audit
vulnerabilities) is not yet referenced from the
https://github.com/openpgpjs/openpgpjs/blob/master/README.md page.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWM6LRAAoJEL54rhJi8gl5C70QANEfTQ+t7ws0lPSPa1qJ0h+0
a1EsXsyF28Og6mDQnZt4Y+Fd2L1WaXpdEzplf8Q7IZt/zPL0d7UOPG9A7js51M7N
mXfPAEZSUSHCpeSYEhwnoSGnsQpIhXBiyduKt/9MaCgSXux/30pqOOOU7TU1Xeo/
3ByWnZavS9YuKFQP3ChWyzh8wGuxMe9OmFkFBzjAwyb5gZ57AtpbZHqHXdBDGJiE
OHSMp5cbM/K7Jtr0wQCidkXsMyHrlKo1PV4HwoamFtdKxzmUrLUSSe3otnFWkBDt
cMc++xIjlk98SKZhkXGhEcrSWuqTKGZ0RG3t/28pnO4rc2N89IO4hGM8hmnoUdxr
S81pzyG1VyhWbXspvfM+Dk5JGZEWH2EgxccGHatT/jYSAg1CBYgZcS7rVCSiOCqp
TcwXGS1KY46GpTDSjj0muSazFF58x9I8PCXkPXbAv6rIBh0rwaB/OJs81LAderyk
YO93p9CiuyD/9ltTbyb3ym0/qeaiQhjupc28jbFm2PAh5f2zUm1fmUx8eGX5KY0T
1f8QpUq715VawQykfMLnFYoTHBf6Zt9K8RGWiEMMrZ4PdVjqYu0A/UfXzIuSlBgP
w2vVwDpqFbAc2OAfFRfiYln8gBzgWrqVeVeh1Dt+23YDmessYKZ2CtjISS+SaUzq
ntQ5dTRst2lyzmzSciSB
=RXDl
-----END PGP SIGNATURE-----
