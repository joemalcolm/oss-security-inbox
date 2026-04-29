Received: (qmail 28011 invoked by uid 550); 29 Apr 2026 17:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27987 invoked from network); 29 Apr 2026 17:12:33 -0000
Date: Wed, 29 Apr 2026 17:12:21 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <afI79Ruw_74rdrxq@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <dc97be31-0762-4a91-a1ad-6795abaab8a9@foolishgames.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="00SnDYAUELKjs7EZ"
Content-Disposition: inline
In-Reply-To: <dc97be31-0762-4a91-a1ad-6795abaab8a9@foolishgames.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

--00SnDYAUELKjs7EZ
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2026-04-29 00:29:35 -0400 (-0400), Lucas Holt wrote:
[...]
>At a minimum, if you're going to go public, use your AI to include=20
>a possible patch too.=C2=A0 Don't just drop work on a random person=20
>because you got to find it first.=C2=A0 That's not cool.

While I agree with this (and your earlier points), I was coming at=20
the question from my perspective as an upstream maintainer and=20
vulnerability coordinator of large/popular projects receiving these=20
reports. We operate under a 90-day maximum embargo already, but:

1. our processes are bursting at the seams under the current flood=20
    of reports, and trying to manage them all in private is leading=20
    to more accidents breaking our embargoes before things are ready=20
    or distros/deployers have been given sufficient advance warning

2. in order to deal with the increased volume of reports, developers=20
    are turning to public LLM services easing their burden even=20
    though the reports are still under embargo

3. switching reports to public immediately on receipt allows us to=20
    crowdsource help from a broader swath of our community rather=20
    than relying solely on overwhelmed vulnerability coordinators and=20
    security-focused maintainers

So yes, we *could* choose to switch reports to public immediately in=20
cases where we expect that others are finding the same bugs with the=20
same LLM service and just not telling us, or where developing a fix=20
without assistance from an LLM in sufficient time is too burdensome=20
on maintainers (many of our maintainers have become so reliant on=20
"LLM assistance" that they are resistant to being told they can't=20
use those for fixing embargoed vulnerabilities).

In addition to the great replies on this thread (thanks everyone!),=20
I also received a few bits of feedback from other colleagues in=20
favor of the status quo:

A. Some "enterprise" LLM license agreements claim the LLM operator=20
will prevent the LLM "learning" details from the user's prompts or=20
its own responses, or will guarantee knowledge the LLM acquires in=20
one customer's context won't bleed over into another customer's=20
context. (Whether you believe them or think they're competent enough=20
to do it correctly is another matter, of course.)

B. The timeframe for newly acquired data making it into the model in=20
these public LLMs is on the order of 6 months currently, so far=20
longer than our maximum embargo at the moment. (Not that I trust=20
it's the same for all LLM services, or will remain that slow in the=20
future.)

C. Public LLM services are slow and expensive, so claiming someone=20
else can trivially find the same vulnerability using the same LLM is=20
equivalent to saying that with enough time and money someone else=20
can find any vulnerability.

Anyway, for now I suppose I'll continue reminding my colleagues to=20
avoid keeping things under embargo unless necessary, and be careful=20
with their use of public/shared LLM services when writing advisories=20
or developing fixes under embargo. Thanks again to everyone who=20
weighed in!
--=20
Jeremy Stanley

--00SnDYAUELKjs7EZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmnyO+1fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkRNxAAzMB+IaUwXIX+tmx6KvvWQhvAArb8Oc9pPFXXskJlrnDrtXdFeFawEpO1
qVtVk41ED+s8ULh02HZhUnpG53GibzIzAnoU7uq3jXSHPmZ6uiE+S7H7imXxY2Xa
zxtPce/V3LDhXtuM9dSiF8etWWSeSIJzT4ft0r+H4R12w99TIYcwJhLk5XlxRY21
TWvALN97V528TnCYplLN93FlPNsRSPrLn0GAdE8KMzWXpl5oTYlTS/gfCzeG+fwX
+PoXjouQNsgg+W1pNGwepHyVpz555o+mqnvCxVH5/sDwvHlkoqosn5pwctL7/0av
EZQrO7gJZ2PV6VehscT9G9SVvMnSthhBfZY2PKec+/bUqImazAnb5ZTwLuI3PF5H
VCtfE1WYWt/ugED+Y2JTdZPikzzmHjXobNqZEmioa0bF/ZiwDlNY/ehwtOXY4oLx
iZQnxz1SydNtW+OFUEUJq23XA26X6kcRJErPi6jyDsJvWY0WTPAWUZlG1eGMnMpM
ggPdy2GSYbIz25WTSfOaRVgWhPyStHzjGqvwfuWEiQLf9Q42nFpNh8Kt9awG/oVh
iMohjrtet28r78qEZHf+d2Mb8ucXmNEsOxjFSp0YyX3MkERth1FfD0QSg4Wc8cV6
2HyXTC5ZBi/c2snxfU2MLJdQk/2yoDI+cJTHSq/Fk7sSxEy1Yqc=
=R8Dl
-----END PGP SIGNATURE-----

--00SnDYAUELKjs7EZ--
