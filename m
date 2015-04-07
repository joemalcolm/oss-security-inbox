X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2740" "Monday" "6" "April" "2015" "23:52:09" "-0500" "John Lightsey" "john@nixnuts.net" "<55236279.8060709@nixnuts.net>" "69" "[oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities" nil nil nil "4" "2015040704:52:09" "[oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities" (number mark "        john@nixnuts Apr  6   69/2740  " thread-indent "\"[oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <Uw3RrSYrr6KX>
Received: (qmail 17723 invoked by uid 550); 7 Apr 2015 04:52:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17696 invoked from network); 7 Apr 2015 04:52:37 -0000
Message-ID: <55236279.8060709@nixnuts.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="wHHcTL8DWL0GxpxHvRlbON0FEcgtwg5KJ"
X-Spam_score: -1.5
X-Spam_score_int: -14
X-Spam_bar: -
X-Spam_report: Spam detection software, running on the system "nixnuts.net", has
 identified this incoming email as possible spam.  The original message
 has been attached to this so you can view it (if it isn't spam) or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi there, A new version of Module::Signature, was released
    to fix multiple vulnerabilities. Module::Signature is used by most CPAN clients
    to validate PAUSE GPG signature files on the CPAN mirrors and GPG signature
    files inside individual Perl module tarballs. [...] 
 Content analysis details:   (-1.5 points, 3.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: metacpan.org]
Date: Mon, 06 Apr 2015 23:52:09 -0500
From: John Lightsey <john@nixnuts.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Module::Signature before 0.75 - multiple vulnerabilities
To: oss-security@lists.openwall.com

--wHHcTL8DWL0GxpxHvRlbON0FEcgtwg5KJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi there,

A new version of Module::Signature, was released to fix multiple
vulnerabilities. Module::Signature is used by most CPAN clients to
validate PAUSE GPG signature files on the CPAN mirrors and GPG signature
files inside individual Perl module tarballs.

The changelog for the 0.75 version is here:

https://metacpan.org/changes/distribution/Module-Signature

This commit fixes three flaws:

https://github.com/audreyt/module-signature/commit/8a9164596fa5952d4fbcde5a=
a1c7d1c7bc85372f

- Module::Signature could be tricked into interpreting the unsigned
portion of a SIGNATURE file as the signed portion due to faulty parsing
of the PGP signature boundaries.

- When verifying the contents of a CPAN module, Module::Signature
ignored some files in the extracted tarball that were not listed in the
signature file. This included some files in the t/ directory that would
execute automatically during "make test"

- When generating checksums from the signed manifest, Module::Signature
used two argument open() calls to read the files. This allowed embedding
arbitrary shell commands into the SIGNATURE file that would execute
during the signature verification process.

This commit fixes one more flaw:

https://github.com/audreyt/module-signature/commit/c41e8885b862b9fce2719449=
bc9336f0bea658ef

- Several modules were loaded at runtime inside the extracted module
directory. Modules like Text::Diff are not guaranteed to be available on
all platforms and could be added to a malicious module so that they
would load from the '.' path in @INC.


--wHHcTL8DWL0GxpxHvRlbON0FEcgtwg5KJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVI2KFAAoJEORPgBbTYw+JitoQANdYbkl2hrT0fYVJGItK30BY
I6NpqSPC3ClWXEWol7TrArp6MCK1hTDijEFBUycPtrWLuCUUG9b/KUGUL2LEN+Hm
Nlb9wGcKP6YCf8aFm4DIZ0nNTDH/TxE9UoJVeCtFQiujGC3mZs19dgmKrVLPL6/Z
OMoXieZu/jjpBMG0TC5eD80skyXIxORNSM1HQN5YtaFdoh8puGv9ra8mgyw6IUNb
6WfDf0bY3fqp2HQ51XkwEZIXiZcGTKS7uDu9zY1tlPcWChUljte32j8cqWTEtkCQ
5AoAZbtCgTzQZRzTnYXKuUQYNlKyont94E35WycWKhq5x/K+t2yPlG/s2hV+mxU/
8UIafMcD0yh4dNy06taDE5vN7vJ5eYuxZewPsIYvBPysb43eP1Kx7YZmbs52MD4B
UGvelFMmkikvViSwT0GzOcca4h0aDL+pfb9Ug9uoUYbdOlychR9n6bauL9RYESI4
H0unmZbhn3wd430vz8os6PQpNTwxCH5Eb0q4yXA7xpU2blzHmc2RWpNpVrnJwtuh
RFEBUqhINWGCPX0quwrxEQTeAEEFpRLuSjVkArpYB90DBuRup22iMgPp0rzutDbP
RFxWyeCvo1+rGnomxf3irOGOi3u+ctLG9jHGwjjSwpiA5wRtbhengbCaHa2KnfY2
zTjCsU4iyKUUkKZsS/uJ
=mU+0
-----END PGP SIGNATURE-----

--wHHcTL8DWL0GxpxHvRlbON0FEcgtwg5KJ--
