X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Sunday" "30" "October" "2016" "15:37:44" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161030153744.1fc6348e@pc1>" "44" "[oss-security] gajim otr plugin cleartext leak" nil nil nil "10" "2016103014:37:44" "[oss-security] gajim otr plugin cleartext leak" (number mark "U       hanno@hboeck Oct 30   44/1474  " thread-indent "\"[oss-security] gajim otr plugin cleartext leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22397 invoked by uid 550); 30 Oct 2016 14:37:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22329 invoked from network); 30 Oct 2016 14:37:56 -0000
Date: Sun, 30 Oct 2016 15:37:44 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss security list <oss-security@lists.openwall.com>,
  cve-assign@mitre.org
Message-ID: <20161030153744.1fc6348e@pc1>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-5711-1477838267-0001-2"
Subject: [oss-security] gajim otr plugin cleartext leak

--=_zucker.schokokeks.org-5711-1477838267-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

https://trac-plugins.gajim.org/ticket/145
This probably deserves some attention and a CVE.


Commit with fix:
https://trac-plugins.gajim.org/changeset/c7c2e519ed63377bc943dd01c4661b0fe4=
9321ae

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-5711-1477838267-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYFgW4AAoJEKWIAHK7tR5C1bUQAIEOEn2T7id9OyBnvL9YAZNQ
s2rG9wdDes0tEYeuCawzoFZHXRoLV+Wrnbz50rjhWvTmvQExQLQ6ThsGGzaB0YZr
7ul4l4NWMkDVLilw+hG0UpQDhQdKcaRb1eMx0TtOJ6rYvyHl9HCp10pmW086zDob
3V9fAJSXVNzTu1CnWRgTYL10/GqkEenfx1lKFm6yT4JmK1da39nhE8nbrzcpadqT
Fy3OXqzhHwlld0aHpSHGXGg/eMu2XrMTLyPgBykflFhA5p2uOc9yn7GhTq3k9ZVc
Ytw1uSKdiHarXiquJXE7Vt+T+LU+zfziA5AS5TNy4ObaKD3vXI0lxovDZj2cI+hI
bdKDof+j6lVkyQuGcU6jn7+8hubbGnp7k2BC2KMLRx8FCIIr3GkOf8v9J1X10gkE
+XhjdQ1g8bcjJ+zEmHWuaC92c6CRkDvPp+I6rzpk27H7UArJSNamkqQ1mvZefQ1D
mj3dEIEvX+ZJnJIJn/v2Rt+BlapfNb4hHzDRZFbqloU4iE2lnQTJ1Sv/ONsC2AOV
jz61uM9rJNc78HvQlk4vniBwojlbn1ijTA65jwbtU6eCkrn8NLher5N/wGHp0ZrN
N7OAGPccWGQuhcJ1NcpfgAXJieYGn4elq2t6yq1ouAv6Pr74HzIk953ZR90nm80E
ae76urygvljzz68fzguc
=SIT8
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-5711-1477838267-0001-2--
