X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2264" "Wednesday" "12" "January" "2022" "10:48:33" "+0000" "Sven Kieske" "S.Kieske@mittwald.de" nil "65" "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil "1" nil nil (number mark "U       S.Kieske@mit Jan 12   65/2264  " thread-indent "\"Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7474 invoked by uid 550); 12 Jan 2022 12:53:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24258 invoked from network); 12 Jan 2022 10:48:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mittwald.de; s=agenturserver;
	t=1641984514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lXk6an3kc3dW2/orhJj4/A6pWxe8lP/DDwys4vPfrcA=;
	b=FJbdMFC2f3A+0PjgwUlaraMjzl5/tq5tlhpZ0xgyTOPFim/+AgGr2DxtGyZ3R+rBg9Z1Ln
	jDYMWIFYDsxRifBy/TFQMS0o9rmbsu/YodbM618iEN+4PA0HTKXhvP98qq/ebZ4n+MTTiO
	jlAj/nQWvQfjOZ5SVUUcaev36ZJOdCk=
From: Sven Kieske <S.Kieske@mittwald.de>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour
 osd_dmcrypt_key_size
Thread-Index: AQHYBzDT2+L10ef+2kiPkweP9M4oAKxewTsAgABjgQA=
Date: Wed, 12 Jan 2022 10:48:33 +0000
Message-ID: <a9f45c1da8506e5c8e1ee89ffd6edc27e065e721.camel@mittwald.de>
References: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
	 <Yd5eiNskXgdDCdID@sol.nexus.lan>
In-Reply-To: <Yd5eiNskXgdDCdID@sol.nexus.lan>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [2a03:2a00:2:1::f]
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="=-dxDD36x4CPU2fZ25A4JB"
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour
 osd_dmcrypt_key_size

--=-dxDD36x4CPU2fZ25A4JB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Di, 2022-01-11 at 22:52 -0600, John Helmert III wrote:
> Was a patch meant to be attached? Is there any report or PR upstream?

There is at least no new commit in https://github.com/ceph/ceph/blob/master=
/src/ceph-volume/ceph_volume/util/encryption.py

from a cursory glance at the open PRs I also don't see anything related, bu=
t I just might have missed it.

There is also no tracking bug at https://tracker.ceph.com when searching fo=
r this CVE number.

--=20
Mit freundlichen Gr=C3=BC=C3=9Fen / Regards

Sven Kieske
Systementwickler / systems engineer
=C2=A0
=C2=A0
Mittwald CM Service GmbH & Co. KG
K=C3=B6nigsberger Stra=C3=9Fe 4-6
32339 Espelkamp
=C2=A0
Tel.: 05772 / 293-900
Fax: 05772 / 293-333
=C2=A0
https://www.mittwald.de
=C2=A0
Gesch=C3=A4ftsf=C3=BChrer: Robert Meyer, Florian J=C3=BCrgens
=C2=A0
St.Nr.: 331/5721/1033, USt-IdNr.: DE814773217, HRA 6640, AG Bad Oeynhausen
Komplement=C3=A4rin: Robert Meyer Verwaltungs GmbH, HRB 13260, AG Bad Oeynh=
ausen

Informationen zur Datenverarbeitung im Rahmen unserer Gesch=C3=A4ftst=C3=A4=
tigkeit=C2=A0
gem=C3=A4=C3=9F Art. 13-14 DSGVO sind unter www.mittwald.de/ds abrufbar.


--=-dxDD36x4CPU2fZ25A4JB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEdKGxKl7rK5iwbpcWxvL1MwMBtBEFAmHesgAACgkQxvL1MwMB
tBFpgQ//QKuIhJoPhIJgNKu1Jg9itRSeUSWHchGndIx3IsrMUtwj39vIIUIfWcho
EKY6855A5eiJEDwwvgAMO/HCrmCcndUcCxWaHrG55XhbViWAlLZVRMOjNUYVCePH
cXvVdv0QQbuieK0IbrV88UcVkfizoXimbms9K7BdULLauAxacyml4sOi5pLLgo2N
eu2a4VoIZ7f+/TOgWHcLnnKuK0K6tIO7iD8az9Y9K43nCSPATqbSA7B3YTPIW+RV
fPLJMRMLms34PPegxzv4PaqJaR32R5XcvZxiZKueeA5id1eZHo8NYqdgvj2l6SQg
6W25fhGBA0idbkK9drXFivLlwH/7XjFFgbFLVTlJkzaO85c37w7Mt5eyi7coIQI0
iOnHFahWXPe7mE8UoJV9tigeD2RFeuPlqAWjC7M1OcNsOulMdg8aPI6u3fx0iXiE
8E6dSVZ0yH+XkegKBMS9dPsciFQK6x1yf4XuSU4BebJxXrrA6gU3x46q0yd2xTzk
46QpD/fv0tmv3Z0kgVeH6kfnIouPJsKK8CLM3WMuCpXV2iZXcEm3qgJCa0Kt/iPB
TCboal0+CX/lOn/6albIqJL62BIFkapKjan0YNOv5aK9DLlRkGnUVTO2pm+xAMFy
BlBMpe7ri4s5tUOtOBncWRuA8+rYfQJQw5Dnjxna+7htU89/CJA=
=lSGE
-----END PGP SIGNATURE-----

--=-dxDD36x4CPU2fZ25A4JB--
