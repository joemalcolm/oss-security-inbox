Received: (qmail 30475 invoked by uid 550); 1 May 2026 18:04:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32281 invoked from network); 1 May 2026 17:31:34 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777656684; cv=none;
        d=google.com; s=arc-20240605;
        b=eGuc/uYMgD7Io2DikLWi3NevKXPolMgm7/aO6SHZzpCdyBpv/n3RQjCuLgLi9EswvR
         1a6MtGQ+YzaJ0EJ3p822/oKFHZXfLk4U2/URmyyVHJHCdmJoBAgqqCQ3FF0AWb4TUFXL
         +cgc75cTqcJoLP6YEaAThBxmrkpmDEUTWao/+i/9fi/jrQZt9NtQKxDOHluXWIxR1PfW
         dFQRVLiz6g3zrfkRjjWAH5doMrZVVy99bhgCIlXTkOLjtAIN5HSctjRsU4uLzgm6oUPO
         ct7w8skMhaI9fFJBD8OH8Sf/RM7uL869uPqf+wIAIz+tsZPeZolf12ct1QE+0iRj1YPy
         1R8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RStM6xHDfFDsagpbtGc32GXEZ9EbP6KFrP2BdATgHhM=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=HpBx4NBQgWeKsgSRmkJj3TQxb5WoHCRjb9uD53jO4qKg01+VorE757j25huGrPiC3n
         oWygjuSDZVu8hTdEEI/CTRrP7q58BWN55RmhKd+7arVv0/X91wa3ztycKFECJkfIK0Ql
         pI7RTN1+VWG9d72vDGsX8wB4IjimqR7gbgSNwgDrMq51j+6jS+dIcU1G0vV53ak5ljjC
         nQreZgzEVYsl9LPyG3twp+96jvUyZoRy0LmBOxH7v8UrZ3NhQbb0Pb5eixDtM5NUl2uv
         Nfr3vo8Lt6j6YcI+yKlqxPriyoLOoJCZRfSxrugaCaA4Kh3BzhMrZCpnHkO+daIproyk
         KkQg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777656684; x=1778261484; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RStM6xHDfFDsagpbtGc32GXEZ9EbP6KFrP2BdATgHhM=;
        b=Usnn6RW2xsC4jFiuaESX8AHxahjQpaaiOg4rkLj4fqP0xWtKO1wp6h2f9X8HuYKPFz
         q82PRNFYq5TZJ9LgTmczc7x90NbnX5oska5OJxnRZi/uXrLevL2F+SsxOLd7lZ1J+kJA
         oqQZxxYUNhCtsyaPHUOtZ0RUBxRiWuuDcnQHRMpc2hNEadNzE5g+dm8bF+TjQD0MwBmU
         nStwF0txvJH5PMzf0LQMpiz1SvbfNBMA4bmnAU23cjESE/Lk+WE71/alapPZZlboEHYb
         GFknUkN0x9OPYHrya9bruT6PD5LnrXlbzT9DChko2qI+YhpZR/HThRw/OuXu2lfTSUbX
         Qc7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777656684; x=1778261484;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RStM6xHDfFDsagpbtGc32GXEZ9EbP6KFrP2BdATgHhM=;
        b=oHSPxlt0sD06+wal8Wwsne2Q9vo5AAxm/UUFH18i6oD+UaMwCX2NWUZex7pCA0mGHx
         EHzOc5yTpvAy9njBucdpKKVpj31OeMftzUIFskG3/dU1Rgnld9c0CYAzGcEuKNiSvkWy
         QcBn56Ee3Hu0AkwpktXzakSsNC2dR2uoVpsBqKP89mhJTfQ5BkjaHuZE46uNrNPM41gg
         8YlNGRfumh38L1gOOg1DtpnTkFYc9gIaWehIdYje7jZYquvLipuGLuYTpSZRNn2uEfY7
         h2aZhjCqpgYksSEBT5lXAMcWpDtsgHTMuLeWz1Ej0dNfhwubQpvPaaxxArkyoJvn0l4M
         uWIw==
X-Gm-Message-State: AOJu0YwWqej/hEqp8QSigpb9sP2OJQc80UYCPbe1CfQanZTMwXGFRiAn
	Y7REweLEpYhIx1j/wd+FrlarbC9gKZ5xSlFr9n/3P+N/EnmYmTFEaVcER6EUfiQ8EUC90IUV0cj
	7ihdXnLLqxxp9xT68fr5P5oznAKfgtOaQyA==
X-Gm-Gg: AeBDieuRESAX0DfdJe2ncGMx0nuSPBwqJupINNjtngroqf8yp5CNWnUS5RZIVq2VkId
	Wcu5Co8eY2CJGNwNG5dSjBDTfXU8PY/ZsQvaDaTwSwoUk5irLazvK1qim/DDwOPOn5aEuKjzVea
	1prUoEJCdRlNKM8iqzMgxa1+PkR8vsjdTHKbb5u92GXMUA5ojSpMNhuVlGFOzrG7mFUwwFcDzHj
	1jQKxpVY60JaxbDLNfc+e6Uq3/SAmPYTv/GsghaMRC7r+krCL3rxD1rW86DUZLMXuOMeajrqdb2
	ip1O2agnjjD12KFQ2n10
X-Received: by 2002:a05:6512:6c8:b0:5a2:b881:3289 with SMTP id
 2adb3069b0e04-5a8522dbbb8mr1210985e87.5.1777656684213; Fri, 01 May 2026
 10:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <afJorKIje4O6dXbH@netmeister.org> <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh> <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com> <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
In-Reply-To: <20260501165221.27420-1-justin.swartz@risingedge.co.za>
From: cyber security <cs7778503@gmail.com>
Date: Fri, 1 May 2026 13:31:10 -0400
X-Gm-Features: AVHnY4JL4CC7LcgcrcSLd79oyq2b-48rUhiI5evqNwzaaOG2zLHI8WbxUgtR4A0
Message-ID: <CAPmip_wN+Ch2nJc_1ncVNo19CMpgn4tasu=1-5nCDhza6rRzFg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

mostly every distro + it can lead to container + snap + flatpak
container escapes

On Fri, May 1, 2026 at 1:16=E2=80=AFPM Justin Swartz
<justin.swartz@risingedge.co.za> wrote:
>
> On Fri, 2026-05-01 at 11:08 -0400, Reid Sutherland wrote:
> > Does anything load the vulnerable module by default or not?  If not,
> > this should be low-rated IMO.
>
> An unprivileged user requesting an AF_ALG socket will trigger the kernel
> module autoloader:
>
> $ su -l
> Password:
>
> # cat > /root/modprobe << "EOF"
> #!/bin/sh
> echo "$(date -u) modprobe $@" >> /tmp/modprobe.log
> exec /sbin/modprobe "$@"
> EOF
>
> # chmod 700 /root/modprobe
>
> # cat /proc/sys/kernel/modprobe
> /sbin/modprobe
>
> # echo "/root/modprobe" > /proc/sys/kernel/modprobe
> # cat /proc/sys/kernel/modprobe
> /root/modprobe
>
> # exit
>
> $ lsmod | grep aead | wc -l
> 0
>
> $ date -u && ./copy_fail_exp.py
> Fri 01 May 2026 16:08:24 UTC
>
> # cat /tmp/modprobe.log
> Fri May  1 16:08:24 UTC 2026 modprobe -q -- net-pf-38
> Fri May  1 16:08:24 UTC 2026 modprobe -q -- algif-aead
>
> # lsmod | grep aead
> algif_aead             16384  0
> af_alg                 36864  1 algif_aead
>
> # echo "/sbin/modprobe" > /proc/sys/kernel/modprobe
> # cat /proc/sys/kernel/modprobe
> /sbin/modprobe
>
> # exit
