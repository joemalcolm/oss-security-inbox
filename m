Received: (qmail 28541 invoked by uid 550); 25 Mar 2026 15:16:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22149 invoked from network); 25 Mar 2026 08:23:39 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org E9B6C4E429B
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1774427008; cv=none; b=Ixec4+famuajxFsj6qCPYxaS01P9lI6mQvfx/VoZOy1SzG5J7R8PvE0Yor7r0F8edNz1uuutJRCpFn0SPQ0FIgM+v1RbSkH8UVZIW/u6896UBxYNKm2V75FEP9hPtm8uc85zuDuKkv7ifPB4jOkB9hu+z9XmFqap3gCCULrb4U8=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1774427008;
	c=relaxed/relaxed; bh=MdTfJOPndintEZEZVbrfV6Ktg6AjODcZifmAldDy8eY=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=nlQay8g8AKPS/ejZcDxeiYqHijEQaKJS5rLvntg5RyGLVLvCZIHwEaXrunVOYEu+Ix2Ua/UavAS97lvm4pdya8qi8kEAbweKAj7ehsM9b9A15XYnf9ZP8s5k1qz3xjG6/Zwc9Vw+Ihg5AE0WDwYU9hZhjqseW+GIXk+5yehEbpc=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org E9B6C4E429B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1774427007; bh=MdTfJOPndintEZEZVbrfV6Ktg6AjODcZifmAldDy8eY=;
	h=Date:To:Cc:From:Subject;
	b=QegE8lwV3oKKYzhprxd0KRVkTSBbXLwGhTnYmwvx5Gn8HpyZfNdnvjo/kLeety7Hj
	 X1Ktn+OkJRomSA5BuDGi7nmlBSlFqzusDJ4+nmPfGgKA0VSDEdRPaS1wP4lmyqXgNy
	 CFfsZXOnDOzuOiMrOz93jFmP+3rydNPKe1fWn5jk=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org CF7332E6030A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1774427007;
	bh=MdTfJOPndintEZEZVbrfV6Ktg6AjODcZifmAldDy8eY=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=ISPDGJHcGwdShqpIiCY4dER1kxToUO8LUFOzo9r2Wx11I3h4KY0olhz4OnM7cP083
	 zHnFROU61nHlqpypwuYs/V96TzC0BSmFOMgDaHdsXjqM/CeQEUY5JYhk04ggidveB5
	 AuqyI/6K1ciwOziKleTWubd4sfqnp5q03b72zLTo=
Message-ID: <596f43c3-54bd-413f-bfda-e42cac84ea95@isc.org>
Date: Wed, 25 Mar 2026 09:23:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
Cc: "security-officer@isc.org" <security-officer@isc.org>
From: Peter Davies <peterd@isc.org>
Autocrypt: addr=peterd@isc.org; keydata=
 xjMEXqr0/hYJKwYBBAHaRw8BAQdAxXduMttgJDy3cbKcHDxMZJE/dgIneqhFCnFYQlIdH9nN
 HVBldGVyIERhdmllcyA8cGV0ZXJkQGlzYy5vcmc+wpAEExYIADgWIQQpYNJ6zqtdOvyTgWGh
 eR3xxh+xLAUCYY49eQIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCheR3xxh+xLP5R
 AQCuPIZCUw2YqV8FVpZbfBATx3AV05S7IWf5LuNxg8jerAEAr3nGHrUjoIVoY46SGqFUVngc
 MT2sZwp573SOg0yEQQHOOAReqvT+EgorBgEEAZdVAQUBAQdASXica7ntFOvkRDgdRPMiO1db
 1mtUf+L7qH+pa4rKWDcDAQgHwoIEGBYIACAWIQQpYNJ6zqtdOvyTgWGheR3xxh+xLAUCYY49
 egIbDAAUCRCheR3xxh+xLAkQoXkd8cYfsSzzSQEAzIh/IpSNuVDXiVXxcX+VklkVks913ttu
 fGKxS8314MgBANheYCZVUfkc/THpEy5YttejaWZIhV0vEmkbdCAjj1UO
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Wi288jhpnARFBkgo9ECubwtU"
Subject: [oss-security] ISC has disclosed one vulnerability in Kea (CVE-2026-3608)

--------------Wi288jhpnARFBkgo9ECubwtU
Content-Type: multipart/mixed; boundary="------------SFNOKC5S70rdjbdONbstC0mE";
 protected-headers="v1"
Message-ID: <596f43c3-54bd-413f-bfda-e42cac84ea95@isc.org>
Date: Wed, 25 Mar 2026 09:23:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
Cc: "security-officer@isc.org" <security-officer@isc.org>
From: Peter Davies <peterd@isc.org>
Subject: ISC has disclosed one vulnerability in Kea (CVE-2026-3608)
Autocrypt: addr=peterd@isc.org; keydata=
 xjMEXqr0/hYJKwYBBAHaRw8BAQdAxXduMttgJDy3cbKcHDxMZJE/dgIneqhFCnFYQlIdH9nN
 HVBldGVyIERhdmllcyA8cGV0ZXJkQGlzYy5vcmc+wpAEExYIADgWIQQpYNJ6zqtdOvyTgWGh
 eR3xxh+xLAUCYY49eQIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCheR3xxh+xLP5R
 AQCuPIZCUw2YqV8FVpZbfBATx3AV05S7IWf5LuNxg8jerAEAr3nGHrUjoIVoY46SGqFUVngc
 MT2sZwp573SOg0yEQQHOOAReqvT+EgorBgEEAZdVAQUBAQdASXica7ntFOvkRDgdRPMiO1db
 1mtUf+L7qH+pa4rKWDcDAQgHwoIEGBYIACAWIQQpYNJ6zqtdOvyTgWGheR3xxh+xLAUCYY49
 egIbDAAUCRCheR3xxh+xLAkQoXkd8cYfsSzzSQEAzIh/IpSNuVDXiVXxcX+VklkVks913ttu
 fGKxS8314MgBANheYCZVUfkc/THpEy5YttejaWZIhV0vEmkbdCAjj1UO
Autocrypt-Gossip: addr=security-officer@isc.org; keydata=
 xsBNBEsnyOQBCAC+WKYHcaDGD9a2ztwdccmhnzo0YJ9SOPVIonqGxCa6o8TwfipyH9Wh5uFq
 c6Ne+I0+vWohQtBIeodQHgGGlbjdxMp3QxohvqCmZcoObH7kjI1lpKQ6TMvRvo79pq5WRIuE
 +Jbm6Rt9Hz3w9APrYzISzeCuHFK7vlZfaLdoI0SxzEuzMmyOvQpa6dgSKQF6G2Nsbz1RYujZ
 6fE6GXtc+I9q44yJS4llYpUqYpPh5CsfbDx8HwMWPj9eYOwjf3/vniFeG9tHIB8E+p7UBTG7
 bTVRlEgmyC1Ry0OPO3UPKjL/Dja8IeeJamT0dlsRCD/O/WTyxQg9EceCgUvOz65puKkrABEB
 AAHNL0lTQyBTZWN1cml0eSBPZmZpY2VyIDxzZWN1cml0eS1vZmZpY2VyQGlzYy5vcmc+wsBx
 BBMBAgAbBQJLJ8jkAhsDBgsJCAcKAgQVCggCAh4BAheAAAoJEL2X3GOe6MR7gZYIAI4uSaX7
 HwU2ywaCO77q5O/Zzzp6M+Oi+z7G00GFpACMSDSjX8kbZoIIW7FXb9US/9XLwqDtjlrGOLbd
 zcZ/+EMsJM/HpT796YH8Y9gMpsH5SZq5gByeguT6KgjqF2w8yNX7/r0AM3psfVSv9l595CoJ
 WNbDBHqGpqMi55SqKLCQOJ8noDp4x+JVNcJ1AdK/QVSk+gEhLqrvoYNyG8B/C2LL1fBQC8sF
 kX/M1mKlkM83GnJlPWCrig69VlR+relppEuZ5G34z93c9NtCqdH6zLzzej2qmwLb/dYJYvhE
 EMDlgvlSWw6yaJTuuEfuqHonrgOTXgb3Ln8A7XJECuSgWrLOwE0ESyfI5AEIAKUsrY4AxF87
 HvBEqhCXIt1o8plzVoIT5kY/p2n48U+oNGl5v4qNiC4SQZIvsA+Fcew8BhAYbNFTOsK/NKVO
 yiLkLOqQnkuBlESzzvMcl0gSuX1t99V2SJpCKukCa+jkTcjJnURODJn5Wp9GLAWXutxJvJnT
 t4oxcnAKun6Zt1vyOQs2lI9zXCTi8AdDKTiA/Es66CPVCRcMFUS6l9ArN57gUP0KRj8N0OfO
 QPdzShnGrSdtM0D2Ei2pmUcgkvSIeNU5HRd2iMpWGO1L8yfGQvp7dzjWbG7i/2RTnZ+KR3a2
 OMmtXUNuWQF3AfohS0TRTAcAR7IgOLzyy2prT9XKtCcAEQEAAcLAXwQYAQIACQUCSyfI5AIb
 DAAKCRC9l9xjnujEeze1CAC4A+KZdRi08gBxG4hKuvpL0fHfwnVmrLR39c0mQR9tE+iUcOez
 qER3z2fn/Zm5nMTZcauzCXMmFXwKWlGufiDrXVqKCyEHkYyBnn3U9ksRigo8eG/X3+G3US9k
 0c7FfWaIrOY2IdGWUQic0ENOu/94VAFaleI4BBQvnDIY6hr4Fm14qXgssF7YwcEreoUU+Ayh
 Yc52tlDssU9DUaX/vn7OD42FIzpUzgUyoZ97UtPX+m9P5YN2Teeq0iVkcxxmT9wuNYCCZb1W
 03hvcA8uwvRkNDbdQ//dma2gXdUPoXfBJT4kLo1/KV5GimPHdn0h172E1RKLgKtrJ58TVTJ6
 UV1r

--------------SFNOKC5S70rdjbdONbstC0mE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjUgTWFyY2ggMjAyNiwgSW50ZXJuZXQgU3lzdGVtcyBDb25zb3J0aXVtIGRpc2Nsb3NlZCBv
bmUgDQp2dWxuZXJhYmlsaXR5IGFmZmVjdGluZyBvdXIgS2VhIHNvZnR3YXJlOg0KDQotIENWRS0y
MDI2LTM2MDg6wqAgwqAgwqAgwqAgU3RhY2sgb3ZlcmZsb3cgaW4gS2VhIGRhZW1vbnMgDQpodHRw
czovL2tiLmlzYy5vcmcvZG9jcy9jdmUtMjAyNi0zNjA4DQoNCk5ldyB2ZXJzaW9ucyBvZiBLZWEg
YXJlIGF2YWlsYWJsZToNCg0KLSBodHRwczovL2Rvd25sb2Fkcy5pc2Mub3JnL2lzYy9rZWEvMi42
LjUvDQotIGh0dHBzOi8vZG93bmxvYWRzLmlzYy5vcmcvaXNjL2tlYS8zLjAuMy8NCg0KRm9yIG1v
cmUgaW5mb3JtYXRpb24gYW5kIG90aGVyIHJlbGVhc2UgZm9ybWF0cywgY29uc3VsdCB0aGUgSVND
IHNvZnR3YXJlIA0KZG93bmxvYWQgcGFnZTogaHR0cHM6Ly93d3cuaXNjLm9yZy9kb3dubG9hZC8N
Cg0KV2l0aCB0aGUgcHVibGljIGFubm91bmNlbWVudCBvZiB0aGVzZSB2dWxuZXJhYmlsaXRpZXMs
IHRoZSBlbWJhcmdvIA0KcGVyaW9kIGlzIGVuZGVkIGFuZCBhbnkgdXBkYXRlZCBzb2Z0d2FyZSBw
YWNrYWdlcyB0aGF0IGhhdmUgYmVlbiANCnByZXBhcmVkIG1heSBiZSByZWxlYXNlZC4NCg0KLS0g
DQpQZXRlciBEYXZpZXMNClN1cHBvcnQgRW5naW5lZXINCkludGVybmV0IFN5c3RlbXMgQ29ycG9y
YXRpb24NCnBldGVyZEBpc2Mub3JnDQowMDEgNjUwLTQyMy0xNDYwDQoNCg==

--------------SFNOKC5S70rdjbdONbstC0mE--

--------------Wi288jhpnARFBkgo9ECubwtU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQpYNJ6zqtdOvyTgWGheR3xxh+xLAUCacObfQUDAAAAAAAKCRCheR3xxh+xLI5e
AQCC4kmnLtAUjZa0RcZUtnpxWh5KF91MLg/UUAng09z/ewD+NQ35VhNUkIlRf/SZ4iXg2ON6Ikxd
WGjMXzBigs6INQc=
=hSOM
-----END PGP SIGNATURE-----

--------------Wi288jhpnARFBkgo9ECubwtU--
