X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1779" "Tuesday" "7" "July" "2015" "11:28:48" "+0200" "Pieter Lexis" "pieter.lexis@powerdns.com" "<559B9BD0.1080409@powerdns.com>" "48" "[oss-security] Follow up: PowerDNS Security Advisory 2015-01" nil nil nil "7" "2015070709:28:48" "[oss-security] Follow up: PowerDNS Security Advisory 2015-01" (number mark "U       pieter.lexis Jul  7   48/1779  " thread-indent "\"[oss-security] Follow up: PowerDNS Security Advisory 2015-01\"\n") "<AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>" ("<AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13975 invoked by uid 550); 7 Jul 2015 10:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21829 invoked from network); 7 Jul 2015 09:29:31 -0000
To: pdns-dev@mailman.powerdns.com,
 pdns-users Users <pdns-users@mailman.powerdns.com>,
 pdns-announce@mailman.powerdns.com, oss-security@lists.openwall.com
References: <AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>
From: Pieter Lexis <pieter.lexis@powerdns.com>
Organization: PowerDNS
Message-ID: <559B9BD0.1080409@powerdns.com>
Date: Tue, 7 Jul 2015 11:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="kWXBOSG2OKrrJKIImGT3FpGsD1WS1BLmn"
Subject: [oss-security] Follow up: PowerDNS Security Advisory 2015-01

--kWXBOSG2OKrrJKIImGT3FpGsD1WS1BLmn
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi all,

We've updated our security advisory regarding CVE-2015-1868[1].
Toshifumi Sakaguchi discovered that our fix for this CVE was
insufficient in some cases with specially crafted packets.

Last month we released patched versions[2] and we've now updated the
Advisory to reflect this. If you have not updated yet, we advice again
to update.

1 - https://doc.powerdns.com/md/security/powerdns-advisory-2015-01/
2 -
http://blog.powerdns.com/2015/06/09/authoritative-server-3-4-5-3-3-3-and-re=
cursor-3-7-3-3-6-4-released/

--=20
Pieter Lexis
PowerDNS.COM BV - https://www.powerdns.com


--kWXBOSG2OKrrJKIImGT3FpGsD1WS1BLmn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVm5vvAAoJEF5QcVvy/+Gnu7YQALoPfP+b6KeQQMyP2kOYSrnY
d7I4SCx6Onzc7KZJKIC6bJox24mDA+6Y7h1AfDPoDiR2dzBPTlZtspExKbQtJKbW
AgmAJ+ABO7boI0Z1Zdq3bfOXQRgt+HpxtSQ6IttQ9To0W9to+My5cL0E8rt4iDia
fNR/79LYwhyzDIRxDBEVSabfGw12XAkhhxNwbGscPrgKvu98JmBzZwpaKT+Al7oF
+NER9/E2SOat7xaRR3vn9N+hUzwLheJpqIjFDchCxgdFjQfKwgAsyYJdWA1dFY0S
AD1TyuNneMpEgenh7dLSV/XgMAQk8SOrfOgWv44zDLxmxDbp6UL7fPWlth/2BtKj
skMxtQhEQ2VN5McObZLuTHb086uQEd6+QRlj/cEC6Wr5eyIIhEdYIdUeFOdFllqb
AOw5cEbf+6Z8AjBCA5fwxmCXGjfSkyPI6vn4mRopteESChoOF/CEENQL/GSOq68r
rtr1ytjijzKqo5+sBqlpobCyVv7SLQ1IsA8sKFB8DCgYwndJvWb5J74h13eh5Gf5
SaXALkrCfRxfDvQx4r7QdO9f5/FxsjGbazYi9ikkgmaHWIkacRZq7EdHGB8J2WRK
YCkRhx6YCoAO5cOBT/9BSwyTHCD8GZx1hH7k/TqsPAkd66kAkaPIRz0HttSxoqwh
szQBWU/wdDz+rqFpG7y6
=Aj4H
-----END PGP SIGNATURE-----

--kWXBOSG2OKrrJKIImGT3FpGsD1WS1BLmn--
