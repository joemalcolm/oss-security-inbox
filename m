Received: (qmail 19951 invoked by uid 550); 27 Sep 2024 12:26:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19928 invoked from network); 27 Sep 2024 12:26:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727439982; x=1728044782; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Yt9Wbn+QQvDUraxq5d6hJ4uHlFE/Fy5VEtk/lpA+9s=;
        b=OCYA2MKNVh7HlXBHuJAyntVViyHF8sd9eupinYZ7b2nJymhM5nkEcOL63bqrCRVfLS
         3AGpdiJfKhTPIIYlMW6y8XjwkDzFEZFFdwS1411I2DxajocEzQ1lDyTQFXXFBqf75goY
         VNJzjfH8g2bnm9mQv0RVhDuZmsWgmfxsnru7B4DMyVxzlA0dunXo+lSflO/RraRPc3v2
         8oimg87exrUlAKqVCyWhG+HN7t46+L2lKhWDqW+0Sw38du0qY5+NdVcDHGIggPeO+D73
         jAkmFxLWRiZI1U+Qx7idJNFOQMrv85/lzQ600J0uZGXP7qB6fi57+JE1JZwMGi01v9fy
         GWmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727439982; x=1728044782;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Yt9Wbn+QQvDUraxq5d6hJ4uHlFE/Fy5VEtk/lpA+9s=;
        b=Dm+1tLbNhppJIfgHrFuRAGaZGKonKDgvG//GK5zsbTY2wZre1e54WlhdfGj6W8gP9y
         vdc0yjJvnc5sLrDg8c/AASv94drpIKeHWHfPuQ7ngaGvBZBFuctiaKxa60z2sr1JmgnL
         OLChHCGX/KRVWo7qW7gnf3ACEx3JK5VuDB5R4XD4Dqxe5qpSNzkGP+BYJ3rmoetBrObT
         Gu4cenqUThddhNXHasj7HLg94y3Y89eVZ9+DeZV94CT2ABixyr5rNTBlxQdzcMt8I5Zv
         z9GrUWqsZ7m2a71bv0Wt7LTJPupaGrk7OTlLTJWOtplwK9dwCXz8laDLs7mfgohxE1Sg
         fC4A==
X-Gm-Message-State: AOJu0YyHGbed/7U8ua+an50iufO+CKGVsZSb1ORWMh4ihVW3+t4j7/bK
	YgA/TJ6DWTIGY9+brjSZqQ85vVpV/f74Ct5gHPr/xRnmBi+HjxCFJdFdJIIPJOD12TAtVcB59o/
	TI4Hv/q+nhJmzTbCuul3Md1togBul8lVm
X-Google-Smtp-Source: AGHT+IGGOSiZv1Tisdyc2QDzY0t1WA1SZ8zoBAiTvVMVIqFNb1eheZo5w/l5q2eBQtcCsfDzD2toAeoLNrP2ur/EmZ0=
X-Received: by 2002:a05:6214:451b:b0:6c4:79df:a2e1 with SMTP id
 6a1803df08f44-6cb3b5e0d20mr55557496d6.23.1727439981578; Fri, 27 Sep 2024
 05:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org> <ZvR8tR8v-6gpjLsP@itl-email>
In-Reply-To: <ZvR8tR8v-6gpjLsP@itl-email>
From: Alexander Patrakov <patrakov@gmail.com>
Date: Fri, 27 Sep 2024 20:25:54 +0800
Message-ID: <CAN_LGv2QzuonfGdOsN88Qpe479xupfceCLYkv0yQFtRdf3CFNQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

On Thu, Sep 26, 2024 at 5:19=E2=80=AFAM Demi Marie Obenour
<demi@invisiblethingslab.com> wrote:
>
> On Wed, Sep 25, 2024 at 06:28:16AM +0000, Enxin Xie wrote:
> > Severity: low
> >
> > Affected versions:
> >
> > - Apache Answer through 1.3.5
> >
> > Description:
> >
> > Inadequate Encryption Strength vulnerability in Apache Answer.
> >
> > This issue affects Apache Answer: through 1.3.5.
> >
> > Using the MD5 value of a user's email to access Gravatar is insecure an=
d can lead to the leakage of user email. The official recommendation is to =
use SHA256 instead.
> > Users are recommended to upgrade to version 1.4.0, which fixes the issu=
e.
> >
> > Credit:
> >
> > =E5=BC=A0=E5=B2=B3=E7=86=99 (reporter)
> >
> > References:
> >
> > https://answer.incubator.apache.org
> > https://www.cve.org/CVERecord?id=3DCVE-2024-40761
>
> What is the specific property of SHA256 required here?  Email addresses
> have low entropy and I suspect they can be easily brute-forced, so
> leaking the SHA256 has is still bad.  Instead, I would use a seeded PRF
> with a seed only known to the server, ensuring that the resulting value
> does not leak any information about the email.
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab

I don't think that a seeded PRF (with a per-server seed) would meet
the requirements here. The problem is that Gravatar would have no way
of understanding which email is in question. Indeed, that would
require storing all emails hashed with all registered server seeds.

What would work is an email hash encrypted symmetrically with a
per-server key. Then Gravatar (who also knows this key) would decrypt
the email hash and look up the avatar image.

Note that all of the above talks about a hypothetical improved version
of Gravatar, not what we have right now.

--=20
Alexander Patrakov
