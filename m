X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2165" "Friday" "6" "November" "2015" "10:45:58" "+0100" "Pieter Lexis" "pieter.lexis@powerdns.com" "<563C76D6.1070908@powerdns.com>" "60" "Re: [oss-security] CVE request: stored XSS in PowerDNS < 3.4.7" nil nil nil "11" "2015110609:45:58" "[oss-security] CVE request: stored XSS in PowerDNS < 3.4.7" (number mark "U       pieter.lexis Nov  6   60/2165  " thread-indent "\"Re: [oss-security] CVE request: stored XSS in PowerDNS < 3.4.7\"\n") "<563C6DDC.8@sysdream.com>" ("<563C6DDC.8@sysdream.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12096 invoked by uid 550); 6 Nov 2015 09:46:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12075 invoked from network); 6 Nov 2015 09:46:38 -0000
To: oss-security@lists.openwall.com
References: <563C6DDC.8@sysdream.com>
Cc: cve-assign@mitre.org
From: Pieter Lexis <pieter.lexis@powerdns.com>
X-Enigmail-Draft-Status: N1110
Organization: PowerDNS
Message-ID: <563C76D6.1070908@powerdns.com>
Date: Fri, 6 Nov 2015 10:45:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <563C6DDC.8@sysdream.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0uUI9a9roLuUG7ov8wIVc4HLmap0t43jH"
Subject: Re: [oss-security] CVE request: stored XSS in PowerDNS < 3.4.7

--0uUI9a9roLuUG7ov8wIVc4HLmap0t43jH
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 11/06/2015 10:07 AM, Damien Cauquil wrote:
> PowerDNS < 3.4.7 was prone to a stored XSS vulnerability, now fixed in
> version 3.4.7.
>=20
> This commit by the PowerDNS team fixes it:
>=20
> https://github.com/PowerDNS/pdns/commit/416d252
>=20
> Could a CVE be assigned to this issue ?

This stored XSS was in a component (the built-in webserver) that
1) is disabled by default
2) should only be opened up on a non-public network (or with
   authentications in front)
3) serves a simple read-only webpage

To 'exploit' this XSS, someone with knowledge of the target's
infrastructure must send the target a malicious link (with the exploit
code embedded in the link). As this is built-in webpage is (should) only
accessible to the operators of the DNS server, the attack-surface for
this attack is very low.

We consider this XSS a very low risk vulnerability because of this and
suggest a CVE be not assigned.

--=20
Pieter Lexis
PowerDNS.COM BV - https://www.powerdns.com


--0uUI9a9roLuUG7ov8wIVc4HLmap0t43jH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWPHbwAAoJEF5QcVvy/+GnVrcP/06ogmKzs4i6Hd3goZVQDKAL
DmXZAhoKBRz5JaSX7Mbe5m9rzhHpdzO6SfrPgePcIiJ3r/Z6nasOCW1HCHU8KkP4
qRgUtm0VszJPazDzFqD34BZJ0mi5AxF4KDGQFF1rte8X5IRhB/k5/HkIOoaG7BNP
elztGl96zRz+Q4proiTz3wNAFXq08iW8B/79m5wjBVo6lUQeENly3TRDcDu23Iul
dxW+SJcoskeSJmsMuL9elDfl+FOMMxMiQIrJ6hnxEs83BYLHHhIo3Br84VR/JRCb
fKLszq/61CRqV+l8fkUX8fQwCp233UVgUDt/zL9IIcjdBQVafqBMo1obdqIQllIC
ttmG6C4O9OU8Zr3RsnnnVSWFms792+9rNg6YnyGXjhdX8el7Itgcm2MTCmloVgmB
DkC2sPXeGEkNJIP6sIC3Xm5YRhx7v0xLjSkY7Cwx+o2zha9koxuIpI9DeEKfaigX
wVU+W5VvLL/2HcqxJCsC4QYUHf4AtoGfPbO46GfvoHSaXP0SpqE1IUNBtOC3Yoo7
N3q+yd9/lnvyHHiZ2aMUDJyIVbXwbYS+g9iAQ9WRuhgQQa6juUbLIxrn2/EhCs28
ONp9/to0zxcVswRFQ+AHAcARF0UMmRMk9KsX2JuBzs7G7T0bt2WpaOclHK4iNdCZ
LeNnx7ElTauIQR87t05S
=oFec
-----END PGP SIGNATURE-----

--0uUI9a9roLuUG7ov8wIVc4HLmap0t43jH--
