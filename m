Received: (qmail 22293 invoked by uid 550); 28 Apr 2026 14:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22252 invoked from network); 28 Apr 2026 14:58:41 -0000
Date: Tue, 28 Apr 2026 14:58:29 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <afDLFWVMK-r70PB0@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DXbvcO6J7l8O5fKZ"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] Coordinated Disclosure in the LLM Age

--DXbvcO6J7l8O5fKZ
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

As I'm sure is the case for everyone, the projects I work in are=20
under a seemingly unending deluge of vulnerability reports from=20
researchers using LLMs to mine for security gold in our software. At=20
the same time, we see maintainers on our projects relying on=20
LLM-oriented tools to develop fixes for vulnerabilities and compose=20
prose for advisories.

While I take a moment to catch my breath, this new Bizarro World=20
we're all living in has gotten me thinking about the risks of public=20
LLM services to embargoed vulnerability handling workflows and=20
traditional coordinated disclosure. The operators of these LLM=20
services are known to feed prompts and results back into their=20
training data, presumably making it faster and easier for the same=20
information to be found later by other users of the same service.=20=20
Would keeping embargoes short help to mitigate related risks of=20
parallel rediscovery or outright disclosure to other LLM users? It=20
seems to me that there must be some inherent lag in this process,=20
but how much?

I'm sorely tempted, both due to the increased volume and the risk of=20
premature disclosure, to just assume that any vulnerability reported=20
as a result of research using an LLM is trivially discoverable by=20
others, and give up trying to pretend there's any point to working=20
it under embargo. Similarly, it makes sense to me that patch=20
development and descriptive prose shouldn't be produced with LLM=20
assistance for any vulnerability that is being worked under an=20
embargo.

I can't be the only one whose been pondering this... what positions=20
have the rest of you taken?

[P.S. No LLMs were exploited in the making of this message.]
--=20
Jeremy Stanley

--DXbvcO6J7l8O5fKZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmnwywxfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkVhxAAmNhM7/lzY+WqdIsF2e6U6t5RKHCmIx6k2ciyvWmdhenDYgvhSseZ7Tjr
CtjS9ZKngnIlhCzTZOeExvmcg6sqR0ZLuKy5kqeZxIzhFjpBLP349DdcBF/Gwffl
JdDWsoAKbm0Ruz78aaJDKjs4xo4i+ze4juOUU1y/NxYcZmcbCSFqHKxltOqX5qxo
nuCNFJq6bdhCV+uNJFRv8j1CzimJK71IQXyPQM+Z9dM6ygqwtMBOT2w/tDtqkYKo
2jOk03ALYbgNe6C7oEWpEhyW5nqr5An773LuZ921kZcg2lFXh1Qgu7NsJhVMrp0c
2e8IxBDM5Wy/Cw6VCFVQGElQ4rnGAxtQjnGnuixbrcNMeFyQubUIRfEvLA6VbKq9
vZ4P9ih++LpUfGn1ek8Dlwlt50YsbAoDbX+z5Ibap1yY6JoaGfPe945G5+EkoBRW
3OnGJrOMyL5E5OfDoE/laEntkJixozWcJcGePgJd3NvHCTut0NyRqXESXBWy1DlJ
qJlpjubMy0DubLMSVt2t6XGJGogiKrGVgYaKgxfwf5+DVyNkhxPInE1+a1SH8+xp
uNqWd0e5mIHZBb1r6XnXLnGvTKgsKt0d3Pb3o0to+jxAd2mrL6M7YnUXQXA2tszW
MX1bFtzJrumFFkcNc8773rZG2PQIZ+xa1ggC8qb9bNWXOgNGgG8=
=7glH
-----END PGP SIGNATURE-----

--DXbvcO6J7l8O5fKZ--
