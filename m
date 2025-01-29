Received: (qmail 24538 invoked by uid 550); 29 Jan 2025 16:58:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21962 invoked from network); 29 Jan 2025 16:58:03 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org F1C833AB2E3
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1738169874; cv=none; b=qtGojUGn2UkrdCn8Pxd09bQwjaAbOloAvuTl6jgim5Vqn05ryxqayba+bDJNGeM2cLwCQ/TKZ99+wBx4MlY/Dlg4aetbVHBR7y6M2y+fc3c59qKQ+Iq6NtaffYe6mq9o0Ik21REpRwTB64vL3g8G4rxPnQtjlK2E/NBQbUHTc1M=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1738169874;
	c=relaxed/relaxed; bh=dwBNcX3R5aiLmR0xS6czeXQq/qObI5yj0CVIwWe6ano=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=IjaHsCOIsAiVqLPhbZ19iclyMMDX5uSQ+dPIR5EkG0nGeJvndBx2ftsSl4m3y/I1sbLpw1zRTl5vGVzkDmgQqjybXu5EjGRzj58FOKlroUa3+GM5Q8Tf/VzMUPLYrM6BKEDejFy+4YNd3fLXjwhkpCSrnguzTIjGU1P+xg83p4g=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org F1C833AB2E3
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1738169874; bh=dwBNcX3R5aiLmR0xS6czeXQq/qObI5yj0CVIwWe6ano=;
	h=Date:To:Cc:From:Subject;
	b=L6A7KUnfj+T0ydbFtQMoneslJEHjLb8r4Zz9B24Cc3bG7Cd6U1s/9xQ3E2HS3drZU
	 G5XdicvFjPovg2LF2/GCPGo/PwxhVk2UHeokvX0C37XTC2yhoK1PgppDZc5/ecLBcO
	 F6482laPOrAz3rR2MInoF+lcN8AGD+xmSV1VToe0=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org C964E112B5AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1738169873;
	bh=dwBNcX3R5aiLmR0xS6czeXQq/qObI5yj0CVIwWe6ano=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=ZgLMktrN1J6UZia2WoDKXtSr8KR0coINLoqLDwkp3NKv3QuSdonKXOFW+dBbKr5/O
	 WuD7EoozMor474NRSfYXc3vRLSXqqnwwg9jElTKFaslpw1+k5KQkjsf8HPVUTR6GJB
	 FgqnoO0UvILkTTY0/Rme3+DB7THRR2DTXaQlpXys=
Message-ID: <86ea5d79-08bb-4999-b123-d4936823acd4@isc.org>
Date: Wed, 29 Jan 2025 17:57:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, nl-NL
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
From: Matthijs Mekking <matthijs@isc.org>
Autocrypt: addr=matthijs@isc.org; keydata=
 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
 muDH2YnCV+VpGzCdqQ5n
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sBIY3kxBggKa93OQG1DsVW3N"
Subject: [oss-security] ISC has disclosed two vulnerabilities in BIND 9 (CVE-2024-11187,
 CVE-2024-12705)

--------------sBIY3kxBggKa93OQG1DsVW3N
Content-Type: multipart/mixed; boundary="------------bfFSEgNAMj0F6vwFe8hybULF";
 protected-headers="v1"
From: Matthijs Mekking <matthijs@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <86ea5d79-08bb-4999-b123-d4936823acd4@isc.org>
Subject: ISC has disclosed two vulnerabilities in BIND 9 (CVE-2024-11187,
 CVE-2024-12705)
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

--------------bfFSEgNAMj0F6vwFe8hybULF
Content-Type: multipart/mixed; boundary="------------6bqdfNm7ApExfuY5lg6h1jck"

--------------6bqdfNm7ApExfuY5lg6h1jck
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjkgSmFudWFyeSAyMDI1IHdlIChJbnRlcm5ldCBTeXN0ZW1zIENvbnNvcnRpdW0pIGRpc2Ns
b3NlZCB0d28gDQp2dWxuZXJhYmlsaXRpZXMgYWZmZWN0aW5nIG91ciBCSU5EIDkgc29mdHdhcmU6
DQoNCi0gQ1ZFLTIwMjQtMTExODc6ICAgICAgIE1hbnkgcmVjb3JkcyBpbiB0aGUgYWRkaXRpb25h
bCBzZWN0aW9uIGNhdXNlIENQVSANCmV4aGF1c3Rpb24gaHR0cHM6Ly9rYi5pc2Mub3JnL2RvY3Mv
Y3ZlLTIwMjQtMTExODcNCi0gQ1ZFLTIwMjQtMTI3MDU6ICAgICAgIEROUy1vdmVyLUhUVFBTIGlt
cGxlbWVudGF0aW9uIHN1ZmZlcnMgZnJvbSANCm11bHRpcGxlIGlzc3VlcyB1bmRlciBoZWF2eSBx
dWVyeSBsb2FkIA0KaHR0cHM6Ly9rYi5pc2Mub3JnL2RvY3MvY3ZlLTIwMjQtMTI3MDUNCg0KTmV3
IHZlcnNpb25zIG9mIEJJTkQgOSBhcmUgYXZhaWxhYmxlIGZyb20gaHR0cHM6Ly93d3cuaXNjLm9y
Zy9kb3dubG9hZHMNCg0KT3BlcmF0b3JzIGFuZCBwYWNrYWdlIG1haW50YWluZXJzIHdobyBwcmVm
ZXIgdG8gYXBwbHkgcGF0Y2hlcyANCnNlbGVjdGl2ZWx5IGNhbiBmaW5kIGluZGl2aWR1YWwgdnVs
bmVyYWJpbGl0eS1zcGVjaWZpYyBwYXRjaGVzIGluIHRoZSANCiJwYXRjaGVzIiBzdWJkaXJlY3Rv
cnkgb2YgZWFjaCBwdWJsaXNoZWQgcmVsZWFzZSBkaXJlY3Rvcnk6DQoNCi0gaHR0cHM6Ly9kb3du
bG9hZHMuaXNjLm9yZy9pc2MvYmluZDkvOS4xOC4zMy9wYXRjaGVzLw0KLSBodHRwczovL2Rvd25s
b2Fkcy5pc2Mub3JnL2lzYy9iaW5kOS85LjIwLjUvcGF0Y2hlcy8NCi0gaHR0cHM6Ly9kb3dubG9h
ZHMuaXNjLm9yZy9pc2MvYmluZDkvOS4yMS40L3BhdGNoZXMvDQoNCldpdGggdGhlIHB1YmxpYyBh
bm5vdW5jZW1lbnQgb2YgdGhlc2UgdnVsbmVyYWJpbGl0aWVzLCB0aGUgZW1iYXJnbyANCnBlcmlv
ZCBpcyBlbmRlZCBhbmQgYW55IHVwZGF0ZWQgc29mdHdhcmUgcGFja2FnZXMgdGhhdCBoYXZlIGJl
ZW4gDQpwcmVwYXJlZCBtYXkgYmUgcmVsZWFzZWQuDQo=

--------------6bqdfNm7ApExfuY5lg6h1jck
Content-Type: application/pgp-keys; name="OpenPGP_0xD507944581A036B9.asc"
Content-Disposition: attachment; filename="OpenPGP_0xD507944581A036B9.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsDNBGeYpgUBDADCujWqkSGQlz3Azw3YhXSTIpqjZRkaLNbLYvpXe8+quEV8xbrC=0A=
X4XMFUh0ruGKPk07qX6I0nigTWMC0eleUNuWXGLbJJ2xOHqe0mipvarBPCuJMH0x=0A=
CVhwJwxbUEaQU1YbYi11Gi8o7xwm5KwxNVyER0rp9zVlS5tfoUEls6NSYjIwgYT4=0A=
D/zkSHdtWNlLuvPHFN996Xyl3FUMK+Z1Gd6FdXK5XF5waTh5ANI3VHhV4G2zibk3=0A=
gTACBvp49KL5+HY8NaYaIStJn2P4hA1xEU50Uk66XWN+GKJ/Poz6ultI2WycC+CJ=0A=
XoQQBIFXwmXgGTGd4I0VS6ZyeMab+l0RJfKMH5xD05KmezDgn6ffJN4OiANN+XWC=0A=
8Z6jRib63YtAoVahvzt0p/eHdWsSI7Isk4rzC6uppO969NLJ5nopCj9YrES2W7Xm=0A=
8ZqDpdb49T6RSU7lCoVrGr89VEMPHijhW0AoQ/elDmhLl/BMuWs3tbBllJqo01Nt=0A=
2PyRcbew4au0LPEAEQEAAc0jTWF0dGhpanMgTWVra2luZyA8bWF0dGhpanNAaXNj=0A=
Lm9yZz7CwQ4EEwEKADgWIQT5ZE1saUDWagmdPZ7VB5RFgaA2uQUCZ5imBQIbAwUL=0A=
CQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRDVB5RFgaA2uQcGC/4ia1jKP+w+JvXM=0A=
9+soxj1KAZ/IKzmuYDaphYVKabfsThaFBSC1EqY5gNsQL2sRqhXxF/spf/SQcGKP=0A=
j8ZT2lXIhgDMzY6K0qIQcRl8fwS8wiiS5IXIzP4M/3FgVoTuK1UxQ77oS2zT0+l3=0A=
n+1SKBxgO9DBWFkhadVsXV51+LHVCAHHxeDXJDYdsdub99LaOj56TGd7z9HpzWe2=0A=
/+KyMCuGhiobYmplOZw3ZD6sEIHYa6tqHnmyOoUNFDG//Njc4ZORDSvRs9EsHxYl=0A=
J0nGJFY5dWWCQ98+px7JNJ84a8gcfrmIa501DEXGA+MVWqs9wPNTpyrgi2NHwsrI=0A=
qWlIG/SoPBC16yZrFYwa8FCFMvo7IFQienDyVOCkte9Xrzy5K04264X+uEerngdo=0A=
Zz7/gQnetlNP2VMRjWddSNFLDKtD0ja86GecS6VfC1RmM9il4fyHk0c+jgshLfN8=0A=
0XFlwxvcQqbNCRtCpVyFdIh9PDlDCBrxD++yCBpJ9L5Tqc4lk17OwM0EZ5imBQEM=0A=
AMUqdrkhT3DwQImaZOQOEL5GXNzhW8Zq4sSO1UtcSS9q0nG0v1HhpU6KqGDJFWRg=0A=
tBfnYK53Ag+AL7in7D75PzYt1u36fxkquAT8ev1pn1V0vopsF9JmQItQdkRistyF=0A=
L9sh5oTTxNgDR3YEXlxfLttsLQAl8e3Yy7m7YJYKi7d+P6FuaA9pHUrbac5oYYav=0A=
SjM0snDD4e1pZ9J0IGOOG9fuKbeFgAG9k7H9e1/lAKc69ruXiu/9zKEeoTZF226D=0A=
Si0NqHbLRpsNsMK+tKBB3nApjjXhz3+VhD3Zg/mql4gYwA3Oyj/zWFMU3I2dGYoB=0A=
FoJIChWG+0lSSJ9QFzkPyRxA6MR/SYATCpegK2Xsrpb496mi3BTpDULKn3Vgr63z=0A=
aBGSdO/AmTArj5EmRe0LZnKYmtPFNaPnordNzaIzv8J8tbm+unzhzfqp4LfTv2bK=0A=
1m+pdA6kf8KOGs8CS+uGInow4SR8EjKU36Su+n7Rn4E6pMymRhROTQtWz8IgErP4=0A=
jwARAQABwsD2BBgBCgAgFiEE+WRNbGlA1moJnT2e1QeURYGgNrkFAmeYpgUCGwwA=0A=
CgkQ1QeURYGgNrkEjQwAlr6rYq34eoxncX0Q3jayd+7Slim71XWHqT3qIov6GJtk=0A=
wtEQ8lGMNGENgtul6gBdZOonFznKe6a+1z9+0F6yCtRmnfi6g+6GdUhB3Jt4eTpn=0A=
6gNKBziqYLG/68BjS+N3usln7dRqUWuuVfXSrn4JQg8FsjZLrg7hhkWX3+Z3sS5V=0A=
B9WozUMtxIg1Nx03N4H1V88N97ipmld5mX14KMNBkcQghEOPHCLQxOJFEXzd6IT6=0A=
wP88W3XK40VqqkYw7HMvw/qa5djMjZhaE789UgH7kuOT3trQYS/cqm4lJBoHNZwN=0A=
X5PCSDPo3OMDa4FlWSzCfPbluiJvsm/5u4SvWgpAvhO+LZCY32ADB7NI1vOyjrn6=0A=
USlwYN3QvBcjsds14Bm0riUhhYyfY40omysNS1CCsrllmgDlDmnVFKnwvWMbxPpH=0A=
03s++7zjhoVNFevhvNVRT+QUO6WuBnej0KlGo7dcQ1VXddR+uN1t42svUMqqYAyk=0A=
muDH2YnCV+VpGzCdqQ5n=0A=
=3D+XxJ=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------6bqdfNm7ApExfuY5lg6h1jck--

--------------bfFSEgNAMj0F6vwFe8hybULF--

--------------sBIY3kxBggKa93OQG1DsVW3N
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEE+WRNbGlA1moJnT2e1QeURYGgNrkFAmeaXg4FAwAAAAAACgkQ1QeURYGgNrkd
eQv+N5CGKQc/lYlLpjEhYs199b4WN28EFjtGY8U6DR+low/OT5Q1ERTuUQ+uLJ1lmA7rR4x0Fvp4
QlEcuGNqneEAXvzqY7JB5f4vy2sYWlNNKH2t7BEW+pNY/OQ4Qq+3EX/8IHORgV8RxTQg9oNmml/u
jOgoEoDycM917RnKBUEAFHsg2tAzcamEkF6CJX0YATMfY8Irg/sb7uRxcvHBNsk9Q1jqKjV15Zal
nvTpA9BcHa3jzEQrNZEq6PYL2Dq7jSrA3lfQnRIlZvW96UlRmv8Bfl9aU8u59ZcT366EuembDSbi
yz6TGN2OZpmKaX9eu8hHm0M1C7VUe2Kp5Vnd22P0wVJ+l3BNBvbpd7jgpu2mxmW7EtUOvAA+8sZK
2tBVQ99E1p9j1OJJXf5rh36V8MhGZyiLc9m+JB6Ym+zAD0f81A09rbtJgd461un/tdaPLAPhMmSS
nCvunTN/JD6M9ilz7GRsQMVPec/U6qIbGd58PL6XQlfRsIyej//RkZq7xTQJ
=SSsF
-----END PGP SIGNATURE-----

--------------sBIY3kxBggKa93OQG1DsVW3N--
