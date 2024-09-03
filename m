Received: (qmail 3235 invoked by uid 550); 3 Sep 2024 16:15:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3843 invoked from network); 3 Sep 2024 15:54:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1725378872; x=1725983672; darn=lists.openwall.com;
        h=mime-version:user-agent:autocrypt:date:to:reply-to:from:subject
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vH0zajF32P3UnNtbaloRKWohZsjA9i42TTC2o/VPjHc=;
        b=YQwBVIsmb40b+2OCI3cIRRT6NaMSauUKhJj2BmHgILuGotgoLKcrYAW84J5yefPMKs
         +IxXB7Fq4rgJmFtLOltnu654ZlIcrr80KzIJ/XwGFPaw0VZ+sNj7Q8ikPq32/Yjmfvtu
         MMUj68wGeDxMCLR+4zSyjaf90Nc+B+Mj01bPLvAhga/N0/3I9XzaPYwLL7QF56By9tjz
         AK/ZShrQkGWhrnAZCwvBhF2I1wOns/ZV8efE/a2r3SKrG9ZUUySCPjk4tUTY9DX2pIsJ
         Flsi7EDLFjBNOOWAmVbFlcpZGWeixJYJIZ8j3rcwmFrcQJY1omVNPhF0nYTAnV5NouPW
         gRjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725378872; x=1725983672;
        h=mime-version:user-agent:autocrypt:date:to:reply-to:from:subject
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vH0zajF32P3UnNtbaloRKWohZsjA9i42TTC2o/VPjHc=;
        b=g5Pvfbu6JK7M1JAwOs4FbGy1UPb5PpYbaF1ByQx79aK07RefqPnR0ZCoWMVE1sbhkx
         ZCYg5//Em/Qhm6uXbvlrxIq+j/gtrpn+hyP5HttQg3oBilJn8iMYEL7uZdINS1u1cv05
         vipDu0P7FVLVEe6+bQch8GcVZowfI57BZdMLzoC2Qg29GQLBt3bykmcadd+FgMvcNkM5
         7yyZzNdr5NWfvEdfhHuGdGPyP7B24lcfEYra0Qrd/3SVlg3j3NS6Er+CnGwaB0zX1qua
         ptmWZiBULiI1LT5s1EzZlpWgMedThPupsO3FTWrvRjZbmc6cGOtEC1uwDL+4jtTttOkQ
         8i/g==
X-Gm-Message-State: AOJu0YxB41lpJgs1Cfm9Y9n8FLh4sSzL0dh0L4z+rF/LPVODOVaZlbDr
	Fi9VZMAfN1neyxk2Ap6XoYNTxPa4PiaIVdmUbv/MWY9LKOMtI2UnrnmjGM092YDnzyTvDs46daG
	UvJ8=
X-Google-Smtp-Source: AGHT+IGxyHlNyMQ21EP99lrX7Ue4patlt7womY2/kDoNlRoCX34c/tPktroGzxgnKrhOrpnTtsOfRg==
X-Received: by 2002:a05:6512:1318:b0:52c:dfa7:9f43 with SMTP id 2adb3069b0e04-53546b43623mr10100336e87.34.1725378871880;
        Tue, 03 Sep 2024 08:54:31 -0700 (PDT)
Message-ID: <97af5370780a6f6ee4d940aea8b97a367b9debc9.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Tue, 03 Sep 2024 17:54:30 +0200
Autocrypt: addr=tomas@openssl.org; prefer-encrypt=mutual; keydata=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
 I6UkpsaioL7ByEeY4g==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fYhMorQ/iz2nFMwJSR+d"
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-6119: OpenSSL: Possible denial of service in X.509 name checks

--=-fYhMorQ/iz2nFMwJSR+d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [3rd September 2024]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Possible denial of service in X.509 name checks (CVE-2024-6119)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

Issue summary: Applications performing certificate name checks (e.g., TLS
clients checking server certificates) may attempt to read an invalid memory
address resulting in abnormal termination of the application process.

Impact summary: Abnormal termination of an application can a cause a denial=
 of
service.

Applications performing certificate name checks (e.g., TLS clients checking
server certificates) may attempt to read an invalid memory address when
comparing the expected name with an `otherName` subject alternative name of=
 an
X.509 certificate. This may result in an exception that terminates the
application program.

Note that basic certificate chain validation (signatures, dates, ...) is not
affected, the denial of service can occur only when the application also
specifies an expected DNS name, Email address or IP address.

TLS servers rarely solicit client certificates, and even when they do, they
generally don't perform a name check against a "reference identifier" (expe=
cted
identity), but rather extract the presented identity after checking the
certificate chain.=C2=A0 So TLS servers are generally not affected and the =
severity
of the issue is Moderate.

The FIPS modules in 3.3, 3.2, 3.1 and 3.0 are not affected by this issue.
OpenSSL 1.1.1 and 1.0.2 are also not affected by this issue.

OpenSSL 3.3, 3.2, 3.1 and 3.0 are vulnerable to this issue.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.2

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.3

OpenSSL 3.1 users should upgrade to OpenSSL 3.1.7

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.15

This issue was reported on 16th June 2024 by David Benjamin (Google),
reiterating an AddressSanitizer issue raised on 30th September 2021.=C2=A0 =
The fix
was developed by Viktor Dukhovni.

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20240903.txt

Note: the online version of the advisory may be updated with additional det=
ails
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/



--=-fYhMorQ/iz2nFMwJSR+d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmbXMTYSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55tYK4P/0NHagvLSvDQL+nh9NGLVGWN5pS6/xR1
mHZT0ApB+/f6OYvVUAv0nURD+AFdz7xDmZa9b7jyN3upXm3OSjY1ytHiFiMQJFS/
YPpaO5n3EQNYYnkxviZtBS6rWyBBJX7S/gSaOQ3jWzKXnOxOAplN1RnKD015n2nY
XQ7VEuUojBuRNCBt781/q1/zXxiEHPORH7y6mKkI0J+QkR5AMpzKQNENG+vrzRMm
JS6J0qzT47HEo2gYGmu5jj4nltpDvaNdRwr+50HBnf4e8joBTRxVn2nE6zZ+W/n6
ozZ8ucLeiY0wCDEehYreixNuft4nQP9dGl2rG04HY1pTq+ZnebLToLhtj9qMxmaA
rcSj5ZSVTdjFdT8u40jRU8/f1og2VsOI96T5IxjfTafRI5EYtwpp8PkLSlmf/zo8
fRC50kQCB1631wzxHjCd/xDnJ9D4jrIjuI03hIOHVLW58Y14v/FtOw7qX1jvpX8B
VozagNPiQVZOrsUhKsLprNPIActiA976mi7i/o58EZAp+dAGqRqlOkQU3qd21frh
/hcaPYtgkkpRay3hK/vfK0alBE4d2WxSpTLu2KwkRrvIdSj6/4X7RiEJ+dmVVsMn
kQhqZaHMPaLOzSgbijhFjUKRKnql1Y785jvbWypARfVbGOB1yHmiLgXa5t/ZE93B
cvDEfym2ghzm
=ggxs
-----END PGP SIGNATURE-----

--=-fYhMorQ/iz2nFMwJSR+d--
