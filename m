X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1833" "Monday" "7" "September" "2020" "16:28:14" "+0200" "Matthias =?ISO-8859-1?Q?Bl=E4sing?=" "mblaesing@doppel-helix.eu" "<8dad8ec32be2e14ecbeac7f6a46b39dfc650e4c9.camel@doppel-helix.eu>" "59" "[oss-security] [CVE-2020-11986] Opening a Gradle project with Apache NetBeans executes foreign script immediately" nil nil nil "9" "2020090714:28:14" "[oss-security] [CVE-2020-11986] Opening a Gradle project with Apache NetBeans executes foreign script immediately" (number mark "U       mblaesing@do Sep  7   59/1833  " thread-indent "\"[oss-security] [CVE-2020-11986] Opening a Gradle project with Apache NetBeans executes foreign script immediately\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11986] Opening a Gradle project with Apache NetBeans executes foreign script immediately" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26116 invoked by uid 550); 7 Sep 2020 15:42:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3148 invoked from network); 7 Sep 2020 14:28:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=doppel-helix.eu;
	s=201912; t=1599488894;
	bh=Vnw2FfjE9pRlGa2plGV6PnO/iFYFxoHFu6Wph7bhRJ4=;
	h=Subject:From:Reply-To:To:Date:From;
	b=DzD1N8VZ5YTyzee2E5o8GpuYzCEKMWuMIWx/Nyvwgosq/5KxZBDBZHqohHcUw+i/m
	 XwcOLpNarNeOD34UEn/r4PIEDU9JAqM0DSxlgG/7VIoZ2jXCD+mcDmCrzGsjRQP1r0
	 Xx0M9S/h/g9iuw4mt8EibMhl+yogvVaPTiCAVNhqZbzP7maM1eEhzLUzw6XZKff5xh
	 Cxa0oXMK+JuYC5iVOHhs17A4RgCQ85pwKW2KsJnQGXkM+UcFoTqkIPAhVt6KNA5G78
	 z3vUtQo6SGnV2ep/crfZsQOszHSmO3XvBtbm2KBeLE9OJLXCZCPK5unWG46ViLT+G8
	 vIX6XRtq2K/GA==
Message-ID: <8dad8ec32be2e14ecbeac7f6a46b39dfc650e4c9.camel@doppel-helix.eu>
From: Matthias =?ISO-8859-1?Q?Bl=E4sing?= <mblaesing@doppel-helix.eu>
To: oss-security@lists.openwall.com
Date: Mon, 07 Sep 2020 16:28:14 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Ytfe+ciZ0ADPmv0lOELR"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Subject: [oss-security] [CVE-2020-11986] Opening a Gradle project with Apache NetBeans
 executes foreign script immediately

--=-Ytfe+ciZ0ADPmv0lOELR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-ID
------
CVE-2020-11986

Summary
-------
Opening a Gradle project with Apache NetBeans executes foreign script
immediately

Versions Affected:=20
------------------
- All Apache NetBeans versions up to and including 12.0
- NetBeans releases before the Apache transition started may be
  also affected

Description:
------------
To be able to analyse a gradle project, the build script needs to be
executed.
Apache NetBeans follows this pattern and does not allow the user to
intercept/prevent the execution.

Mitigation:
-----------
- Only open trusted gradle projects with NetBeans
- Update to NetBeans 12.0-u1

Credit:
-------
The problem was identified by Emilian Bold

--=-Ytfe+ciZ0ADPmv0lOELR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE+nkp+DrUTEWQ9sxoFcccCk4Ljt0FAl9WQ34ACgkQFcccCk4L
jt2TMg//U4r22rGxt52OLlyUl88zrGK4YY8tDrntG+sFF5A8acDHALkJDD8uigIC
WcnfRDOaUc7dH6lit8gcaLH5r/rgzEYIITRThMluU6oRDGXUyA34MQy9pvn7CMKQ
JbgfRjTyc/ePylGIk8k6Cx+KISFuPpvNE4qx4U8nbkQo5tmXypEZYTMhFlM7n3Lq
YTC9xtfTZWNRMJVQMb4HpAKQ5RqLgjMx2IYb+w1hTvOqk7JwGhz4znKV7/qjcu5D
XgJc4yAjBuhV6qGZMNDlazKUul05Fyd4dp8GUreUk2dTJDGzwWyjnvIaxaSRWqjk
nk5NKXjmtt1GUMRqdFXa5cxtcV78XURVTsKfzW9/Kr026Z9yDSBHtkGjmZUCXr5q
GoVTDMTXIpv/bskrNySUdkMOKhlOOOXeVpRl87vcr9t9+MWMASSw3PLB3ynzWzua
Js2tsobkSGFLVbvs5JzAPjR4+zG5q4WP4o3P10Hgjq475STKnqtaZPpDBFYoUSf0
a6t6yNY7dBWM8QiixGyDxZwU+9yNBF8XPJyv8PrGEJ/iDNQjskgMAZNQUIsriBrQ
862XZZrynNqMWIjb5rOdGNvgdzJKJIoNlV33CqbTY0YdELlQDVLG6DaqbKf6iasD
Zu/fTjSC0f7ZpYo7r5sKWhc9YEw3+6ro3Mg1XBkEp9RNJB24zGM=
=7xAw
-----END PGP SIGNATURE-----

--=-Ytfe+ciZ0ADPmv0lOELR--

