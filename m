Received: (qmail 13325 invoked by uid 550); 16 Oct 2024 17:13:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30103 invoked from network); 16 Oct 2024 17:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1729098519; x=1729703319; darn=lists.openwall.com;
        h=mime-version:user-agent:autocrypt:date:to:from:subject:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dc3dBS8krrXng4Yf09CvoyOBi5iVuIitY1VvbLUCiE8=;
        b=BgOzIM3U7rSOeHYUXsYyzJSt7TVkADvfZJxNIeipKSTP8zsjgHppwb9TR5bcnNFD4D
         gNx9GiW/4vb04nacfAwsfX607WtAKh344J/pDsZ886JdYvgf743ulKl/3a+PAchZ4a9N
         NAzbXLb0OScSWJ70sy1Br6PDJ2Wi6J53rBdc1yrgwcp6CQArYY0DFBS64NRpidLTbYNB
         JgCQBbbit3H0LU/dVWXPOywwnADZPVmONi7VUz+CEYet3mhKQyyhLIKTj9hkCVrjq1NU
         C29cTH4VesN0n6Wm/ax7JU6ltFgv1DnTFppL0ifp511PDYpU481MetJmNZpN0hG1x9d0
         mr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729098519; x=1729703319;
        h=mime-version:user-agent:autocrypt:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dc3dBS8krrXng4Yf09CvoyOBi5iVuIitY1VvbLUCiE8=;
        b=dMwIY3mSvGhDRbGA8tmTzSHrlqIq21Xe1oUfMOapeFhnTJ3MjhlcMKRhIyzXgOMD1V
         L3mzjc1cULaxfdCz1ZHpn4nxDvYdQhfz7ZglZsII+svTduGSG0+fSfWP7pm0MLrmPsVh
         8ivN809DW8WEcEieD/af1FsQONTjWQt31ywyD9LziUCiQ6Ha9viSxkM0/ufd2VEOlwa1
         P1QPXl0h0gNB+xc9cQitFQVd5vYSYdU+B/IXZycwmwcW5uPRwUYi1ffdU7/7sLSchohi
         wxnRuNKWyVBnyuX7dk9bqtOfYtaixJSFKgXe8dJrXpl+VK03DZigTxw5eVSJl9nMXXTk
         +vIw==
X-Gm-Message-State: AOJu0YyeFrPr4GDkT44ngNzdTNmLs1xgjfU9+/3WCbuojxyOrII05dUV
	Fbjfs7S7paFkeuHA6CgyMfJBEcIze1+kGlM8C/oyAS5JQx5Ze4qfx7FKap8QjG/gz9yZuYFX2u8
	qfig=
X-Google-Smtp-Source: AGHT+IF2qqF+Ea6MJ3ry9x+yIUNP1kHmhhyJXIoaV3OVMm5tD4ZlrTYLbyThMiw/4bU/bmUJF/RS4w==
X-Received: by 2002:a05:600c:3b9b:b0:42c:be90:fa2f with SMTP id 5b1f17b1804b1-4311df42661mr171267955e9.25.1729098519333;
        Wed, 16 Oct 2024 10:08:39 -0700 (PDT)
Message-ID: <a1a68f6f1e98d46bb9766614636de4d8eb90a33d.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Wed, 16 Oct 2024 19:08:37 +0200
Autocrypt: addr=tomas@openssl.org; prefer-encrypt=mutual; keydata=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
 I6UkpsaioL7ByEeY4g==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HqPmRgmz3NRfUjZ2DbUx"
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-9143: OpenSSL: Low-level invalid GF(2^m) parameters lead to OOB memory access

--=-HqPmRgmz3NRfUjZ2DbUx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [16th October 2024]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Low-level invalid GF(2^m) parameters lead to OOB memory access (CVE-2024-91=
43)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

Severity: Low

Issue summary: Use of the low-level GF(2^m) elliptic curve APIs with untrus=
ted
explicit values for the field polynomial can lead to out-of-bounds memory r=
eads
or writes.

Impact summary: Out of bound memory writes can lead to an application crash=
 or
even a possibility of a remote code execution, however, in all the protocols
involving Elliptic Curve Cryptography that we're aware of, either only "nam=
ed
curves" are supported, or, if explicit curve parameters are supported, they
specify an X9.62 encoding of binary (GF(2^m)) curves that can't represent
problematic input values. Thus the likelihood of existence of a vulnerable
application is low.

In particular, the X9.62 encoding is used for ECC keys in X.509 certificate=
s,
so problematic inputs cannot occur in the context of processing X.509
certificates.=C2=A0 Any problematic use-cases would have to be using an "ex=
otic"
curve encoding.

The affected APIs include: EC_GROUP_new_curve_GF2m(), EC_GROUP_new_from_par=
ams(),
and various supporting BN_GF2m_*() functions.

Applications working with "exotic" explicit binary (GF(2^m)) curve paramete=
rs,
that make it possible to represent invalid field polynomials with a zero
constant term, via the above or similar APIs, may terminate abruptly as a
result of reading or writing outside of array bounds.=C2=A0 Remote code exe=
cution
cannot easily be ruled out.

The FIPS modules in 3.3, 3.2, 3.1 and 3.0 are not affected by this issue.

OpenSSL 3.3, 3.2, 3.1, 3.0, 1.1.1 and 1.0.2 are vulnerable to this issue.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.3 once it is released.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.4 once it is released.

OpenSSL 3.1 users should upgrade to OpenSSL 3.1.8 once it is released.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.16 once it is released.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1zb once it is released
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zl once it is released
(premium support customers only).

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next release of each
branch, once it becomes available. The fix is also available in commit
c0d3e4d3 (for 3.3), commit bc7e04d7 (for 3.2), commit fdf67233 (for 3.1)
and commit 72ae83ad (for 3.0) in the OpenSSL git repository. It is available
to premium support customers in commit 8efc0cba (for 1.1.1) and in commit
9d576994 (for 1.0.2).

This issue was reported on 16th September 2024 by Google OSS-Fuzz-Gen.
The fix was developed by Viktor Dukhovni.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20241016.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/


--=-HqPmRgmz3NRfUjZ2DbUx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmcP8xUSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55tJ44P/RftVojvBxJh2jeYH2BNFZhbfdgBj7MW
zz+/qIRMG/fb61xftYoQdrZxRIioWR9WQvbDFpM+CqnfYFDgIe7uQKPhND7VQIIp
i3dG7Tp9ibUfzvAfI1rhexOzbecrWmpBi9FSgz8kNx1KjXWgeRvrplStjPcxWTGc
N0ied+XZk8GsTEjQfcnZsaY//JJH9Sv7nurXlHu2FWkzIsYTblbkNUldBjjP6/gg
o3RcRMGe3dbrI+oxtqj+mIbFJbntjmmCyf5K5pgTQWjBz9Pc3oKxN/esX2h7+3Mk
Eq3N25FPTmz8MYRE1MfreIjv/0spv8GJAGseN8Tl0lDDf+D8adiFrkr3FaVWKYKh
ky+d975XvQVenP7BiSLplpSQmo4u/upQS/vPfp9HyMG/xej70ov3hjfmgODJbNlh
agzhgKuFvrhhxKyfpv3c+2Z3qFV358XmihktQXulx8xA050ue800yNoj+zOiry4O
pTYUyAQSg2Wzc/xO4BHJoBrYpirsdlbypNoS67J0L+OYeBAWoPupIWQvInnTOzcg
YI1JeJkXg1X6sZ1s1GB9dW5+e0b1jJAVJXqiF1EwFNqRAUIsN1uZL8z3zwYUk9sa
OLT1SPvCreJ16qPTJLigccz11UbgJkZklMxLQBBrhTeBVYw76cXcR1hLmymzRJq4
+zimuAO/9Cv8
=WLR5
-----END PGP SIGNATURE-----

--=-HqPmRgmz3NRfUjZ2DbUx--
