Received: (qmail 7227 invoked by uid 550); 23 Dec 2022 18:48:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3440 invoked from network); 23 Dec 2022 18:43:04 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.census 6411A213CB86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=census-labs.com;
	s=D8BFA4EC-CF6E-11EB-AFC5-2C27CB7A6FA6; t=1671820972;
	bh=J+jGJyRepJRjfMVPFW6QD89fv1sOXya1MMM4+IqFYrU=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=KJ+uLypk0dx9kfBt+iGoAjpuDq306KsXTXuFJA4FesAKZ1ELnlvj0/ZWe1GfmceJQ
	 KmuGxag9aNXb/G4jndHl6hhxH2AjlIc8Gzc3mA76WxwW4p2NWGxa8aAudT588VwQfB
	 Vt/pqPVWKaPJky87PvqHCkHf/+kksnPeuNunrWMWfo8tIPbalG3+fYoyWV0rzcN7ZR
	 fVWtK8x2dVcN09Zi0fNoTa/ExXQCW9yOXIoAS1upmsZY+0hfHNdP33y00enEPLeaaX
	 KjMGpu2faSamJ2GNawUXXZYiaYAQMP+zZPX1MeAlZ+ocIiYXt+voo6k78wruy2I/Lk
	 IcUD7lBsNREMQ==
Message-ID: <4f88c2cf-994b-6a33-66a5-07694d5032c5@census-labs.com>
Date: Fri, 23 Dec 2022 20:42:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Charalampos Maraziaris <cmaraziaris@census-labs.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------k25XjZXBpS5rkta36P2ldwWw"
Subject: [oss-security] Multiple vulnerabilities in Snipe-IT

--------------k25XjZXBpS5rkta36P2ldwWw
Content-Type: multipart/mixed; boundary="------------viKl26Y7ZU1ScIY2Sf0v1Ucd";
 protected-headers="v1"
From: Charalampos Maraziaris <cmaraziaris@census-labs.com>
To: oss-security@lists.openwall.com
Message-ID: <4f88c2cf-994b-6a33-66a5-07694d5032c5@census-labs.com>
Subject: Multiple vulnerabilities in Snipe-IT

--------------viKl26Y7ZU1ScIY2Sf0v1Ucd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLA0KDQpJIGhhdmUgaWRlbnRpZmllZCBhbiBYU1MgKENWRS0y
MDIyLTQ0MzgwKSBhbmQgYSB1c2VyIGZpbmdlcnByaW50aW5nIGlzc3VlIChD
VkUtMjAyMi00NDM4MSkgaW4gU25pcGUtSVQgdmVyc2lvbnMgcHJpb3IgdG8g
Ni4wLjE0Lg0KDQpUaGVyZSdzIG1vcmUgaW5mb3JtYXRpb24gYWJvdXQgdGhl
c2UgaXNzdWVzIGhlcmU6DQpodHRwczovL2NlbnN1cy1sYWJzLmNvbS9uZXdz
LzIwMjIvMTIvMjMvbXVsdGlwbGUtdnVsbmVyYWJpbGl0aWVzLWluLXNuaXBl
LWl0Lw0KDQpUaGUgU25pcGUtSVQgcHJvamVjdCBoYXMgcGF0Y2hlZCBDVkUt
MjAyMi00NDM4MCBpbiB2ZXJzaW9uIDYuMC4xNCwgYnV0IENWRS0yMDIyLTQ0
MzgxIGhhcyB5ZXQgdG8gYmUgYWRkcmVzc2VkIGNvcnJlY3RseS4NCg0KQmVz
dCBSZWdhcmRzLA0KDQpDaGFyYWxhbXBvcyBNYXJhemlhcmlzDQoNCg==

--------------viKl26Y7ZU1ScIY2Sf0v1Ucd--

--------------k25XjZXBpS5rkta36P2ldwWw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEaPj8J7K1sPw/6vSL0qEHwE7jIwAFAmOl9qsFAwAAAAAACgkQ0qEHwE7jIwCW
sA//Tws9TZ1V6ECqJ9kaqAuQhwnQYlGkaY2OHS9twR7Htylthf7GV8oYT3BzqGTHglWGGmdH4qKg
cNA54ULNCmTKT3WtTF5SRcHCskNIQk9b0r3TBaPqqRPk+MEWlkcdGvXZ61tmVD4BjGq5lkevpwQ4
Rwe4vjlGrmxf/YgMGDf0e4pRMxVrhEzycKU8B7rvo5WE2P3CXblwf7JDBX92T9YHZV14ihCXAs4C
olGvyNouo7QIxKrJSMmhRDp2q/fKaKYZak+5LMujCHiaQf6nVOwF7BF7xGaoRvBwCiOhVLWIo95G
JxOJguymvjoLU6G9+buw0+XS6lAHHZpr9xooRi0bHZwDJxRJPuyNkkagIyZ1cP75w1tR7mOd3vQM
lzdj0BAG8y7jt2e36oqs5YXx7jImQB7npfH3MEGIG+MKJjopaTgoIp/pdtfKOVDV3xbg6F0UCkko
QUNuPiy5Ileg0qnnBuxcE+rr0jVSgO+bnGVYWXaATAAWWbqOvUUoIoPygM/G7bfiZycOsOXz4c4Z
KzM5E4LIdg0mmN/JnHP7B9JgcXpkTpd0CqF5sOuKgVpgB4zA699OVBKP7CmLH8ftGwYQAfBAdg+z
wp1mRs2fCKWD5GXHiHs1b1KTbCLOi028elQDUFxtlK44chb9mpnZe4tSznM3Iaydy2z5S6VEbZj4
c9o=
=Pnp3
-----END PGP SIGNATURE-----

--------------k25XjZXBpS5rkta36P2ldwWw--
