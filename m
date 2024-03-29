Received: (qmail 9529 invoked by uid 550); 29 Mar 2024 18:59:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9488 invoked from network); 29 Mar 2024 18:59:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711738782; x=1712343582; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YqQk5LnfpwA6JfmnEtzIoBVws4Tv0ZgRA8oLkEjD6/s=;
        b=N3/VVhoZrpRPqGe99WWRffYLwp54OjBBy/reftaTAYigdN939WebPbByA8gSgkZfJQ
         4BeXpLxH55wnl3VKUVRNgrzf4xJXcR1dj/kuByPP3XmRRG+VURP8htL0K5y3tyhU05mO
         iHB+5QrZEgqS0HlR1DbCpuYTvcWcuKnmaM41E9KaKIRCXk+IAxmwXrvVQs1SScZhXJ6Y
         xm/47Gxl3fEqafv8gerh/zMWHGDw84W1gH1RbPSWH7X4DZ1NNo4dFmTHlhwqbHuBIji7
         q1h2j366CC/NdViEZVMK+Jgz/7m/hY+AXGOObN9krs/qW8drrJ1PVm5OG01t6aMeffvB
         agGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711738782; x=1712343582;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YqQk5LnfpwA6JfmnEtzIoBVws4Tv0ZgRA8oLkEjD6/s=;
        b=Hojg2fXw1hN7ib0r1WUX7Lf8BpA87fytG5xXD7dVN27llqEpYmvrVhlq3I5BtrZPJI
         HVRKJeugkJxl/74CChf7p6u5t+Di4wSX4q69lOtMDDQ2Pc1dTVskKo2dyQFgSN7yclhO
         p6512vxI1lpcZl2jdTFPsKiHrBExBQnPZSS8k7EnLugDGh13PtcGYCE1qLmA7woi5Z/Q
         wIhI+pwRgQISgwmxLNGfm8vq4JvFYj7d9p5IdK6f6R1zAC7c29QTBLGSCaHclcfXQFv2
         GVhxFBCkdjnsMoVo3s/0c5Y5eTqj2NKLmSSP8cRbASjzVU9EHhgGDWTC9zyZHvGGx0o3
         fEew==
X-Gm-Message-State: AOJu0Yz75Ww3YizEU6r4cQA6UeIHsuPlDtfz9mTIykiaZ9GMkbl87ZkG
	g+wHmbTR++qrVJn7vRKsLEtrY8yia80ZJJsKXJPoFnCEOHRUgJREDxrIyMJuFH4YujZm2AnzsUx
	YE5aWmgo1nm8BxDYrdTmWsTCKkSle69iFHVT/7w==
X-Google-Smtp-Source: AGHT+IG4ttQucWVZz4DocYHPOQCN7345d8kQPNdUTCqDL1so2COIePIcIZjZTLVNdnM/qlOvuMtVVxVr5/gLM1FsMZY=
X-Received: by 2002:a05:6102:d8c:b0:478:37c4:b20e with SMTP id
 d12-20020a0561020d8c00b0047837c4b20emr3553830vst.20.1711738781642; Fri, 29
 Mar 2024 11:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Sat, 30 Mar 2024 02:59:14 +0800
Message-ID: <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On Sat, Mar 30, 2024 at 12:09=E2=80=AFAM Andres Freund <andres@anarazel.de>=
 wrote:
> =3D=3D Affected Systems =3D=3D
>
> The attached de-obfuscated script is invoked first after configure, where=
 it
> decides whether to modify the build process to inject the code.
>
> These conditions include...
<snip>
> Running as part of a debian or RPM package build:
>     if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" =3D "xx86_64";=
then

Could you please confirm that the Arch Linux binary package was never
actually compromised?

> openssh does not directly use liblzma. However debian and several other
> distributions patch openssh to support systemd notification, and libsyste=
md
> does depend on lzma.

<snip>

> Observed requirements for the exploit:
> b) argv[0] needs to be /usr/sbin/sshd

I have checked, and found that Arch Linux does not apply any patches
when building OpenSSH.

P.S. in the detect.sh script, the "set -eu" line plays a bad trick: it
aborts the check if sshd is not actually linked to liblzma.

--=20
Alexander E. Patrakov
