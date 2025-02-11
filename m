Received: (qmail 21874 invoked by uid 550); 11 Feb 2025 17:01:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23614 invoked from network); 11 Feb 2025 15:56:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1739289408; x=1739894208; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yv2jdfQzqJalNhm2mndrNZ4beryaMLDunAkryVe99X4=;
        b=NNjDkqMzHzJpFY9tIfYRdrpDhNhijXcp3nJMRSRSbVCsG0Z4J+XJE2ApH7j74RRtBn
         /Nlqzy1qN1YwyA2NFVWlHVR4zKa9Rd385BzG//Xs2YYM0wXVybl/iFxySFZH4i3qDwEd
         4EOggDKJC16KVimOzw4kDsMA9fe3doK4b5xmdaPVdL9iC5Nuoc6FIrqkbCOfpUPuBjcJ
         Rj3IlFvUAcnjW1D5VUz+jJu7IQZLB0OectanMb56hrSaViZrjsPmCrmjakU6lD+pkDqC
         Yg8MyNKb+WIYX14rOyczeStGN8R1xDT3hLajgcGOMa6vIyIDtK9r3D3MiLIIqG98/bz0
         hnMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739289408; x=1739894208;
        h=mime-version:user-agent:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yv2jdfQzqJalNhm2mndrNZ4beryaMLDunAkryVe99X4=;
        b=T38m9Ser/Y21xSnFxjoWdt8P/lPWcYbqoN9GfNrFaGiwTdBVhEyxUme50qVAAqCMNi
         IXPuo1xwtOKvt9i0NWi2uVMPoy7tosZFqLBkLtQuE9LsfVsWrNE3UbNejZ/9P/ziG/jj
         EDBJEqTPyxloF05mE7TPcu4eunMbn3wFxuzSKPLxs1jDK8sbOxo+UOoDtpgNzzlNTH2u
         kP0SEVKRqppr/usSNTi0NbGxVv87Ekmf4sAYOrvBZsCq0dFxgUV9udzz1PwPs9yPaTp/
         k7u/Yo+nj67i9uIe3JVia/MNUWyphMo3Ydcms77Yas8bXyC7aVnaVITaVgK+booyTJyp
         BUjg==
X-Gm-Message-State: AOJu0Yz2ZHRA0VcqV3Wx5CWMmAVOk037F600s1NMxtOPNsxl+TNNsmdp
	1V2KSkhAxvkaKarx7ucYaRkuvS7fuFliymPgyGZfX3+LazwoCfSdPFvKibEgBnDZ2IbSGZxiEA2
	nJTY=
X-Gm-Gg: ASbGncuZE0Rt1k0ceX2Cf2VDlly68BFaeK5zRtu8YVGq6Nq8XRSS2fA8MKMy0twQb7S
	awjDRnV6BOpmz/E0ljqiksxMjshynmCLqIs5AhPuIz11lL8IhTM7MgnfGmyBhG0WYk4bug35Qtj
	N+5KI/VWeWM2RjYDsmjJphLt4F5BxIWK0+9eHD4VLobaHmBg+dZ939jIB8R4yMaK9Q8uxYONrKS
	5b/CQnUTEwPOA1GOjkedis8xcUkZTHnhYoSrOSMNqlWrsd87evqpMV1bBkD2X1upusWiZcBIUTt
	Hwwmo4XFNX22hJJRFdO2zWKibMrcC9h85eq9DZw=
X-Google-Smtp-Source: AGHT+IE922UEX+x8FrZrX9deUhvF0By9DTOtqePZ5eMzDMzBpSk4dN+UV0LEFJCFj5Pr9Nm+RsyZdg==
X-Received: by 2002:a17:907:6ea4:b0:ab7:da96:df77 with SMTP id a640c23a62f3a-ab7daf7886dmr389900866b.12.1739289408157;
        Tue, 11 Feb 2025 07:56:48 -0800 (PST)
Message-ID: <b9b32441ba31a6eb8528337b0d81d57f6108a356.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Tue, 11 Feb 2025 16:56:46 +0100
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fezRcREWvPAS+zdZkgyP"
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-12797: OpenSSL: RFC7250 handshakes with unauthenticated servers don't abort as expected

--=-fezRcREWvPAS+zdZkgyP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [11th February 2025]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

RFC7250 handshakes with unauthenticated servers don't abort as expected (CV=
E-2024-12797)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: High

Issue summary: Clients using RFC7250 Raw Public Keys (RPKs) to authenticate=
 a
server may fail to notice that the server was not authenticated, because
handshakes don't abort as expected when the SSL_VERIFY_PEER verification mo=
de
is set.

Impact summary: TLS and DTLS connections using raw public keys may be
vulnerable to man-in-middle attacks when server authentication failure is n=
ot
detected by clients.

RPKs are disabled by default in both TLS clients and TLS servers.=C2=A0 The=
 issue
only arises when TLS clients explicitly enable RPK use by the server, and t=
he
server, likewise, enables sending of an RPK instead of an X.509 certificate
chain.=C2=A0 The affected clients are those that then rely on the handshake=
 to
fail when the server's RPK fails to match one of the expected public keys,
by setting the verification mode to SSL_VERIFY_PEER.

Clients that enable server-side raw public keys can still find out that raw
public key verification failed by calling SSL_get_verify_result(), and those
that do, and take appropriate action, are not affected.=C2=A0 This issue was
introduced in the initial implementation of RPK support in OpenSSL 3.2.

The FIPS modules in 3.4, 3.3, 3.2, 3.1 and 3.0 are not affected by this iss=
ue.
OpenSSL 3.1, 3.0, 1.1.1 and 1.0.2 are also not affected by this issue.

OpenSSL 3.4, 3.3 and 3.2 are vulnerable to this issue.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.1.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.2.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.4.

This issue was reported on 18th December 2024 by Apple Inc.
The fix was developed by Viktor Dukhovni.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20250211.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/


--=-fezRcREWvPAS+zdZkgyP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmercz4SHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55thywP/2H/cbouCkdPuzUz9TtPiqCNqCtPV4f9
jTpo0JoCj5ttY/0+J1dOp8I1YwJxakxjTYz6o44AmClLep48FScZ9FRMpkxTLlCM
p85yhqyzyax7uZ9qTNJUZ3Sf797GWeLH/bdBTPtCmQEUbI4ExcdRolU+RPwims7a
8yOcF/ZWVapn6oqcyBqyNc4IjnPJcFLTIftklYeBJhMRICv1lzgg536fwceh/FuJ
USuS936euU3JiDxBSB3ycNUNUKeHCafjgqGYVIVKYfONPxW6dyvQF6L238XKFp3I
FJ1byJdmoYibIrcf1be7Zm1Kij+lNAtvExmbHG7pvK+E4ykkMceUkp8TamSHxiUX
i1Tcz4CbYf8RZ5HeCvik77smpJhLhc25t7g/lSBSCuksSzCV2KlUjceomBWm717/
gLYoDBK4Jw7GVHZd4Ismw0RR/HHAtMVfHD/598/F3QpY7URWY9oIHEHZW+tt1TTx
+eE9b8UzC00AzrbdgjHzNIh1BbK7wJpebNMPnJeQ4uBrraG4ulGiBmx6W5+LhwBD
PIfaRM7hVJtu0F10Dzfwp0+5t6jAx5N68PVUXOZjvGZux/93jwbJqjXg1YUtDk1h
8N9/RJs2ckKGaAu+Rsob3dEYs+46AH+VeOW0l/2C9z/iKDiNlc2pczjhDlHcO1H6
dSHdjKCCujgU
=sH2A
-----END PGP SIGNATURE-----

--=-fezRcREWvPAS+zdZkgyP--
