X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1506" "Tuesday" "22" "December" "2015" "22:31:05" "+0100" "ISC Security Officer" "security-officer@isc.org" "<5679C119.9070402@isc.org>" "42" "[oss-security] New vulnerability in Kea DHCP servers (CVE-2015-8373) is now public" nil nil nil "12" "2015122221:31:05" "[oss-security] New vulnerability in Kea DHCP servers (CVE-2015-8373) is now public" (number mark "U       security-off Dec 22   42/1506  " thread-indent "\"[oss-security] New vulnerability in Kea DHCP servers (CVE-2015-8373) is now public\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12064 invoked by uid 550); 22 Dec 2015 21:31:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12011 invoked from network); 22 Dec 2015 21:31:27 -0000
To: oss-security@lists.openwall.com
Cc: ISC Security Officer <security-officer@isc.org>
From: ISC Security Officer <security-officer@isc.org>
X-Enigmail-Draft-Status: N1210
Message-ID: <5679C119.9070402@isc.org>
Date: Tue, 22 Dec 2015 22:31:05 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="PLvGV9uVrPv4rCg6aJO5SIiD36TworOgW"
Subject: [oss-security] New vulnerability in Kea DHCP servers (CVE-2015-8373) is now public

--PLvGV9uVrPv4rCg6aJO5SIiD36TworOgW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please be advised that ISC publicly announced a critical vulnerability
in the Kea DHCP servers.

The CVE-2015-8373 is a denial-of-service vector which can be exploited
remotely against DHCPv4 and DHCPv6 servers by sending malformed packet.
Please find the details in the security advisory.
https://kb.isc.org/article/AA-01318

New releases of Kea, including security fixes for this vulnerability,
are available at: www.isc.org/downloads/

Release notes can be obtained using the following links:

ftp://ftp.isc.org/isc/kea/0.9.2-P1/KeaReleaseNotes092P1.txt
ftp://ftp.isc.org/isc/kea/1.0.0-beta2/KeaReleaseNotes100beta2.txt

Marcin Siodelski
(as ISC Security Officer)


--PLvGV9uVrPv4rCg6aJO5SIiD36TworOgW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWecEZAAoJEL2X3GOe6MR7HcEH/3Wl5sfXYvj37l3LRaJgbrub
J/lj48y1S9KVuwo1tPRMOMvshWlCwA5cIDb9bZtc7LsoE+lctxNHeqUCgVtKYGk1
iUSGIxD7n7DtAeUsrLsrquTovmsGQv0C2Hk9uJ3DuNbbzn3YqbtKhKGil/jjYj5k
0mZObv9XD+1CBz0rrsd/WZj0967FFv2xqpIQP1OCLGQ+IQnYo02c0c/MkT9UVNOJ
pP0Qp+LgATopOP1GmZMSoBkC8nsiDHxvNiHumxDwJUqd52IzbX6kD6AKX2hhH1qW
3edzxiXr2WJLcnFTr3VB2U9IHjx7VYbOhH/mRRAgn8/mE5+seml00p2HLq9ph4M=
=/px1
-----END PGP SIGNATURE-----

--PLvGV9uVrPv4rCg6aJO5SIiD36TworOgW--
