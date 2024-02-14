Received: (qmail 19477 invoked by uid 550); 14 Feb 2024 15:51:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30705 invoked from network); 14 Feb 2024 15:44:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1707925655;
	bh=i/GpVbBOylaLKuo1+eDImyNC5I/Z0Y2+WS3R1scJXAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type;
	b=a79HmyUwEyUF/qRK7/CKjSYIWB8Xcz+A+MEWXbDOJqaqAyb9fQtgvGZ0tbtCnEjON
	 TwIt0mfA5NoDeFL3Kr4sj+LRYh/AtHYV+RZ3wjz1uygKt76/+ByPa3aDwkfcA3daA5
	 ZSyc0yLnRqdQrbhAva2hxtgynjwooVb6Nzgxpf7Q5tPlyoQbiDjx2YNSm7yPFz7bgb
	 H3FaImTvb8oda22E/VwT7eoX4x5ZwyHRAiK9jErMmU6Oqf1GoYEiAvv4wUSS2KwZ9k
	 HPqD/0qKkJ6v6nj2RuC/92+p6XiXrKsbxXQezkeI0OPSDz520u7qcnM+ZX0g0qQa4v
	 2srSyQiPkQcjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707925654; x=1708530454;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/GpVbBOylaLKuo1+eDImyNC5I/Z0Y2+WS3R1scJXAA=;
        b=SLMBkcZ1ED17aj4iNzW8RNU1z59yaLncUuR9CcDk7pJb2SpeHaFtLpi7XogYPmWzRX
         KcfPVjJh4j4MLoc181yNioUGXzq/PQpxyKjCkzEe2Xf0HyeRNdfwD/UwRqd+um444ak5
         3v79rmyie0Mvr48uL/secxVonCFzTrSU4zYE0lt9B3NeGi+7Xbm1go83l3Itxm6proFk
         yDGPvREFlbjl8I83eK9pVqQt5MFF9Iq+I7gkfM/eCjXKj999jAlgqD87xX5qNOhTBL7L
         T5Sjeu0yd/NOwKpucNRLuTtuy9K5j7KfF2PBQGzoypD5oWupswEmv/nidKVslASKZalI
         vr3A==
X-Forwarded-Encrypted: i=1; AJvYcCWPu+ezzaLMntgmsjZi9+87iOOfE8zp6Yi+3Eg6HXs0mDUjqvFr+byqccXcoMm2g17KE1r8WNXWKF56hqZ387V0Fxx1MRPU3cfgennQtxf8
X-Gm-Message-State: AOJu0Yw7pKutnVmJ1aHCaIdtJIEbRUtc2kQFbRv9/y12AFciVzDaQCFp
	BzPqzoSfJuSgfeATRPs6OSUQKV/zIRIENqbsVV0eIA81d2Rjbz89xRYF/vQ1kRUfVE1BaHCzXOX
	VIcTBeafDYFZl0C9EIkiHOwOA5S+kll5whwAoVseuUtdFxw0TF8JIyOodhvjZnBHBIASwM8k8zJ
	hUuycYyY1eGpStlhdR/si7YYm9fQJCIK/4M6q0qVHNmnAiXBb/Es4UqiG+/Iyw++m1
X-Received: by 2002:a05:6820:1ca8:b0:59a:6df:5f19 with SMTP id ct40-20020a0568201ca800b0059a06df5f19mr1607503oob.4.1707925654549;
        Wed, 14 Feb 2024 07:47:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEq4EeQ2gUHo++Bhqbri8Fd0AmhOvY3SmRasJ9A4LeV7k6AeKG0XL9C1mGOtF8N+nomsyUQoiIgFuC8EY1wceU=
X-Received: by 2002:a05:6820:1ca8:b0:59a:6df:5f19 with SMTP id
 ct40-20020a0568201ca800b0059a06df5f19mr1607489oob.4.1707925654317; Wed, 14
 Feb 2024 07:47:34 -0800 (PST)
MIME-Version: 1.0
References: <CAAfJHtpMWco6y_wRRzrgQfJZmwzsMG6P8D5FFWLMAOihuc2dZw@mail.gmail.com>
 <ZczfqLnI23SC-A7Q@corsac.net>
In-Reply-To: <ZczfqLnI23SC-A7Q@corsac.net>
From: Mate Kukri <mate.kukri@canonical.com>
Date: Wed, 14 Feb 2024 15:47:23 +0000
Message-ID: <CAAfJHtrrtWXmZzUbNhTKP9aXyu90ZsfcOa_cZhBkKS4uUign9Q@mail.gmail.com>
To: corsac@debian.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Secure Boot bypass in EDK2 based Virtual Machine firmware

That is correct in the general case, but here the issue comes from the
fact that a copy of the Shell was included in the firmware image
itself, and as a built-in application was implicitly trusted.

On Wed, Feb 14, 2024 at 3:44=E2=80=AFPM Yves-Alexis Perez <corsac@debian.or=
g> wrote:
>
> On Wed, Feb 14, 2024 at 02:40:43PM +0000, Mate Kukri wrote:
> > Hello,
> >
> > We have identified a vulnerability resulting from an insecure default
> > configuration of OVMF/AAVMF
> > and similar firmware as used in Ubuntu's edk2 package, the firmware
> > used by LXD, and potentially other similar software.
> >
> > Said EDK2 based firmwares implement UEFI Secure Boot functionality but
> > also contain a copy of the UEFI Shell,
> > this gives an OS resident attacker (without physical access or
> > pseudo-physical access) the ability to execute arbitrary
> > code at system level, and thus the ability bypass UEFI Secure Boot.
>
> Hi Mate,
>
> I'm not sure if I understand everything correctly, but if UEFI Secure
> Boot is enabled, shouldn't the shell.efi binary need to be explicitely
> signed in order for it to be correctly loaded? It doesnt look like a
> good idea to sign shell.efi on a production platform, but for test
> purposes it might be relevant.
>
> Regards,
> --
> Yves-Alexis Perez
