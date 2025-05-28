Received: (qmail 10111 invoked by uid 550); 28 May 2025 16:40:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11986 invoked from network); 28 May 2025 16:34:22 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 429923AB399
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1748450052; cv=none; b=XrR1mKACGCPjtVeQSvQhQz/J7HgIsLLjlQKrz0SNI1h4V4L9EN3Jqd1jFg/o2CyqykQQR+VU+D9JxE7v8w0FtpLpLhXbaEa1sE+vwXC6lAfkQNYAOeQZPVtiweI/q1rBGCMVQBHwSQzKkFizcxLEKse6QkWwWegdUBvovAoWyXQ=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1748450052;
	c=relaxed/relaxed; bh=f5oC5Zm+9OsGPr852i99KlyW7Q215fK8/NVAIPefaOk=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=UW1A9eAjU9lxsERJg8birX+i9FXazxgKpcDXlg/FnsjDHVxAUyddiK6jPMFnXZqgFCwGk1bSLcwjoNeWlA7FxtoBBqNVKbOawhVlQ3kHNLF3RuLqEAtCdkoOlYQg+JB9I5AmsLhTzH4dAan+9Trj34el8jZJxLlMRrAHp6jfOJg=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 429923AB399
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1748450052; bh=f5oC5Zm+9OsGPr852i99KlyW7Q215fK8/NVAIPefaOk=;
	h=Date:To:Cc:From:Subject;
	b=fg/zp63p0AEP+OeK6TOz1HOxxlP/Vw7rsNz8fSaSAltKfhQWc1sxK32JB3Taj/DBA
	 OT05NdNTlgOUxMzuTvxJxjLTGW/Q+iSdBfpomQnWBxGfEpt5LwIkMVqeVAA3CL1Iqw
	 KwyfwLLGPhZlC1HM1xqF5rl3AJdrN4OiYRvRsM0M=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 17900AECA57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1748450052;
	bh=f5oC5Zm+9OsGPr852i99KlyW7Q215fK8/NVAIPefaOk=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=C28wVNRDOcXDhTqBr6C8haErIQdYqjLYC9DzGrp0N9TsDTwBGG0Rh9yxyBy7NM0MW
	 p3AfiqRVL5QnvaSfiRjTP6RsjQ7wY6c7S014vlofxjRAH4+1j1ZVKkAxJxc12+FJF7
	 jHc4ZTHz3uz77wAT703TKieAC7uiZ7nV8YlotDbA=
Message-ID: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
Date: Wed, 28 May 2025 19:34:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
From: Andrei Pavel <andrei@isc.org>
Autocrypt: addr=andrei@isc.org; keydata=
 xjMEaC75LhYJKwYBBAHaRw8BAQdAgzVCXIHZt0ZdFa1LRqCuDXic9Ym3noPLV+Z2josVHRXN
 HUFuZHJlaSBQYXZlbCA8YW5kcmVpQGlzYy5vcmc+wo8EExYIADcWIQTpt80xAO4Ov/97jjAP
 SwYPjmgyQQUCaC75LgUJXfwPAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEA9LBg+OaDJBOFIB
 AJmbe7ixu3T/79cXM23ZL8SMHDwGT8u8tmrneRQE1s0XAQDrP518Cg/awIFR7MuNfwaA1lxy
 VeUiaLHFuuXna+ZEBc44BGgu+S4SCisGAQQBl1UBBQEBB0AP3UBT9W9Lh80h4TntGbbtDH9m
 RWzY0rfYIZeshvqNWAMBCAfCfgQYFggAJhYhBOm3zTEA7g6//3uOMA9LBg+OaDJBBQJoLvku
 BQld/A8AAhsMAAoJEA9LBg+OaDJB52sBANATNVsqB5HiRzAvH8gDIeIOjMnb42f2DGKOtadc
 aGGiAQCYgfhO1xMJ3QRSHqm1zbtC/ms9Vu0pY9EVG8JB8QhHAw==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E9jx79Ge6SDR7CGEKwpxcRKD"
Subject: [oss-security] ISC has disclosed three vulnerabilities in Kea (CVE-2025-32801,
 CVE-2025-32802, CVE-2025-32803)

--------------E9jx79Ge6SDR7CGEKwpxcRKD
Content-Type: multipart/mixed; boundary="------------itK9fvu1yu0HH4EHqHkmftnm";
 protected-headers="v1"
From: Andrei Pavel <andrei@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
Subject: ISC has disclosed three vulnerabilities in Kea (CVE-2025-32801,
 CVE-2025-32802, CVE-2025-32803)
Autocrypt-Gossip: addr=security-officer@isc.org; keydata=
 xsBNBEsnyOQBCAC+WKYHcaDGD9a2ztwdccmhnzo0YJ9SOPVIonqGxCa6o8TwfipyH9Wh5uFq
 c6Ne+I0+vWohQtBIeodQHgGGlbjdxMp3QxohvqCmZcoObH7kjI1lpKQ6TMvRvo79pq5WRIuE
 +Jbm6Rt9Hz3w9APrYzISzeCuHFK7vlZfaLdoI0SxzEuzMmyOvQpa6dgSKQF6G2Nsbz1RYujZ
 6fE6GXtc+I9q44yJS4llYpUqYpPh5CsfbDx8HwMWPj9eYOwjf3/vniFeG9tHIB8E+p7UBTG7
 bTVRlEgmyC1Ry0OPO3UPKjL/Dja8IeeJamT0dlsRCD/O/WTyxQg9EceCgUvOz65puKkrABEB
 AAHNL0lTQyBTZWN1cml0eSBPZmZpY2VyIDxzZWN1cml0eS1vZmZpY2VyQGlzYy5vcmc+wsCI
 BBMBAgAbBQJLJ8jkAhsDBgsJCAcKAgQVCggCAh4BAheAACEJEL2X3GOe6MR7FiEEempHtfnh
 IzrSVStcvZfcY57oxHuBlggAji5JpfsfBTbLBoI7vurk79nPOnoz46L7PsbTQYWkAIxINKNf
 yRtmgghbsVdv1RL/1cvCoO2OWsY4tt3Nxn/4Qywkz8elPv3pgfxj2AymwflJmrmAHJ6C5Poq
 COoXbDzI1fv+vQAzemx9VK/2Xn3kKglY1sMEeoamoyLnlKoosJA4nyegOnjH4lU1wnUB0r9B
 VKT6ASEuqu+hg3IbwH8LYsvV8FALywWRf8zWYqWQzzcacmU9YKuKDr1WVH6t6WmkS5nkbfjP
 3dz020Kp0frMvPN6PaqbAtv91gli+EQQwOWC+VJbDrJolO64R+6oeieuA5NeBvcufwDtckQK
 5KBass7ATQRLJ8jkAQgApSytjgDEXzse8ESqEJci3WjymXNWghPmRj+nafjxT6g0aXm/io2I
 LhJBki+wD4Vx7DwGEBhs0VM6wr80pU7KIuQs6pCeS4GURLPO8xyXSBK5fW331XZImkIq6QJr
 6ORNyMmdRE4Mmflan0YsBZe63Em8mdO3ijFycAq6fpm3W/I5CzaUj3NcJOLwB0MpOID8Szro
 I9UJFwwVRLqX0Cs3nuBQ/QpGPw3Q585A93NKGcatJ20zQPYSLamZRyCS9Ih41TkdF3aIylYY
 7UvzJ8ZC+nt3ONZsbuL/ZFOdn4pHdrY4ya1dQ25ZAXcB+iFLRNFMBwBHsiA4vPLLamtP1cq0
 JwARAQABwsB2BBgBAgAJBQJLJ8jkAhsMACEJEL2X3GOe6MR7FiEEempHtfnhIzrSVStcvZfc
 Y57oxHs3tQgAuAPimXUYtPIAcRuISrr6S9Hx38J1Zqy0d/XNJkEfbRPolHDns6hEd89n5/2Z
 uZzE2XGrswlzJhV8ClpRrn4g611aigshB5GMgZ591PZLEYoKPHhv19/ht1EvZNHOxX1miKzm
 NiHRllEInNBDTrv/eFQBWpXiOAQUL5wyGOoa+BZteKl4LLBe2MHBK3qFFPgMoWHOdrZQ7LFP
 Q1Gl/75+zg+NhSM6VM4FMqGfe1LT1/pvT+WDdk3nqtIlZHMcZk/cLjWAgmW9VtN4b3APLsL0
 ZDQ23UP/3ZmtoF3VD6F3wSU+JC6NfyleRopjx3Z9Ide9hNUSi4CrayefE1UyelFdaw==

--------------itK9fvu1yu0HH4EHqHkmftnm
Content-Type: multipart/mixed; boundary="------------CCjlXmLTaBSWd0GxXbMwR5vN"

--------------CCjlXmLTaBSWd0GxXbMwR5vN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjggTWF5IDIwMjUgd2UgKEludGVybmV0IFN5c3RlbXMgQ29uc29ydGl1bSkgZGlzY2xvc2Vk
IHRocmVlIA0KdnVsbmVyYWJpbGl0aWVzIGFmZmVjdGluZyBvdXIgS2VhIHNvZnR3YXJlOg0KDQot
IENWRS0yMDI1LTMyODAxOsKgwqDCoMKgwqDCoCBMb2FkaW5nIGEgbWFsaWNpb3VzIGhvb2sgbGli
cmFyeSBjYW4gbGVhZCB0byANCmxvY2FsIHByaXZpbGVnZSBlc2NhbGF0aW9uIGh0dHBzOi8va2Iu
aXNjLm9yZy9kb2NzL2N2ZS0yMDI1LTMyODAxDQotIENWRS0yMDI1LTMyODAyOsKgwqDCoMKgwqDC
oCBJbnNlY3VyZSBoYW5kbGluZyBvZiBmaWxlIHBhdGhzIGFsbG93cyBtdWx0aXBsZSANCmxvY2Fs
IGF0dGFja3MgaHR0cHM6Ly9rYi5pc2Mub3JnL2RvY3MvY3ZlLTIwMjUtMzI4MDINCi0gQ1ZFLTIw
MjUtMzI4MDM6wqDCoMKgwqDCoMKgIEluc2VjdXJlIGZpbGUgcGVybWlzc2lvbnMgY2FuIHJlc3Vs
dCBpbiANCmNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiBsZWFrYWdlIGh0dHBzOi8va2IuaXNjLm9y
Zy9kb2NzL2N2ZS0yMDI1LTMyODAzDQoNCk5ldyB2ZXJzaW9ucyBvZiBLZWEgYXJlIGF2YWlsYWJs
ZSBmcm9tIGh0dHBzOi8vd3d3LmlzYy5vcmcvZG93bmxvYWRzDQoNCi0gaHR0cHM6Ly9kb3dubG9h
ZHMuaXNjLm9yZy9pc2Mva2VhLzIuNC4yLw0KLSBodHRwczovL2Rvd25sb2Fkcy5pc2Mub3JnL2lz
Yy9rZWEvMi42LjMvDQotIGh0dHBzOi8vZG93bmxvYWRzLmlzYy5vcmcvaXNjL2tlYS8yLjcuOS8N
Cg0KV2l0aCB0aGUgcHVibGljIGFubm91bmNlbWVudCBvZiB0aGVzZSB2dWxuZXJhYmlsaXRpZXMs
IHRoZSBlbWJhcmdvIA0KcGVyaW9kIGlzIGVuZGVkIGFuZCBhbnkgdXBkYXRlZCBzb2Z0d2FyZSBw
YWNrYWdlcyB0aGF0IGhhdmUgYmVlbiANCnByZXBhcmVkIG1heSBiZSByZWxlYXNlZC4NCg0K

--------------CCjlXmLTaBSWd0GxXbMwR5vN
Content-Type: application/pgp-keys; name="OpenPGP_0x0F4B060F8E683241.asc"
Content-Disposition: attachment; filename="OpenPGP_0x0F4B060F8E683241.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xjMEaC75LhYJKwYBBAHaRw8BAQdAgzVCXIHZt0ZdFa1LRqCuDXic9Ym3noPLV+Z2=0A=
josVHRXNHUFuZHJlaSBQYXZlbCA8YW5kcmVpQGlzYy5vcmc+wo8EExYIADcWIQTp=0A=
t80xAO4Ov/97jjAPSwYPjmgyQQUCaC75LgUJXfwPAAIbAwQLCQgHBRUICQoLBRYC=0A=
AwEAAAoJEA9LBg+OaDJBOFIBAJmbe7ixu3T/79cXM23ZL8SMHDwGT8u8tmrneRQE=0A=
1s0XAQDrP518Cg/awIFR7MuNfwaA1lxyVeUiaLHFuuXna+ZEBc44BGgu+S4SCisG=0A=
AQQBl1UBBQEBB0AP3UBT9W9Lh80h4TntGbbtDH9mRWzY0rfYIZeshvqNWAMBCAfC=0A=
fgQYFggAJhYhBOm3zTEA7g6//3uOMA9LBg+OaDJBBQJoLvkuBQld/A8AAhsMAAoJ=0A=
EA9LBg+OaDJB52sBANATNVsqB5HiRzAvH8gDIeIOjMnb42f2DGKOtadcaGGiAQCY=0A=
gfhO1xMJ3QRSHqm1zbtC/ms9Vu0pY9EVG8JB8QhHAw=3D=3D=0A=
=3DjGLG=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------CCjlXmLTaBSWd0GxXbMwR5vN--

--------------itK9fvu1yu0HH4EHqHkmftnm--

--------------E9jx79Ge6SDR7CGEKwpxcRKD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTpt80xAO4Ov/97jjAPSwYPjmgyQQUCaDc7AQUDAAAAAAAKCRAPSwYPjmgyQcGV
AP9rQNXbHzaYt5D08DRtuZudyEVVBw1l6JdSsKrCPdtsJAD/S1+JLPGI5WNMFfijdHaQqvD0az/V
xvOXakZuJJ64pgY=
=DN02
-----END PGP SIGNATURE-----

--------------E9jx79Ge6SDR7CGEKwpxcRKD--
