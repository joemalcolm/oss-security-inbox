Received: (qmail 32694 invoked by uid 550); 2 Feb 2024 21:24:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30700 invoked from network); 2 Feb 2024 21:22:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706909111; x=1707513911; darn=lists.openwall.com;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g8OBhjZur2LIvnSRBakerLOChooFESTA9xyH978CZ0c=;
        b=lb1d1qMnH/bS/demOPbb+t38p5CcrCWyajrE6P/tnZzgK9Y1U5C0351OEcIAUbBVYN
         kLUuzHwrq1XtvfEkmTtpSkB9DxQIYTOpeMRYrl/apOc06en2PO5OHRWF8pFsp3NEna4L
         KZ8CSOMcR+c2jjxRnEzlPJiFE3IACXzjQdixI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706909111; x=1707513911;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g8OBhjZur2LIvnSRBakerLOChooFESTA9xyH978CZ0c=;
        b=NkFqHZnxW8yaGKTPqqjmDtXSBuKzMUJFyYbVL4S/0hb+Z6G1Y0bGT6V7QDUf6GdjsJ
         xg1q/8nBTkb7u6VOcScP3bkhS/wJuxbYY3zs9TG3UUhQJY18b3Jos1TgjU7PJ1iqU3x8
         EQtmAwDKFIC3z6zVg+xaRh9+xXJX5nRMQGZRJKrhXC3IAp5iMGvEhtugi9YZPAXqYOe8
         kLZsGZ93tkxYOB0CbA6iDofUPCUzWGuZ9wXSb1Gm3VxThwhApQa7i+sNaKXqk6b5TnwN
         OkpSssg26dqIXUAGc0qq76baBDTacVolOGwM8g0+afwnvVKIL8PJ1ToHPG8vHCgBFp2R
         by+g==
X-Gm-Message-State: AOJu0YwDhPy9v/yksUySQXe96pZs2+1fS9VOEczWp5uxPqpg8A6TRuQW
	VNMKL7xzTuAZjV/ojc83qRD2FQ0BAK+Qpn6Ks7MPV3NPklqbb1B5DwQxNWAJ6dMP1UwnsWSOZnA
	=
X-Google-Smtp-Source: AGHT+IEsxmQCjUceEpyNYcchYncRzFFTZahw+QDXPv4DLZjykukyvdlFNDvUJ1RiNYY6AgEzge2eFw==
X-Received: by 2002:a17:90b:88:b0:296:889:63b with SMTP id bb8-20020a17090b008800b002960889063bmr6237701pjb.42.1706909110358;
        Fri, 02 Feb 2024 13:25:10 -0800 (PST)
From: Roxana Bradescu <roxabee@chromium.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E1F0A145-FBE7-4F57-A702-48A42AF9A7DA";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Fri, 2 Feb 2024 13:24:58 -0800
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com> <2024013010-jockey-kindred-c6cd@gregkh>
 <20240130214500.GA24892@openwall.com>
 <2024013003-clubhouse-mauve-222b@gregkh> <Zbmav6mcBVq0zGGy@itl-email>
To: oss-security@lists.openwall.com
In-Reply-To: <Zbmav6mcBVq0zGGy@itl-email>
Message-Id: <36C1AFC4-7142-4557-9127-658BABE0AAF5@chromium.org>
X-Mailer: Apple Mail (2.3774.300.61.1.2)
Subject: Re: [oss-security] Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

--Apple-Mail=_E1F0A145-FBE7-4F57-A702-48A42AF9A7DA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On Jan 30, 2024, at 4:56=E2=80=AFPM, Demi Marie Obenour <demi@invisibleth=
ingslab.com> wrote:
>=20
> On Tue, Jan 30, 2024 at 03:01:24PM -0800, Greg KH wrote:
>> On Tue, Jan 30, 2024 at 10:45:00PM +0100, Solar Designer wrote:
>>> Thank you Greg for looking into these issues.  It's great that most
>>> longterm kernel trees appear already fixed.
>>=20
>> I've taken the one remaining missing fix into the next round of kernel
>> releases, so all should be good now.
>>=20
>>> For CVE-2021-33631 (the ext4 BUG), both the distro vendor's and NVD's
>>> CVSS input vectors specify AV:L/AC:L/PR:L/UI:N, which means the
>>> vulnerability can be triggered by a local system user at will and
>>> without additional privileges.  I'd say that deliberately getting the
>>> kernel to work on a corrupted filesystem requires at least one of:
>>> physical access (AV:P) or privileges on the system (PR:H) or user
>>> interaction (UI:R).  However, there's no way to encode this in one CVSS
>>> vector.  Also, in the physical access case, at least the availability
>>> impact typically does not apply (would be A:N).
>>=20
>> The "interesting" thing here is that the project in question (the
>> kernel) does not consider "mounting a corrupted filesystem" as a real
>> attack vector at all.  There's been long discussions about it, the most
>> recent being last year on the kernel summit discuss mailing list, and at
>> the kernel summit itself.
>=20
> The kernel itself does not, but there are downstreams of the kernel that
> do for at least a subset of filesystems.  These include Android and
> Chromium OS.

ChromeOS Security here, and this is correct.

>=20
>> So while CVSS might consider this a real issue, the developers of the
>> project itself do not.  The disconnect is one that drives people who use
>> sysbot tools to create fancy corrupted filesystem images with the goal
>> of getting a CVE for their CV, crazy on a weekly basis when the issues
>> they report get constantly ignored.
>=20
> If someone finds a vulnerability in F2FS or ext4 that can be used to
> compromise the kernel by crafting a malicious filesystem, they should
> report it to the Android or Chromium OS security teams, respectively.
> It=E2=80=99s a verified boot bypass and I expect that it would be in scop=
e for
> the respective bounty programs.  If Android mounts FAT and exFAT in the
> kernel, then vulnerabilities in these filesystems should be reported to
> the Android security team.
>=20
> Google requires that F2FS and ext4 are secure against malicious
> filesystem images, so they should be the ones responsible for fixing any
> vulnerabilities that require a malicious filesystem image to trigger.
> Fortunately, they have the resources to do that, so this should not be a
> problem for them.

Vulnerabilities can be reported to ChromeOS and Android via https://bughunt=
ers.google.com
If any questions, can reach out to chromeos-security@chromium.org=20

>=20
> Could this be documented somehow, so that people know to send reports
> against f2fs and ext4 to those who will actually fix them?

We will document something on the ChromeOS side. Thanks for flagging this!

=E2=80=94
Regards, Roxana

> --=20
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab




--Apple-Mail=_E1F0A145-FBE7-4F57-A702-48A42AF9A7DA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEgZzAKV63cJrecgABXEIiv89pXdUFAmW9XaoACgkQXEIiv89p
XdXXyg//RaUwmIGp/cZGlOQFB9z7HHgBD04neV7H3Xj5B9wpHaCxUCgCLvvBQNA4
qJu3pA8mcPkIflDFpG7sKEDob+8pnaIO0WSJJ0fXAmP0rI7IzCLds/upBAgQvDtc
ACgGN2+D4bzQ7rFMwEYeWiC6owd59BVrypTMr2/9LnO7PGf+U0vezhGVbWnhR59T
ZWxDiOVYHxVdywmwBdRCo9q9ugSV0f5baLw4oENxORQwaFdVMu5BJOM4T4dpu/Sp
7XvGwVoITRQglo56ZQcpcLz0bDUeDlCScuP3fc5srVveDjkJc1YrQeY9/aTTxDB2
hs9yBK0h+eEmF5HrFRetjpi8gRqcr2fdYbMbKfGu4vLj7Oi/DjW6C9YHkuyuY6S0
abSDfw2tAAlhP7waK7dPkDVPK8K1R6HCVTvtcAk3gYuvXVwikGkxWVQPVBB4idqF
DREoWtpmA8h7oIurAUEdfmUGdLp1efR//ewxWegrxNn36mV0v1sJ7HYNCq90M0za
M9F6GRjh6AxO/gWSPk2Jv3vJcRxUP4HHrwr2g1R78xnWsJHxioHh8Zebwx9QkgtT
7AsSiNl9FaDT7xypEn+YOQ8dbgjBypTWx3HhYzy1VVlP0eqvPI+yf/6fk8LzUs4y
mBtlYpgu5tdyyJZRfMgcWHU7ZtNUZiPleSsduvHTiGURf0C/ZvU=
=AIl/
-----END PGP SIGNATURE-----

--Apple-Mail=_E1F0A145-FBE7-4F57-A702-48A42AF9A7DA--
