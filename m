Received: (qmail 14077 invoked by uid 550); 5 Jan 2026 15:00:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7827 invoked from network); 5 Jan 2026 13:45:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767620746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7I4p3aYlI7NytSQZieEgJtfCw+TyQFBh/8usPZruibU=;
	b=NeOnqe63Pas4c+/9DUQK6OKvSxGI4VWTWVokrvLd2e1o6VzoXSWBEdTq835I3GmAuNRmxB
	8ZD+dds0KGBhLBeh0xg+Ihc/KzSRNYiuOTMKoerVh5aLt+cTTmsTj80wL0x9jS26Fx4rlp
	bc/zO9Jp88ehaa3AenCTxioE60QGtSQ=
X-MC-Unique: ISpL-r3uP2ueTxqpp9vLCg-1
X-Mimecast-MFC-AGG-ID: ISpL-r3uP2ueTxqpp9vLCg_1767620744
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767620744; x=1768225544;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sXOKr56SZBQS6DeMQmCWM29MZ9Ovws/VL6504b5iDOk=;
        b=bA5xaMSfEflNPY8jMy+1VkyusLAIvbsagz66a9bBPAnv90mbIjyU2f5vB1y1+egYy0
         0uI130gvJQ94JlOWxqnKa+vLjNb46H6TIC4G83DYmlKFHfZFo/EK6eqSWSDKvbcc28E3
         EZnqZAApzSTldhX8+xyg2N1AtERp54nDpzQrk5bb6orJ6qPmifZnUjSSvFkRfn4h9yJ6
         dQjjkx0S8ihoomz2gQh6g2xVYicmCR0gwMuvD/d+k1TnOCW7iF2OX4mYWXAq2+c9jwq2
         sh8SpQNhLRLWnU1WOicp77kecZJEYhZsXO4w+ANoIyaD6ga2EeXie7xFBWyz3HL46px3
         7sKQ==
X-Gm-Message-State: AOJu0YxZh8ob6gIRg2cmm6dLleomFcPELFT92EIrmWfcSbjEmKPJPDuk
	LwPvBfK0KOn9GgahZZ9SQ/ZmelZqdFKJGQMwenRtOBKUuyx5mejhL6qpWUIDFSwIc4kALw8vxRi
	MzRT11Y9PxjcimqpGoVLId/khntBZCNaLwMtk0PUWtLdsrW0XX1q/YTP5vdsY5qPX2/5ZDvdwIu
	cPs4fZ
X-Gm-Gg: AY/fxX6tnDujJxp2wxia4in+XT0464UFSPCMKpfTVG7ITDMn1Afgjg0UhXvt8uCGb82
	slucJe5vikP8YKn/kbSysyIcdUKPtz8llNd+8JmWNlByhCEcJgDYILJITD0kWi9qhthqKjCuque
	nIyHsP0Qn9WnVC8z1G0BuLH+orQYbWaFoJ2yTNFg0aOMQPqf2YxGK5HXHOOR7W8HvU+9zvnz4ch
	O3RaWPDn3y4cKDuBtBPHQYVNoRcWuOBVSPCvwhK6JTgOgtsMNuWcmswPreeIFd8Yel4IqF2WQIW
	rQhQopH2sq98KWBv5+vrK57BbAbDbAQUEyPmiL4PBQAZW/3IqMu3Rn3Z+tKf6qWoCyEC53HDAoY
	hohWhZObd7mhV1tiFbbLhz52x9O8cjEMBDKDKxWop5KDkh+Uaj36Jv3Q2i37t2JYHBbENU0qJg4
	E5PkWTw/LrrCMP3E+tRqBmRA==
X-Received: by 2002:a05:6000:2c02:b0:42b:3246:1681 with SMTP id ffacd0b85a97d-4324e4c97d7mr64206694f8f.18.1767620744297;
        Mon, 05 Jan 2026 05:45:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCyJ/cf83UjOwOBsjFRdngZl+nNpgR4ApvTxWCn4SoIVx2bhVkx6zjG/PyDdpEPiDO47aWDw==
X-Received: by 2002:a05:6000:2c02:b0:42b:3246:1681 with SMTP id ffacd0b85a97d-4324e4c97d7mr64206674f8f.18.1767620743823;
        Mon, 05 Jan 2026 05:45:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
From: Clemens Lang <cllang@redhat.com>
In-Reply-To: <1d14be2d-3797-45a3-ab1a-485a3fd28cd5@gmail.com>
Date: Mon, 5 Jan 2026 14:45:32 +0100
Cc: oss-security@lists.openwall.com
Message-Id: <73556662-274E-40A3-A08E-37C23D7F321B@redhat.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org>
 <9882E5D7-2B0D-46DF-A0E2-3E23D8DCBF66@redhat.com>
 <1d14be2d-3797-45a3-ab1a-485a3fd28cd5@gmail.com>
To: Demi Marie Obenour <demiobenour@gmail.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: a-vK1mZw9K4503tpG7fwCQD2Z1W2bXXIsOMuJDfk0qs_1767620744
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Best practices for signature verifcation

Hi,

> On 3. Jan 2026, at 22:29, Demi Marie Obenour <demiobenour@gmail.com> wrot=
e:
>=20
> On 1/1/26 15:41, Clemens Lang wrote:
>> Note that there are some outside requirements that at least companies wi=
ll not be able to ignore:
>>=20
>> - CNSA 2.0 (relevant for US government customers) does not allow SLH-DSA=
, only ML-DSA
>> - Common Criteria certification requires elliptic curves >=3D 384 bits o=
r RSA >=3D 3072 bits, ruling out ed25519
>> - use of FIPS-certified primitives (historically a problem for solutions=
 implemented in Go, or shipping their own implementation instead of re-usin=
g OpenSSL, for example)
>>=20
>> Some of these rule out signify, for example.
>=20
> I think I understand the constraints you are operating under.  However,
> I do not believe most open source developers and cryptographers
> will choose to operate within these constraints.  In my experience,
> most of them are more concerned about security and ease of use
> and implementation.  OpenSSL has a reputation for difficult to use
> securely, and my experience is that libraries like libsodium, the Go
> cryptographic libraries, or the RustCrypto crates are preferred.

I agree that most open source developers will not (I would even argue *shou=
ld not*) choose anything to satisfy US government rules.

However, OpenPGP is also used for package signing in Linux distributions, a=
nd a few of those will care about this use case. All I=E2=80=99m saying is =
any alternative to OpenPGP that ignores these requirements will face adopti=
on challenges. And yes, I know crypto agility has pitfalls when done wrong =
=E2=80=94 but always just using ed25519 doesn=E2=80=99t cut it, either.


> Personally, I don't see cryptographers and open source developers
> becoming more interested in complying to FIPS 140, CNSA, and similar
> requirements.  I suspect that a better approach would be to change
> the requirements to those necessary for actual security.

While I agree on technical merit, I don=E2=80=99t think the US government w=
ill care. It has taken years for FIPS to accept EdDSA. We=E2=80=99re talkin=
g decades, or more likely never, for ChaCha20-Poly1305 or Argon2. In the me=
antime, distributions that have users in the US public sector will probably=
 just stay on OpenPGP.


> These could include things like:
>=20
> - Only using algorithms that have been published in a reputable
>  location, such as FIPS or a (possibly informational) IETF RFC.

Algorithms published in FIPS are by definition acceptable for the US public=
 sector. So is being in FIPS now bad or good?


> - Not being vulnerable to timing side-channels.

How do you propose we show the absence of timing side-channels? And why hav=
en=E2=80=99t we done that for the last 20 years when side channels kept pop=
ping up left and right? And does that novel approach also cover power side =
channels?


>> Any solution that hopes to be widely adopted should be able to address t=
hose, if necessary through cryptographic agility.
> WireGuard is a very widely adopted counterexample.  It is used by
> TailScale and many commercial VPN providers.  I suspect that the
> individuals and companies that push new cryptographic algorithms and
> protocols are very poorly represented among Red Hat's customers.

There=E2=80=99s even a US senator pushing NIST to allow Wireguard [1], but =
as things stand today, the US public sector cannot use it.

Note that this only affects a subset of Red Hat's customers, and RHEL does =
package Wireguard, so I wouldn=E2=80=99t say that people and organizations =
that push new algorithms and protocols are poorly represented.



Look, I don=E2=80=99t like these US special cases, either, and NIST is too =
slow in adopting better algorithms (in the case of password-based key deriv=
ation functions, I=E2=80=99d even argue dangerously so). If we want a bette=
r replacement for OpenPGP, we should just have all requirements on the tabl=
e. I just don=E2=80=99t want anybody to be surprised down the road when Ama=
zon Linux, OpenSUSE or Azure Linux stay on OpenPGP.



[1]: https://www.wyden.senate.gov/imo/media/doc/Wyden%20Letter%20to%20NIST%=
20Re%20Gov%20Use%20of%20Secure%20VPNs.pdf

--=20
Clemens Lang
RHEL Crypto Team
Red Hat

