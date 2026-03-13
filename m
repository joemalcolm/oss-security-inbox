Received: (qmail 1575 invoked by uid 550); 13 Mar 2026 13:25:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25809 invoked from network); 13 Mar 2026 13:24:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.foundation; s=google; t=1773408267; x=1774013067; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y5+x54XR1EksdSXtmPqz7/BR+7sLHjdrFEwdGT1NQXI=;
        b=ZiBLhThPO0OG1TMc6ewr4GbByBKuKDzP6dC8HlQ+r0Leju1yYCZ92iufNGLbSXhR/7
         vA3QlyGgS92Kgn+9YFnXmhm5cCzqtcsQqDwZ1cD1flEFILywPXh2PAM4RNUUN5kwP9gN
         gzg2PhA0T6+LBIV7Bsqe3e2H7pTEUyS92+0jmQ9PpVXWx2zon2V8sqp1KRpBHjmuw+bv
         +6dBekIg1bUQb7Shez/5Xy2ZKQ5Bixm61iAskVcEud632XbtqshrO0fQv/qGrkofQ17T
         ajA53n21AU/ybYFYRQGQ/A9kbhAXa8uYgjE7YD9pwFZe5YwJUeZuKWAc1zrVJdh+6TM9
         xWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773408267; x=1774013067;
        h=mime-version:user-agent:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y5+x54XR1EksdSXtmPqz7/BR+7sLHjdrFEwdGT1NQXI=;
        b=UI0AANbNvzsIN37h0DS1TUHsDM6Nac0ZFCHmGbpQCCf0LsK2o32I0AlxYtIhICYmHv
         0mTz8P/RpUNUaLFiM1k8OBGF1LCAhiwEfQq7wgSjCPRD8UbfBRa0y9VNP90Q8QUSUF7+
         SMjDDIEOcVqTxrvBnAudBlb4XtKwCHHmaez9RdV/qgyM/0ArzQfoiNXcncCJwYdtYvhh
         DU8fns4mF2At0RkbCv/K2G9cklGjumfxnWAdMc7xvwEySuiFmBVw42JbqglY65C6ChyY
         ZpUZe8uUt65pcLPSRFKxtrJq6djDhkguFy+NPkIJi/qw31BmnSdbL6jJKOHCI7pWgr5W
         CniA==
X-Gm-Message-State: AOJu0Yxpcj78PDZFjdUDn5uA9AL4fiJEKaRssPdCAbGFyU+RUCUJYZcD
	eSJJ5SzQANh0h5utYwB1zZbJNG+4k9Jz0j+dmjwcnyTlJzfePw5zCfKaBcwsTMD8ulbhdXE2rJz
	ONrNg25Q=
X-Gm-Gg: ATEYQzyOCmPg64N22zltDpDgqSK98baybEJy8cpCttZFXTqtfZ4mtZTZcYi9qrBVsH3
	sj24myAELeOMQumvzGIs8elSj+DlhLq0sUZtcc8M1SACC2ivaNtyhM+Jq7P8HENm8+AmOiUSQFO
	1sZ7r+yxfm5ndUL7bpY+U5b6bPlE5ceXY/8zOLmhHhPclMZse0jjzU3Dx3moYhM6fBobWjBaaof
	GARBDKpUle9ze4oJZg37zAyn29bGJD+Dd4BkI5sZ0JDUoxFZ7nmvYqZ3CWHh+kNh8Gypi6swMdn
	Vg77Y6Kmij7CwtOk4N3gVCDvlEx+H8wYRZ1kF0uIQOj74hVjHPr+OQ3yUt+TtMk0guzYCcSTgmB
	99Pl2wpLVlLvfrG9OfLVE58Lyxw4mBwmDQ8QYH1LDcmjTT0TZKFX7oZD0FDJtLjp2Sfd5+zV466
	K891sUCpf8MsiOeAOQIEAq9YsCbyLJDYX30hHO427kGOoMvKE=
X-Received: by 2002:a05:600c:1e8b:b0:483:b505:9db7 with SMTP id 5b1f17b1804b1-4855672ada8mr49520615e9.32.1773408266615;
        Fri, 13 Mar 2026 06:24:26 -0700 (PDT)
Message-ID: <1d69ccace48e7567a0ab901251d8841de2487392.camel@openssl.foundation>
From: Tomas Mraz <tomas@openssl.foundation>
To: oss-security@lists.openwall.com
Date: Fri, 13 Mar 2026 14:24:25 +0100
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-/g14cuyNGYbDr0ZiNokn"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
Subject: [oss-security] OpenSSL Security Advisory

--=-/g14cuyNGYbDr0ZiNokn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [13th March 2026]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

OpenSSL TLS 1.3 server may choose unexpected key agreement group (CVE-2026-=
2673)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Severity: Low

Issue summary: An OpenSSL TLS 1.3 server may fail to negotiate the expected
preferred key exchange group when its key exchange group configuration incl=
udes
the default by using the "DEFAULT" keyword.

Impact summary: A less preferred key exchange may be used even when a more
preferred group is supported by both client and server, if the group
was not included among the client's initial predicated keyshares.
This will sometimes be the case with the new hybrid post-quantum groups,
if the client chooses to defer their use until specifically requested by
the server.

If an OpenSSL TLS 1.3 server's configuration uses the "DEFAULT" keyword to
interpolate the built-in default group list into its own configuration, per=
haps
adding or removing specific elements, then an implementation defect causes =
the
"DEFAULT" list to lose its "tuple" structure, and all server-supported grou=
ps
were treated as a single sufficiently secure "tuple", with the server not
sending a Hello Retry Request (HRR) even when a group in a more preferred t=
uple
was mutually supported.

As a result, the client and server might fail to negotiate a mutually suppo=
rted
post-quantum key agreement group, such as "X25519MLKEM768", if the client's
configuration results in only "classical" groups (such as "X25519" being the
only ones in the client's initial keyshare prediction).

OpenSSL 3.5 and later support a new syntax for selecting the most preferred=
 TLS
1.3 key agreement group on TLS servers.  The old syntax had a single "flat"
list of groups, and treated all the supported groups as sufficiently secure.
If any of the keyshares predicted by the client were supported by the server
the most preferred among these was selected, even if other groups supported=
 by
the client, but not included in the list of predicted keyshares would have =
been
more preferred, if included.

The new syntax partitions the groups into distinct "tuples" of roughly
equivalent security.  Within each tuple the most preferred group included a=
mong
the client's predicted keyshares is chosen, but if the client supports a gr=
oup
from a more preferred tuple, but did not predict any corresponding keyshare=
s,
the server will ask the client to retry the ClientHello (by issuing a Hello
Retry Request or HRR) with the most preferred mutually supported group.

The above works as expected when the server's configuration uses the built-=
in
default group list, or explicitly defines its own list by directly defining=
 the
various desired groups and group "tuples".

No OpenSSL FIPS modules are affected by this issue, the code in question li=
es
outside the FIPS boundary.

OpenSSL 3.6 and 3.5 are vulnerable to this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.2 once it is released.
OpenSSL 3.5 users should upgrade to OpenSSL 3.5.6 once it is released.

OpenSSL 3.4, 3.3, 3.0, 1.0.2 and 1.1.1 are not affected by this issue.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next release of 3.6
and 3.5 branches, once it becomes available. The fix is also available in c=
ommit
2157c9d8 (for 3.6) and commit 85977e01 (for 3.5) in the OpenSSL git reposit=
ory.

This issue was internally reported on the 16th of February 2026 by Viktor
Dukhovni.  The fix was developed by Viktor Dukhovni.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20260313.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/

--=-/g14cuyNGYbDr0ZiNokn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJNBAABCgA3FiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmm0EAkZHHRvbWFzQG9w
ZW5zc2wuZm91bmRhdGlvbgAKCRBSdGaiHKeebdqND/4n6//Ot7njGht7NwPN0puR
81u3Iio8YIfMJBWqvnFBVgPfVnAepDqB63H7gBhRNGJxYd4smEOKrwEgY/5QvA0P
Tq2aXGO9UQ45SgCD96SqZ1n7Sw+CHeG8h1ZS+CUdUcnjYYHXEb4iE6UhFbFhiIjy
AQjEvKh4ESI+C2W2ttu5lHrBc+rsXZXfLM4tAKZvqaYj+afcaW5ghNt1AGrDlCOX
cNzg54DMLkJeVQ4symtZKPaoQUbFNP1WA8XkhGZkOH7yBGn4Uk65qzmXW88T22RA
5LgHpMFGESkMZuEVuJsQ5SnGwpd2ihLkL+mXXw7Sa51q+DNbJAXvuq07i6BH9W4z
076tznixqjpu5FZg1LbEcYIbp66q5N/2xdz1BNV8Sve841tBnnvwC0k3Wjkdtdhi
RWnXKrydAmssVNWMZ1wt5OOJfX2wwui9MBJsRodoTlM78eYIW3TfZKnQ9iy0KA94
CYC3+E23s1SDJNi5uKcKZXXnKwaNtvVtzS/RyaKWclr5X3SgMtjNF4sVHPK7kPkd
zt9wqyLZDJPQ34vol12d20EcW6DirSEFVUyNdCg3kIjArwa7Ayg/zCyumkMsipBa
4RfgvkufoG6ORkKTf0eSZ8GBvGzFrW9GVGvaa0FwspWiMtqTtieqMHJNBcprxQtZ
FcKX0kkEgkU5apprMz6bTg==
=+BGG
-----END PGP SIGNATURE-----

--=-/g14cuyNGYbDr0ZiNokn--
