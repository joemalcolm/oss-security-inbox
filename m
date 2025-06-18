Received: (qmail 28503 invoked by uid 550); 18 Jun 2025 16:08:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26402 invoked from network); 18 Jun 2025 16:05:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750262715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qEjzi50ovXMs7RenjmLsOU721Q0pAvrNWzCy7y48xy0=;
	b=TGiuEnSgtn8EXGZ4VUDYNFnlMK7eLrxDZkE9uWxcEVHXAfPgJdkz/3ZECx5ssmAMmZlMmv
	rAMKna+O8sIR/1E9nCIY1NnfjU7DYBd1cSLov2WN+B78MIrJhGfxhVrZOOor/jfmJEWazQ
	03MJbnNtLUkqsiIQ68T8qHqNPHofS+w=
X-MC-Unique: qKC6tdaHPJu61ttAimi9Gg-1
X-Mimecast-MFC-AGG-ID: qKC6tdaHPJu61ttAimi9Gg_1750262712
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750262712; x=1750867512;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qEjzi50ovXMs7RenjmLsOU721Q0pAvrNWzCy7y48xy0=;
        b=CvEfa/yP0+uMd3kgO4LzbzY6AmJMkHGIjvqtF4utDfbqnKJrVb4OWh+gqvK+FL/CLg
         z9SApcomdDRZUlJSnt6OpnFgNQ3XIW5bXTrexKqTcSxXWGoUkqaDP+U1bNP6I+3KYSTj
         P8b9haNbTqlV1WDMOfuvnA8t9SQ+WFCSJRl/XuBU5tQiLWa9a99r0tFke7axqK4Z+ffk
         8zIBXX6vW5rgHkN60fwQT9qkwLAFwCvtpXC8cmGuJu2EEkXvU+w4WbV7mF4tvgx+p/cU
         tI9LMfi/u79JXLKoXeyXf31/sBvDsGefJny8pvginVQuGXp3JDp5Ty+7YKxuw+lWiHFQ
         gwzQ==
X-Gm-Message-State: AOJu0YxmrsegqVQn5Ayo+4u3zP3yR3dM7+gzSU1/TZVh6eP/DJO3naPy
	lU9CAE7gtMlrTA3ptPcj3E4gfTy4sWaLy+YHC62HPeVFBYzzdsNsd1SQByhRDEQEPTSRwpgWPPz
	NuemOr/x9hXIwlPlOwwIjB4bK+tipHiRGaWAa3jTYSM04JGMJ2+u6XDrLBzI3NZ6Ioiqe8zvBKX
	QooZh1hbs+mM2+krJsFIaT2BSNU9lfk9t9Z4pk7taFiJY72grIrTDI
X-Gm-Gg: ASbGncsEBOEmMZWfgNTLOroCsD5uSi00z5ytsaDnXPyWhNu6hYEZ2tDQCK+tFsW9yXa
	bwNZEVgAivvCR0X/NbpCC3SZAcdmBYHKOcgOEKHLr/LQO9Q+bil5Tq3jLn+AfFEyz+Dx0MYIyUr
	W7B4U=
X-Received: by 2002:a05:6870:c1cb:b0:2e8:f3b3:cdcf with SMTP id 586e51a60fabf-2eaf07af5d7mr10827499fac.4.1750262712161;
        Wed, 18 Jun 2025 09:05:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEJahgrtXBSMvW+llX3LY4uLho0NOnPclGLmjudIenYrsffRN0UacDZybADwW2d7YuZ8KpaiYvitZUpWDeKvc=
X-Received: by 2002:a05:6870:c1cb:b0:2e8:f3b3:cdcf with SMTP id
 586e51a60fabf-2eaf07af5d7mr10827453fac.4.1750262711468; Wed, 18 Jun 2025
 09:05:11 -0700 (PDT)
MIME-Version: 1.0
References: <3663e7ee-4599-4d11-ae62-900477cc48d9@redhat.com> <9896730d-7a8d-48a9-aea0-b6500ebaeff7@redhat.com>
In-Reply-To: <9896730d-7a8d-48a9-aea0-b6500ebaeff7@redhat.com>
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Wed, 18 Jun 2025 18:04:35 +0200
X-Gm-Features: AX0GCFvLugAxh_hW2nCHNeaSsUjPESDohWF8u_938GBwkoe6hcJNzGANJ2Y_xWI
Message-ID: <CAP=2yyTF2ZewE+QOdmwFL+oc-gmFrWF56DnRHPBS9r9E8ON7Zw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4GFTDz1pZ-LIgewslEgUg_Pxwj8QVkBbv3wC1Re0SHE_1750262712
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Fwd: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland

Addendum to yesterday's X.Org Security Advisory for CVE-2025-49176:

On 17/06/2025 15:43, Olivier Fourdan wrote:
> [...]
> ======================================================================
>
> 2) CVE-2025-49176: Integer overflow in Big Requests Extension
>
> The Big Requests extension allows requests larger than the 16-bit length
> limit.
>
> It uses integers for the request length and checks for the size not to
> exceed the maxBigRequestSize limit, but does so after translating the
> length to integer by multiplying the given size in bytes by 4.
>
> In doing so, it might overflow the integer size limit before actually
> checking for the overflow, defeating the purpose of the test.
>
> Introduced in: X11R6.0
> Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
> Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/03731b32
> Found by: This issue was discovered by Nils Emmerich and reported by
>            Julian Suleder via ERNW Vulnerability Disclosure.

There is another case where the BigRequest length can cause an overflow,
so that requires an additional fix:

Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/4fc4d76b

Thanks to Peter Harris for pointing this out.

A fix will be issued in xorg-server-21.1.18 and xwayland-24.1.8 shortly.

