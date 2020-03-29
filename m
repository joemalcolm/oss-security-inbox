X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2039" "Sunday" "29" "March" "2020" "22:56:10" "+0200" "Matthias =?ISO-8859-1?Q?Bl=E4sing?=" "mblaesing@doppel-helix.eu" "<0ab0448134c222126b15f32246bc73d308836933.camel@doppel-helix.eu>" "63" "[oss-security] [CVE-2019-17561] \"Apache NetBeans\" autoupdate system does not fully validate code signatures." nil nil nil "3" "2020032920:56:10" "[oss-security] [CVE-2019-17561] \"Apache NetBeans\" autoupdate system does not fully validate code signatures." (number mark "U       mblaesing@do Mar 29   63/2039  " thread-indent "\"[oss-security] [CVE-2019-17561] \"Apache NetBeans\" autoupdate system does not fully validate code signatures.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17561] \"Apache NetBeans\" autoupdate system does not fully validate code signatures." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28277 invoked by uid 550); 30 Mar 2020 10:46:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22223 invoked from network); 29 Mar 2020 20:56:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=doppel-helix.eu;
	s=201912; t=1585515371;
	bh=w+8L5WQxUq6xwawaAprRN1Rig8ZyTM06aI/2lIJoIoM=;
	h=Subject:From:Reply-To:To:Date:From;
	b=ByXJb3oaxck5tpR1cnh8JUquUzQMtvwbAtFhZmrriR9R9z3O39w1NjwftdP41egR2
	 HSiRnlY+ur9/ftj1wJ39mZthzjSv9Uo8LHfV1TGRq5OwB6Xx2BkeWR16nKUmRypCmB
	 zzbeZpr3oYSfEzKYYJWb/mPpEFbZcgSa1vFaEKYXG8HgJArniYs8b4qTa3kp5lQBSW
	 ftqfNCrYXK5M5vDqF/T39UmRNVdnD8JUnbRPhH/U5om7rUjkXuLMOijnO3ywbreZbM
	 EVXQ/WKWOdcrKnHZS+amJilCBpTOAc1AxDrQSzWmFy31oMf7V0LAq1bYoq8mJRXN2B
	 F5wfP1nqThXxg==
Message-ID: <0ab0448134c222126b15f32246bc73d308836933.camel@doppel-helix.eu>
From: Matthias =?ISO-8859-1?Q?Bl=E4sing?= <mblaesing@doppel-helix.eu>
To: dev@netbeans.apache.org, oss-security@lists.openwall.com, 
	security@apache.org
Date: Sun, 29 Mar 2020 22:56:10 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-jyaSRzU2LJWgdn4hEGoV"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: [oss-security] [CVE-2019-17561] "Apache NetBeans" autoupdate system does not fully
 validate code signatures.

--=-jyaSRzU2LJWgdn4hEGoV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-ID
------
CVE-2019-17561

Summary
-------
The "Apache NetBeans" autoupdate system does not fully validate
code signatures.

Versions Affected:=20
------------------
- All Apache NetBeans versions up to and including 11.2
- NetBeans releases before the Apache transition started may be
  also affected

Description:
------------
The "Apache NetBeans" autoupdate system does not fully validate
code signatures. An attacker could modify the downloaded nbm and
include additional code.

Mitigation:
-----------
- Disable autoupdates
- Install only plugins from trusted sources and validate the
  downloads by checking signatures and/or comparing checksums
  from trusted sources
- Update to NetBeans 11.3 by downloading the release, verifying the
  signature and manually installing it

Credit:
-------
The investigation was triggered by a proof-of-concept submitted by
Emilian Bold

--=-jyaSRzU2LJWgdn4hEGoV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE+nkp+DrUTEWQ9sxoFcccCk4Ljt0FAl6BC2oACgkQFcccCk4L
jt1yfg//aQOJQ2Vq1aBJfeTNoq7qzhXL20w9O/Gp/63FSGFskT3Sln1zuG5gA2JI
bRbwp4C7LPibuGZ6pna5jlieP5oNYFMmUc3vRId6f+Y1clR1IpqAu3FwaUCedni4
SaE80r3aezarcUV4EDrHxmSyV3nChWL2zrNfuKdF0qFcuKUtJFZCWzltBsYylPsM
Tz9v4a8cbJgEdH8ehfR5EnKn7VtGeJVsl+tMp3R8FyLYFqRmBjwT53qz5XHWrXme
mULFXJ7aIOpFRVZ3/rHjuFSeE/MyIry5CVmgE+WS+PNfy5tjSdWPCfz9NRLgXTCT
cM3mOvy5MC2OiodpkB2NNkiaFlLhvswGzK/2/cKsW/yu+6PFPwc/gHhRzlWXmuzz
s+Q2hhUQdcrCAu4pPIwHjDYah8DElEg0HWWWKeGi8JZheqXx+qFTGrQ3lEGwBZkk
so00KFgGsyerftakcUpAgRP0KQEsLeOPisxYTb8D5LQEzymnRpcL6Yl9kJ8oxYnf
5istLhyl+zenTU2MaKqhdbqEZo/gUvFkPDU6OuYDnWEf4iqeZnTupMYpvii2zd8f
wyeb5Tkank18xhCJplH9wXWWvhc6iAmX8lAQsuq4NHCqFALmoX66vN5hYYgd+NyZ
NVxwW7A5yuh86pJdKMk99fGYvghn8Nn1RWfCQmEmXPiImoev8QA=
=Q38g
-----END PGP SIGNATURE-----

--=-jyaSRzU2LJWgdn4hEGoV--

