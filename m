Received: (qmail 22327 invoked by uid 550); 20 Jan 2025 14:33:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9333 invoked from network); 20 Jan 2025 13:37:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1737380247; x=1737985047; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3iHPmXE3a9I5W3RoCuwuzbhTJLToKq9gmfj83CXuMis=;
        b=aZ8zT97ikVLdMcxzXgDv/GrWrQqD79JGl7D8PWjHgiH4yumLUi2mYihe2UDgmY8uqX
         qUpEyP1rCu9kCpX6EkAv2T/UX1/U+fFPIpO4fmtGof2cpbPw9UpZ4Il2MkI0G0wIQ1G1
         zx0vmYHwwXamARju8liAIygf9XnOqRKimy3vp0IQFQRba+stw6WhmSSSjlVXCC1SNDP7
         nAT0J1XBWqZ/w48Ps7R0ZvBhK8Cjnjtwge3ApVDe1rU5aZhD77yP7RaiHO4fpWTXSycw
         vg/W6mfwyIZdfh9Ex6NPVXHuxdCFJIhgoaXaWpHQgQFNmgFE3pjqd5FUL7KVLs7V3owC
         /nng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737380247; x=1737985047;
        h=mime-version:user-agent:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3iHPmXE3a9I5W3RoCuwuzbhTJLToKq9gmfj83CXuMis=;
        b=o1xNXmDefT2L9vA3gjcfgc0sKvVZZQWH6PctCUM4URFd9skHAeK5I4K4+STYyDPMdA
         TM1zV5Xnyzh3DSJu/qm05wdkBHs9qO9N4ndmbcwUcBsA/bM1Kmub5Oge5MVIjHW04p/o
         XFjdu8NPF6xSSQZxe2qgyIhBjv1ZdTYd1+E7hmKQtYzkD4yxintvfSGm4fJAt1+yDTdR
         hd9GANhu/udB1rAH7hy8N6ZrStU3xYfZYmeInRO1/vxGwRGgagrO7tomzKVJVF+Pjq0p
         FUnVGha3DaWS2cWVxjCesOiULa0v/MDz59FzQ0ftj0HUlHFeuXZygMMSHaAl9b/S3NmS
         1X6w==
X-Gm-Message-State: AOJu0YyJu/2ZC7HkL+eSYouDdxjkBEFa3+S8xFy9b3gYwcDk+lpzdlla
	b9HLfKcW2PY1gWJz9UH08aYuS8yD83SNR/N50x65cZv76IFUR1INdvDC7R0j5u3BJSAz5jsq9Wd
	I
X-Gm-Gg: ASbGncsrD4V03JB1mtlJQQvwIX/n5I9VlJVVPNK55QBCcnkEXYi5HD727Dxp3KLHthp
	hpkq092Fp4P8L/wgctSPDMW7v+RIfq3+kaHSmuxVXY0TCKMkMgig1xB+TYo1KKv1qbJ9wieHCRc
	fhdLbAkOuoGkirhGcLL8pexMo6c/LZjvBSqf+LeWkAkCtGo9TfVh7l2bTh2ngEs6sgYVcQo/pU6
	oAZPtpnVhq1PnaEQBmn9NW3GUSO3nBUg1/iFVaJAR6Ewkfo7K7XFliYfscUsU++MW+0MRli2w==
X-Google-Smtp-Source: AGHT+IEHpltWcWn/WF1XNrEhdp9LSZE7bAjpCQ2eejFClhc1OSU/ANsqc4D7paO/28Wm5ZAXdnmspw==
X-Received: by 2002:a05:6402:27c9:b0:5d3:cff5:635e with SMTP id 4fb4d7f45d1cf-5db7db0787cmr26626517a12.26.1737380247551;
        Mon, 20 Jan 2025 05:37:27 -0800 (PST)
Message-ID: <19648147a97551f40744fddcc2a58890c2b59b76.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Mon, 20 Jan 2025 14:37:26 +0100
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dpoU9pZrRxRa1Y2/3fMg"
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-13176: OpenSSL: Timing side-channel in ECDSA signature computation

--=-dpoU9pZrRxRa1Y2/3fMg
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [20th January 2025]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Timing side-channel in ECDSA signature computation (CVE-2024-13176)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: A timing side-channel which could potentially allow recoveri=
ng
the private key exists in the ECDSA signature computation.

Impact summary: A timing side-channel in ECDSA signature computations
could allow recovering the private key by an attacker. However, measuring
the timing would require either local access to the signing application or
a very fast network connection with low latency.

There is a timing signal of around 300 nanoseconds when the top word of
the inverted ECDSA nonce value is zero. This can happen with significant
probability only for some of the supported elliptic curves. In particular
the NIST P-521 curve is affected. To be able to measure this leak, the atta=
cker
process must either be located in the same physical computer or must
have a very fast network connection with low latency. For that reason
the severity of this vulnerability is Low.

The FIPS modules in 3.4, 3.3, 3.2, 3.1 and 3.0 are affected by this issue.

OpenSSL 3.4, 3.3, 3.2, 3.1, 3.0, 1.1.1 and 1.0.2 are vulnerable to this iss=
ue.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.1 once it is released.

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
77c608f4 (for 3.4), commit 392dcb33 (for 3.3), commit 4b1cb94 (for 3.2),
commit 2af62e74 (for 3.1) and commit 07272b05 (for 3.0) in the OpenSSL git
repository.

It is available to premium support customers in commit a2639000 (for 1.1.1)=
 and in
commit 0d5fd1ab (for 1.0.2).

This issue was reported on 4th September 2024 by George Pantelakis and
Alicja Kario (Red Hat).
The fix was developed by Tomas Mraz.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20250120.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/


--=-dpoU9pZrRxRa1Y2/3fMg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmeOUZYSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55trNEP+QGef3tDlrlahT8IXFoq2zd5F/1w5ZB7
y8+oW0jMsrg6ZTyxiggXToeu84YsvsJVAN4PI8Z/j5V4BDbCNysBmTJYFMfFnVh/
2Ita+vsyISq6jzR4mOFh9iCMVYa/4FSkuF/p54EBI1LLG9tGgnz1MFZZUoxsOtkg
soxig23VANq6JmVv0TRCwOx9fcOVkaDb4wMii3NTyU39QqIeTsaRbX6CC1LoNt4m
JQXuH+tl9Lns2iilOQlV0UhZbQMfVgs9r+AqC441xJ9fC3tCyhK/nkN8q3iQSIPH
cD1JoMviM1ykXo6UrmfVaZk52UnB3UiXwGTPhufZFbF0SrUY0j4qPocASkUzCsi0
CrZLuDQydGyR8pTYGxg+6v55ND53vXYaqaSgy16j2DeeD/SXfVLMPvABTTnkmUFm
TA7e+9RtkNCS7wLek6RD7CBVkYGzOW4G5rJsdgohMaLryXmO0Nnhqnw5dCcwP7t0
qPbPevBUZ6j8VN4c8/aJg97AhDazrLdijbb9HmfdjFXyMKDGyNgJC7ZmFO9628mN
Z7iUQVlOJCUxbyOaRr2eufLepHdmuapTXnCTMkX6w0KaKbesGNDLa3gujqjcIqV4
n8lTpBVCv1+84xJH1WF2TLy4N9Kq8fagBa/uVmoG92GYWrt43Uiqywe6agXsFOh0
KWPueL6rNHtH
=crIw
-----END PGP SIGNATURE-----

--=-dpoU9pZrRxRa1Y2/3fMg--
