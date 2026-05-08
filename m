Received: (qmail 7791 invoked by uid 550); 8 May 2026 02:10:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9901 invoked from network); 8 May 2026 02:06:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20251104.gappssmtp.com; s=20251104; t=1778205960; x=1778810760; darn=lists.openwall.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=irwZDxIe2uw5rHGGnro+dg4XanNbUTojwmkXgSaFg8I=;
        b=ARX/e95vfhovUOGJE21QuL6NVx7ZTJsB7MxBnxg1/q9mHDQUxhGsPSNwyJFzBzfUY6
         7IqyawuxPFKUCgIvLKf32D5DGYTBLffOVSzsmOOYX9h95rw42Cj7ApcKnInWB9eXyp8c
         IHB/yIgV0W04QazbmR3emu2wylyUy3xtGL5s2Dj05S76AprlT2edg61YZh8n0p+9K65q
         LIiV4NO/AFwZEov+mgP5BwO3N+0tDcq8FmQjAArSax2Ewmrfz2Ms687rI3616rI+9Trx
         OnCPcYA2yFoJ1F34OACuTXH4zXDa5Hj2w6/NT/8V3mDf6p7oo+Q+gTmyQ4i2CbVWwbaa
         PfCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778205960; x=1778810760;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=irwZDxIe2uw5rHGGnro+dg4XanNbUTojwmkXgSaFg8I=;
        b=fuq336ee8Mv1drbiFvLtgyvaE73D6sANIYmuZvNfBTSYPvoPPXXJ/8jyPqdulwWK8G
         1+8+92nkie1CbcbwlI5fp2m447NbS5sgXevm09n/TuJyBcaI1YtzCU5IHznhp7g+Fvdu
         yB0S2NzovkBOKDZeZq2ct9uuXfuSorS6EKul4BHu0KicXpQdFtXHrzx8HwKBdnmHq5S8
         B06XeuFMl1X8U0SAnRJufeLLojD8CCLpWsE+/9f8WZOzXkYjuQ23cRnKJBylBcuzMEqJ
         /uitU++573L9eQnFOpBYkDrpLL5aFEXVhZxA705ZO5ySLfw0TBBLoyZJ712zm8DqKmKs
         vziw==
X-Gm-Message-State: AOJu0YwPiWBUHpAOn6qL7JPByH4enrfr5xxZfenl3PRtgJD0l9b3IidG
	+W2+i1prfDyhtH/4cC8DrQF9Ewdi0k3nQHi4bRholU0RizixE7vjicVizB1kULZwzYGBeLz0ncd
	FIEGQkEI26A==
X-Gm-Gg: AeBDiev7trirMax+KesDBJWlic6JFC0UxJMyJ00GDNXChHB+DhhnkdIh9D+Q9WlFCF/
	FbKAHAftN1jFfWZpMC5j8uU0QmBOiIkXQrYb7FyNU5Yb844zXIusSjKn15OU1loy3DeWScEs6Yi
	CD11Nw3VOoJ8ohXLu2kNVzOXTPCnLY5UQZL5glgDf4g4uPGHSaboY0nyNI2XgCP2VabZXC7nLQe
	QcnzltNEeF8wmD3EwNUC4woYKyRv2s2w3UxNszKCVV5x4zM0KuPwrP1/AkihROxTLLgglxJgRTf
	I3E7+EdDzPZ9pp817Dk40f8Jvb/gW0OLJeMpcGOtaA0VLn6D0BClAgfRz60f8d4ErG9KcsCbu6/
	Ma0rys4RewJKf4dKrfiE4EDtyMh+m9zrxXYs1q7qRnE6iTQ/8dH/Zpxv5uYPPHfWwGGeij5eouO
	gvy6WxTpHDFPayVSYC0c09T0NXUikH1RHzaGdS/nF3ww11lqJjneH55TeszUaNFLOaCDrbx+mPN
	+wy4auYPghuI078D66nFznHI/qiz6Adninm4RrrvuC61OU=
X-Received: by 2002:a05:7022:20b:b0:132:270d:7bb4 with SMTP id a92af1059eb24-132270d7ddemr3719882c88.21.1778205959769;
        Thu, 07 May 2026 19:05:59 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Jens Axboe <axboe@kernel.dk>
Mime-Version: 1.0 (1.0)
Date: Thu, 7 May 2026 20:05:47 -0600
Message-Id: <F55C79CE-5812-43F3-93E0-EF3429BC2C75@kernel.dk>
References: <d9038011-c2e9-407c-b28b-8461e995df1f@benhays.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <d9038011-c2e9-407c-b28b-8461e995df1f@benhays.org>
To: Benjamin Hays <ben@benhays.org>
X-Mailer: iPhone Mail (23E261)
Subject: [oss-security] Re: CVE request: io_uring zcrx freelist OOB write

On May 7, 2026, at 7:24=E2=80=AFPM, Benjamin Hays <ben@benhays.org> wrote:
>=20
> =EF=BB=BFOn 5/7/26 18:28, Jens Axboe wrote:
>> I won't comment too much on this to avoid offending anyone, but I'm a
>> bit puzzled by:
>>=20
>> "Once we have the address of modprobe_path (from KASLR step above), we
>> write our script path via /proc/sys/kernel/modprobe: c
>>=20
>> int fd =3D open("/proc/sys/kernel/modprobe", O_WRONLY);
>> write(fd, "/var/tmp/evil.sh", 16);
>>=20
>> This sysctl entry writes directly into modprobe_path in kernel memory
>> and is writable with CAP_SYS_ADMIN, which we already have via
>> CAP_NET_ADMIN on container configurations that grant both."
>>=20
>> as surely the point of a local exploit is, in fact, to gain root in the
>> first place. If you already have CAP_SYS_ADMIN, what is the point?
>>=20
>> But hey, someone wrote a blog post about something that sounds
>> dangerous.
>=20
> I'm not the original author of the blog post, so I can't speak for their =
intent; however, I imagine the impact for the proposed scenario would a con=
tainer escape of some kind? It's not exactly uncommon to see containers wit=
h lax permissions such as the above, given under the assumption that the un=
derlying containerization technologies will provide a sufficient level of s=
ecurity.

Well, go read the post in detail and see what you think.=20

