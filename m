X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Sunday" "24" "January" "2016" "20:55:48" "+0100" "Nico Golde" "oss-security+ml@ngolde.de" "<20160124195548.GC24448@coredump>" "50" "Re: [oss-security] CVE request for prima wlan driver: Address buffer overflow due to invalid length" nil nil nil "1" "2016012419:55:48" "[oss-security] CVE request for prima wlan driver: Address buffer overflow due to invalid length" (number mark "U       oss-security Jan 24   50/1573  " thread-indent "\"Re: [oss-security] CVE request for prima wlan driver: Address buffer overflow due to invalid length\"\n") "<CABniQZOu_2SA++N-KbO72cj1=g9qyTr_kUB3wGBsX4uLhw1JMA@mail.gmail.com>" ("<CABniQZOu_2SA++N-KbO72cj1=g9qyTr_kUB3wGBsX4uLhw1JMA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11616 invoked by uid 550); 24 Jan 2016 19:56:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11595 invoked from network); 24 Jan 2016 19:56:02 -0000
Date: Sun, 24 Jan 2016 20:55:48 +0100
From: Nico Golde <oss-security+ml@ngolde.de>
To: oss-security@lists.openwall.com
Message-ID: <20160124195548.GC24448@coredump>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CABniQZOu_2SA++N-KbO72cj1=g9qyTr_kUB3wGBsX4uLhw1JMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <CABniQZOu_2SA++N-KbO72cj1=g9qyTr_kUB3wGBsX4uLhw1JMA@mail.gmail.com>
X-Mailer: netcat 1.10
X-GPG: 0xA0A0AAAA
Subject: Re: [oss-security] CVE request for prima wlan driver: Address buffer
 overflow due to invalid length

--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,
* Shawn <citypw@gmail.com> [2016-01-24 13:05]:
> **Introduction***
>=20
> One exploitable bug has been fixed in prima wlan driver a few months
> ago.
>=20
> Upstream fix:
> https://github.com/sonyxperiadev/prima/commit/4b91219ada9e73c897da2e0ae7b=
f2ff043dde950
[...]=20

This already has a CVE id per:
https://codeaurora.org/projects/security-advisories/multiple-issues-wlan-dr=
iver-allow-local-privilege-escalation-cve-2015

This is CVE-2015-0569.

Cheers,
Nico
--=20
Nico Golde - XMPP: nion@jabber.ccc.de - GPG: 0xA0A0AAAA

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2

iQIcBAEBCgAGBQJWpSxEAAoJEM1LKvOgoKqqebYP/ietZSHuxmrAQf8KtH7QxeoG
Lt8L0j9AQyiW7ALDvrAeVxLeqsb9q8boy5Hj7zAuQE8V+l7BdsgMQ+GVLZHOT4ny
KRJG/h9klnI5Lh6LM1k1EEItD+/lWuHwLvWFKCIkkEQv3air5suw5XnuOxOQuG+l
RZ2VhkYTj8N4xzTPWpvyma2yfzcnTACzUL8jrji1ipo5jouRUuCwmNwTI4Aq8Im8
uN+XNZA8roeKKD6/7sJW9slMf85aZG2pDxz9EEPbFUhLC4WOtzN+V6WQ1Sv0AXSu
WPTYNwBNoLGNC87KvUTzAyqAJYnF1k/bNNl+CKUrAjDFN3pyNoFsAr/lYbG6r2Fv
kSxPfPMNeTWGqhWEAbr54XC0pYdHx9Q5twdIsDi3K4ua5yf9Li2pydcfYMRVSR5U
ClxhZGEP823JxJV7UJp+P7IasKB73GMjSS6tFcOzQH9KFx+vIZmddhIcdyM/86lI
+mRM9JxC1ifuU4p2RIRNRpyortJyEUKp0HcN1YxSTzpoM6yEjSbbyc9QJE+QlRYB
Gpl7N/IJnpUR5g/AwrScuITnt55tYUpi1ADdmokzT1Ri9v0p52N3Pkkx2OvR0a0N
37mo0dNBRjPGudOwKoeVdOc6hv+BiOzH0i82Bq1mMDrD2RdC+77+b76Tw1Hwh88C
BoRUw9VqVrKCxzXRV2Fq
=LQVT
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--
