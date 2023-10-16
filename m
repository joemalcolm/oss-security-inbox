Received: (qmail 19904 invoked by uid 550); 16 Oct 2023 01:49:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14182 invoked from network); 16 Oct 2023 01:39:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697420373; x=1698025173; darn=lists.openwall.com;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BzWTehqLgSCJnLS0hYq+BojO/q1e95XxA7+g1e33Xhs=;
        b=lCvyuNzM+rwoO57Xh1kuVu3I2ryEBU+RCPfciD3HA47VK+ro92hzyJtrCqr8Y71RkH
         GMRYJefaB4cEEQXQybIKqyX902Js0kqrfLSFdFmvVQh4UoL5RLduSHPWWtiq1xi1K722
         xuJqatwMj/VWN17I8pghcveJ7uuRRtCnX/K3ijMUG+ODZjqKwVAXqKdNsGzMwq6lqIsg
         tD618NJJmEaKjfeDm97K5bm+a0r+3BsubcKkDwUB33PJzQvRyeU5tScb5XkqieXopGoC
         8bhd07s99pan9fopvJE3nQSbwHP9Mqk8iRRPDxnjIyJt8JMwQmmnRrjSFH0lKTsahFwR
         PoaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697420373; x=1698025173;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BzWTehqLgSCJnLS0hYq+BojO/q1e95XxA7+g1e33Xhs=;
        b=VHYnkmfROaPjugcwhqe0fQCymKLt4kGHnLjmSvexWdHMZUuxuoOn03hiY1HfubjBxH
         m8479HBqRUniGFLo1FyMne1ycn5FuEqzZPyaxddILw7bL3WeuSe4d74DP3J11Z6gGZh5
         6uKXmKyqkbs6IkrCbj6Vt9e+0PypTgbZ26MtPAGwMh+8ZtxKb5D0ptpgBqOhBGzp5s4T
         0yQ+jhDp4wDwAGuIzKzgOzc9VzMmaldKWfcnWiAWw1fuyGiGZLByi9XqJrRPoDEOvlEl
         HnvIM/A0NzTyh+sW+5MV8itNWxTH/05f1P2dYowlqONvaTJn4oVc+rH9YoD2IdbGpLs2
         Oi1w==
X-Gm-Message-State: AOJu0YzJKHfm1Wm5MWODGuOd9Mduon4FIogyL13pGBDOvWbPQM+i5ljW
	Rrs90k8KY/9S9yt7jFzD2TxoEq7ao2Y1Ew==
X-Google-Smtp-Source: AGHT+IGfjNKuHet+OVA+SuMFON/0to73vGAXM1/sY8gb8RH+G5o/OBaD2XjuGHgSPoqPEQ7gs8WSiQ==
X-Received: by 2002:a05:6359:6e8e:b0:164:96fb:cb0d with SMTP id ti14-20020a0563596e8e00b0016496fbcb0dmr19085557rwb.29.1697420373389;
        Sun, 15 Oct 2023 18:39:33 -0700 (PDT)
Date: Mon, 16 Oct 2023 09:39:29 +0800
From: Aron Xu <happyaron.xu@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <ZSyUUSF_-3YbT14k@workstation>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2M+rr1o8FmqgBa7M"
Content-Disposition: inline
X-PGP-Key-ID: C38E8160A17841FE
Subject: [oss-security] linux-distros membership application of openEuler

--2M+rr1o8FmqgBa7M
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I'm requesting linux-distros mailing list membership on behalf of
openEuler[1], a Linux distro that's actively maintained since 2020. It is
hosted by OpenAtom Foundation[2] with many forms of support available from
Huawei, Kylin, UnionTech, etc. It is publicly available, free to use and op=
en
to contribution.

Here are the responses to the membership criteria:

> 1. Be an actively maintained Unix-like operating system distro with
>    substantial use of Open Source components
> 2. Have a userbase not limited to your own organization

The distro and its commercial derivatives have more than 4.5 million accumu=
lated
deployments on bare metal (since 2020), and even more if considering public=
 and
private cloud instances. Joining linux-distros will make a real difference =
for
patching important issues for users.

> 3. Have a publicly verifiable track record, dating back at least 1 year
>    and continuing to present day, of fixing security issues (including
>    some that had been handled on (linux-)distros, meaning that membership
>    would have been relevant to you) and releasing the fixes within 10 days
>    (and preferably much less than that) of the issues being made public
>    (if it takes you ages to fix an issue, your users wouldn't
>    substantially benefit from the additional time, often around 7 days and
>    sometimes up to 14 days, that list membership could give you)

The distribution has a complete public record of security fixes[3]. Although
there is no defined policy on enforcing release time of security patches
(yet), the actual timeline in execution is 7 days for high impact issues and
14 days for medium ones.

> 4. Not be (only) downstream or a rebuild of another distro (or else we
>    need convincing additional justification of how the list membership
>    would enable you to release fixes sooner, presumably not relying on the
>    upstream distro having released their fixes first?)

The distribution is not a downstream or a rebuild of another distro. There
are confusions on this question (especially Wikipedia pages) because before
the project existed, there is an internal-only distro named "Euler OS" which
is RHEL-based. When openEuler project is found the distribution is rebuilt =
and
maintained from scratch, and there are also a few flavors of kernel packages
with different patchsets. There are also a few commercial and/or community
downstream distros of openEuler, too.

> 5. Be a participant and preferably an active contributor in relevant
>    public communities (most notably, if you're not watching for issues
>    being made public on oss-security, which are a superset of those that
>    had been handled on (linux-)distros, then there's no valid reason for
>    you to be on (linux-)distros)

openEuler has been actively working on patching upstream issues and there i=
s a
complete tracking and triaging of all issues with a CVE number[4]. The team
is following oss-security's information closely, although weren't actively
participating in discussions.

> 6. Accept the list policy (see above)
> 7. Be able and willing to contribute back (see above), preferably in
>    specific ways announced in advance (so that you're responsible for a
>    specific area and so that we know what to expect from which member),
>    and demonstrate actual contributions once you've been a member for a
>    while

Yes we accept the list policy and are willing to contribute back in ways we
are able to.

> 8. Be able and willing to handle PGP-encrypted e-mail
> 9. Have someone already on the private list, or at least someone else who
>    has been active on oss-security for years but is not affiliated with
>    your distro nor your organization, vouch for at least one of the people
>    requesting membership on behalf of your distro (then that one
>    vouched-for person will be able to vouch for others on your team, in
>    case you'd like multiple people subscribed)

Besides my role at openEuler, I=E2=80=99m also a part of the Debian Securit=
y Team,
though I=E2=80=99m not subscribed to linux-distros since there are already =
people
representing. If this application is accepted, I would like to step up to be
the representative of openEuler.


Regards,
Aron

[1]https://www.openeuler.org/
[2]https://www.openatom.org/
[3]https://www.openeuler.org/en/security/security-bulletins/
[4]https://www.openeuler.org/en/security/cve

--2M+rr1o8FmqgBa7M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhhz+aYQl/Bp4OTA7O1LKKgqv2VQFAmUslFEACgkQO1LKKgqv
2VReJwf+OFqsnymfIoXBe3szIN5adSUUUv7KLLTPBwkLISshzwoSPoV+cS0V/iyo
Ajjj79Shu3nv86ztb8zpTXmLSMIUbh+lJ2B8lD7/+kQtyl3ZTEhdk3pDWsOx6s4d
wz1o95P1MOSqw+h5omx/EbdbVW+vH97RXoyrxMPKmebFA+ODaE1Rxo/kOpv0whTt
rGbcloKGH6jBG1qol1Bo+HaDs3M7cNxUNQujaWd/xXdK/rW7ir5UBV/9Ap7yM9Jk
LsT9EjRJH6MR2iGkFGMj1mpBTDD5XNfodHDR2c6rwBe/ppBmAyYYt2mikn27kuxV
CcELLqH7BaslrykOeoiZdBDCvVwZPA==
=fTTH
-----END PGP SIGNATURE-----

--2M+rr1o8FmqgBa7M--
