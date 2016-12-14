X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1892" "Wednesday" "14" "December" "2016" "09:44:52" "+0100" "Sona Sarmadi" "sona.sarmadi@enea.com" "<4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>" "64" "[oss-security] why many CVEs are ** RESERVED ** on Mitre" "^CC:" nil nil "12" "2016121408:44:52" "[oss-security] why many CVEs are ** RESERVED ** on Mitre" (number mark "        sona.sarmadi Dec 14   64/1892  " thread-indent "\"[oss-security] why many CVEs are ** RESERVED ** on Mitre\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8044 invoked by uid 550); 14 Dec 2016 08:45:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8006 invoked from network); 14 Dec 2016 08:45:57 -0000
Message-ID: <4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="JMP3s5wkJn470LGiVR8DaGE0JKdpw9HH8"
X-Originating-IP: [172.16.142.231]
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
CC: <cve-assign@mitre.org>
Date: Wed, 14 Dec 2016 09:44:52 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] why many CVEs are ** RESERVED ** on Mitre
To: <oss-security@lists.openwall.com>

--JMP3s5wkJn470LGiVR8DaGE0JKdpw9HH8
Content-Type: multipart/mixed; boundary="kL34PGMnGXEQV1IebRkuXGGbb4lvT9fhC";
 protected-headers="v1"
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>
Subject: why many CVEs are ** RESERVED ** on Mitre

--kL34PGMnGXEQV1IebRkuXGGbb4lvT9fhC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi again,

Does anyone know why Mitre lists many CVEs ** RESERVED ** while they are
public (e.g. curl CVEs below)?

https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-8615

https://curl.haxx.se/docs/security.html:

CVE-2016-8615
CVE-2016-8616
CVE-2016-8617
CVE-2016-8618
CVE-2016-8619
CVE-2016-8620
CVE-2016-8621
CVE-2016-8622
CVE-2016-8623
CVE-2016-8624
CVE-2016-8625

Shouldn't Mitre follow a process and update the page after CVEs have
been made public e.g. by upstream project? Or perhaps there is another
reason for these CVEs not to be updated?

Best,
---------------------------------------
Sona Sarmadi
Security Responsible for Enea Linux


--kL34PGMnGXEQV1IebRkuXGGbb4lvT9fhC--

--JMP3s5wkJn470LGiVR8DaGE0JKdpw9HH8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYUQajAAoJEAilI68fskZdjPcIANDpvi8hOByVOl32gX2akqFv
plsr6ZUZRtaLqZ7W/8lFXG86Or+46GWmpaS2qvDMbS7v7/1boIJgaGf1YGTf7Jjs
F8pxgsn1Qvw8bLb07rynsys2cDipcY7O3yORrkmSzHaolN2kzqMbQnvxmGeCZJoE
YWyAnxDOXqw7B7e+2pMv8raZVC3acOr5BW6RrSD8KH0Fep5SmFZpZemrrdAN6vyY
3Zchlu+990o9AuYUWdYOuebLYuMrJieqo9lciPuMjtdmZZdcfk0Gx98sei6/9dFs
/VYsXCisFNhLKurkQrwRRqhg0ISSNbkgYbSXucZcD9P0m15pI9wtQjwqDZn1ThA=
=HTHk
-----END PGP SIGNATURE-----

--JMP3s5wkJn470LGiVR8DaGE0JKdpw9HH8--
