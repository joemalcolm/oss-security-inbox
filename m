Received: (qmail 32626 invoked by uid 550); 25 Mar 2026 15:17:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11341 invoked from network); 25 Mar 2026 08:38:30 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774427899; cv=none;
        d=google.com; s=arc-20240605;
        b=EL3dvFtvpR1z42DFRDvYrapOs5N7XYg3TGZfn815Ze7aPI6O5pd99bnCG3f9ZOMJDA
         vNC3Ais5OI9q9EekF/c3c9g+jBQZgGh5pJfvDLqkfpqfkwzm8hPcZ/qdcqeAPQ6up+o1
         Gfx0LntLUhmI5hWGZsj7YTRZN2P6buxWEaw/eibnozJ1Mg0kH3lGNhiWuL+QEzxHA2l2
         t3dOzXy963xA3+edr4Y2nfGy1DIv7FLxyjZd0gvRRNmw88d4FyUGtJ3d1g4qyrbKXTJf
         dBnFyW+JLOTbhetsgeTmFCy5fuTpIez2j/DZC6sUe3EZYOk3UDXs01K3cdRA8bN1PKx5
         BrrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vtPYSXUaFDbtbEIvUm1C/87w+xTC//mQ3+fJ1eA6ix0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=XeaysczvRMGnbqaDHA6NitnB/fSEXyogEC+cjQIEtybWX6EOW4fqJ4brKZ81QOr2Ej
         9pqrH0BbFy7CZe5+3qd53sqT1pk7R/a5bINpeHoK9TBiiUzT3aWLZ5uERlzXzbAjNmaH
         Q9KjXt16DqKAZnvEV4k4Z4MzKTeckb7LxltAYjp+CR2fDQQ8wT3oauNgUmgpVjlmDt48
         qX3XMkajv7XKBOv97GnqBWiAXZyHqEW1kBlq3keNau+CgrKEQlhYwQrWeCrSIlNf9p5V
         1JYflrL0RWvLMrVavuiV8nOzG0nQzA9vv8GY4fRYdjcB5rkoCzQuOlx9SaB2aC1SIWhs
         SPlw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774427899; x=1775032699; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtPYSXUaFDbtbEIvUm1C/87w+xTC//mQ3+fJ1eA6ix0=;
        b=O/Poso84nvKHs2uG5OacBLrJV4pRIH2Hu3WxapPz5+PAmoNcZRIVgEJdubAGav/G0G
         NQGmWKVz6U0PLUdI9it4oYkP0COIQIZ8k1BAJW16/zzdPq6nZZUDMKamKSNeWltlaIfL
         GB8VEg4I7ztTAAHIdFZeSiNX5G0tjybPVKfBkFDDkuZ/ouF0L9KFwW84pM1UwsUc+ilx
         D4aZwnVqxqj85Ln5V3PByd1yJ/MerHL1X4X+yI2b6ldmkBPIDOpEnl9nn6SBcXSRG8FJ
         JSIGdYm5chcYmQz91G5/bQgkLmqxq8Dn1L6/sG4au9uomj8VWvxULCISa9HM4QB+t37b
         LU2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774427899; x=1775032699;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vtPYSXUaFDbtbEIvUm1C/87w+xTC//mQ3+fJ1eA6ix0=;
        b=pOei/ynagP6cnOHGAuIvMl7jtHkCxQtfCSc1gjBEXbYWVjH76hN9WHfrHI2YjBsKCE
         sR1njruyDXmLUqshpn4veVElRAw5b7gAuZ5/ExoQZcQGcanWrHukMkex8SLe4X+nqXuW
         lcRZYP1ow935XmNj+f2Tb+UT9D1x3uS/bKezXmrsn31ZXuIXwWgTvDk9pdtfivqifcdh
         UiGvrWzFL1tzm6YaEqejhk60+bK7kq5Cxy07Hui9pEQLFFxIQ+5g7A8EgAaQh/dOKCkd
         WvM3cSKpJhlMYyIZ1g5fIGfaQ6ffUlb7aKjmJV2lEepzXW0ZaH7Ppdi01uXy0sYfd/y8
         yLPA==
X-Gm-Message-State: AOJu0YxT94JMGiyndSBbnb1FcHa/XYE4axfMdNfjl19xGwlNxpQcCYnQ
	r8gmDUFYRtmyEZD/2eiedVwrMAt7yn5qWOh86m7FrRTXGCbRsMoWvZi7bmeGnlIEu+VbdHhbmrp
	EhzQl19zi6+I5xZhjGg4oU1rmMv8E+BUXl+xkbPkE/Q==
X-Gm-Gg: ATEYQzycBoFI4VynAQc4dWrE98U36TG8E+NN3pfgLDVTCVZVHsQYqu7fyg30JFMZ9O6
	aDTXElwgCcUaHzT/aSaJ0Fwu8eRL6SoGq4DnAW8uXufoiuq1395moMbHV+KIOxOdXljnG+BAbRT
	BGAcH5jyvNxdLrh3GkoncOvgdhEe7iK2tNbQti7JMtsyxcW0Ogz/tw6ZUZdAvspBB5JhZstlicm
	y2CKJut0Zc+oQcm4+APpm7xTi7/uUGg77Mgj68jAkw8s3upw3Vwd6WsXAXv3P1rNDrfODkSWmAR
	vKReOKOtrVTUQ+uA6xKJnvTDR8cF8Dl7AdpTWVQE
X-Received: by 2002:a05:600c:1e8f:b0:486:fb8a:fd9 with SMTP id
 5b1f17b1804b1-48715f03256mr24608275e9.0.1774427899095; Wed, 25 Mar 2026
 01:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK3hNHa=A2kB5658f3_DMdSnhXSdK84+93Mq0uFRuWD-VXmyzg@mail.gmail.com>
In-Reply-To: <CAK3hNHa=A2kB5658f3_DMdSnhXSdK84+93Mq0uFRuWD-VXmyzg@mail.gmail.com>
From: Abhinav Agarwal <abhinavagarwal1996@gmail.com>
Date: Wed, 25 Mar 2026 01:37:52 -0700
X-Gm-Features: AQROBzA2P-qyu0OXIMKu80RPrUrX9fbqjabEKW4pskM4nLUcbLFt82P7Cws0Wj4
Message-ID: <CAK3hNHZzPyQaJL4y4CToEma7DFjEGREK4rz-53mx7DNc23dwqw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CVE-2026-33150, CVE-2026-33179: libfuse io_uring memory safety
 vulnerabilities (use-after-free, NULL deref)

Following up with a detailed writeup covering root cause analysis,
exploitation surface, and proof of concept for both CVEs:

https://abhinavagarwal07.github.io/posts/ringwraith/

Key points beyond the original advisory:
- The UAF (CVE-2026-33150) is triggered by pthread_create failure or
  io_uring_queue_init_params failure, not by the CVE-2026-33179 sub-bugs
- Container resource limits (cgroup pids.max, RLIMIT_NPROC) reliably
  cause pthread_create failure in the io_uring startup path
- CVE-2026-33179 has two independent sub-bugs: NULL deref on
  numa_alloc_local failure, and error-swallowed-as-success causing a
  filesystem hang; neither chains into the UAF in the shipped code

Regards,
Abhinav Agarwal


On Fri, Mar 20, 2026 at 6:24=E2=80=AFPM Abhinav Agarwal
<abhinavagarwal1996@gmail.com> wrote:
>
> Two memory safety vulnerabilities in libfuse's io_uring code path
> (introduced in 3.18.0) have been fixed in libfuse 3.18.2. Only the
> io_uring transport is affected; the traditional /dev/fuse path is not.
>
> Affected versions: libfuse >=3D 3.18.0, < 3.18.2
> Fixed in: libfuse 3.18.2
>   https://github.com/libfuse/libfuse/releases/tag/fuse-3.18.2
>
>
> CVE-2026-33150: Use-After-Free
> Severity: High (CVSS 7.8)
> CWE: CWE-416
>
> Use-after-free in io_uring session shutdown path. A local user can
> crash the FUSE daemon or potentially execute arbitrary code.
>
> Advisory: https://github.com/libfuse/libfuse/security/advisories/GHSA-qxv=
7-xrc2-qmfx
> Fix: https://github.com/libfuse/libfuse/commit/49fcd891a58f622c098e2ca67d=
66086f7b213836
> Credit: Abhinav Agarwal (reporter)
> Remediation review: Akshat Sinha
>
>
> CVE-2026-33179: NULL Pointer Dereference + Memory Leak
> Severity: Moderate (CVSS 5.5)
> CWE: CWE-476
>
> Missing NULL checks and error-path cleanup in io_uring queue
> initialization can crash the FUSE daemon on allocation failure
> and leak NUMA memory.
>
> Advisory: https://github.com/libfuse/libfuse/security/advisories/GHSA-x66=
9-v3mq-r358
> Fix: https://github.com/libfuse/libfuse/commit/7beb86c09b6ec5aab14dc25256=
ed8a5ad18554d7
> Credit: Abhinav Agarwal (reporter)
> Remediation review: Akshat Sinha
>
>
> Both issues were reported privately to the libfuse maintainer
> and fixed in a coordinated release.
>
> Timeline:
>   2026-03-16  first issue reported libfuse maintainer
>   2026-03-17  second issue reported libfuse maintainer
>   2026-03-18  Release 3.18.2 with fixes
>   2026-03-19  GHSA advisories published
