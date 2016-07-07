X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1800" "Thursday" "7" "July" "2016" "16:19:04" "+0200" "Remi Gacogne" "remi.gacogne@powerdns.com" "<9467a2c3-24fe-0ce4-c0bc-186eccae18ae@powerdns.com>" "55" "Re: [oss-security] Malicious primary DNS servers can crash secondaries" "^Date:" nil nil "7" "2016070714:19:04" "[oss-security] Malicious primary DNS servers can crash secondaries" (number mark "        remi.gacogne Jul  7   55/1800  " thread-indent "\"Re: [oss-security] Malicious primary DNS servers can crash secondaries\"\n") "<03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>" ("<03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26161 invoked by uid 550); 7 Jul 2016 14:20:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25810 invoked from network); 7 Jul 2016 14:19:22 -0000
X-Virus-Scanned: Debian amavisd-new at imap.open-xchange.com
References: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>
Message-ID: <9467a2c3-24fe-0ce4-c0bc-186eccae18ae@powerdns.com>
MIME-Version: 1.0
In-Reply-To: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="CwiKcDDrIBtr9lmRmkvQIWmF2kVeBIQt2"
X-purgate-ID: 151428::1467901150-00002F25-9BA6FEFD/0/0
X-purgate-type: clean
X-purgate-size: 1918
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
Date: Thu, 7 Jul 2016 16:19:04 +0200
From: Remi Gacogne <remi.gacogne@powerdns.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Malicious primary DNS servers can crash
 secondaries
To: oss-security@lists.openwall.com

--CwiKcDDrIBtr9lmRmkvQIWmF2kVeBIQt2
Content-Type: multipart/mixed; boundary="r2L0X5358pqXJr45HtxNvfNGJBSnE94uX"
From: Remi Gacogne <remi.gacogne@powerdns.com>
To: oss-security@lists.openwall.com
Message-ID: <9467a2c3-24fe-0ce4-c0bc-186eccae18ae@powerdns.com>
Subject: Re: [oss-security] Malicious primary DNS servers can crash
 secondaries
References: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>
In-Reply-To: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>

--r2L0X5358pqXJr45HtxNvfNGJBSnE94uX
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

On 07/06/2016 12:10 PM, Florian Weimer wrote:
> PowerDNS is reportedly affected as well, but I did not find a public bug
> for this issue.

We are tracking this issue at:

https://github.com/PowerDNS/pdns/issues/4128

The following patches are still under review but should be merged soon:

- Master: https://github.com/PowerDNS/pdns/pull/4133
- 3.4.x: https://github.com/PowerDNS/pdns/pull/4134


--=20
Remi Gacogne
PowerDNS.COM BV - https://www.powerdns.com/



--r2L0X5358pqXJr45HtxNvfNGJBSnE94uX--

--CwiKcDDrIBtr9lmRmkvQIWmF2kVeBIQt2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJXfmTdAAoJEKII7U+K9YRGFA4H/3pFjKzihSwSFUZXmjQ9Upl9
AY/Qj/gmmGJcx6iOnJc0S561hABUn1+HUZvq7A2PKhtKMDpKsbEtmfGfKh22Lx7I
2QiYHdatLEqNWUnpOFDtekTyGrMrw+YZQQtFDgPeIF43LGpeNSKENV6j47IIzd8y
vc+z/DVlyavB8gwQBHczTynYBqYHPthD49yiqzqNHh9UvJ/0p3TkZla0XVedHLbG
5qdiMXIrWrhM+h8zkcn14KSRExDhuUCRI8iVDLLftQ0XpakACpm4+ke4IX7INafF
aLM5DPcltGpezfsrq0DAo92PB8/m6EQSvfH1F7hr2w1tL52D4bDYiPwTGDI0f5w=
=69d7
-----END PGP SIGNATURE-----

--CwiKcDDrIBtr9lmRmkvQIWmF2kVeBIQt2--
