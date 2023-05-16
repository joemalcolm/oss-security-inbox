Received: (qmail 5179 invoked by uid 550); 16 May 2023 08:39:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13449 invoked from network); 16 May 2023 04:18:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684210724; x=1686802724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qsIFbwdQr2FSez6bIGEXPtKHUtQkoRRaHu9+s2BEQMM=;
        b=iJREsztJ2SjZEiG54z7jKXEDqz0OpmjspkMWTp2Sf4BW9DaWwY5jiW99odztRq3h+I
         IGpur3U70Cw1W6Z66JaQc1KMbHeJ9xy1vVlh9UtnmTIsO6x7xuZY6auKD50GiwHsFQji
         Ht/P+jpfgehDIecbWW9eTHj53542GbTn8Oe9Ybs2TOKj2PT/labGwoKv4+TLpf8OXUA/
         FJH9BpAob/YTcsjp7KXfO+94YUVENWwO+W1PWWz4FZiiNdTD5rHgjxhEmrKX0F2ULOGn
         Mzv2v4lefBH63Y9xx6wDy2FKbc9IJ267lVAWTKM4puPUfEsJl8ML8aqcn71GAkuculdO
         iOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684210724; x=1686802724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qsIFbwdQr2FSez6bIGEXPtKHUtQkoRRaHu9+s2BEQMM=;
        b=TygsyRkUZ3tMzJNBVWpQSHVfC4tr56tPjr0ONWYnTwPZZOTaEHV2dNJjWnLhEDkr+j
         e+HjLAsHHNtL4Nrp62e3YCAEU8U+M8MtjHCHsJ9OsBmImV7cQC7YVEGNcH/z5qUzf91b
         1b5fqqjAt4Hxe5oh4WhesQKi7U8ziWe1sNXpzb2fS1uXT+xB9BUy3dkLBQt1FEwrmlkC
         6i0LDFghQSejcvJarLx/s8d9KsoNI6RIvFGpirrzwvL8haCBaFha5WTgzYWeODj/Kplf
         rysVi7RM42AfmdDpM0i1vDiXexcRecfcD7ZU7hWCRntc/8Mr/pJYMve9Culn4q+LtVLY
         FS6A==
X-Gm-Message-State: AC+VfDzoCVmxIjypLCBV50+U7YrrZ7yzMsHMkZkM+sxL3I0JR249IQCV
	OsaW0mUuas46bY9bwL6qWrbfNQlXtFw1OS8QRqAhaVIjR5KhsOAyM2Q=
X-Google-Smtp-Source: ACHHUZ4I0jxgMGHtoT/XlyKyIUVFUA0wC7DLGOq0idO28xp9Beiwc4LDcVKprFSUw+yBuUMYAaSjk5prLdsUztVILzM=
X-Received: by 2002:a17:903:25c2:b0:1a6:a405:f714 with SMTP id
 jc2-20020a17090325c200b001a6a405f714mr37999668plb.63.1684210723750; Mon, 15
 May 2023 21:18:43 -0700 (PDT)
MIME-Version: 1.0
References: <CABwY-5L9X-haRs9R0JEVBECHs4eVwXS8F1Cw0EtjvWbSkW22Dw@mail.gmail.com>
 <2023051547-arming-kinsman-4f0a@gregkh>
In-Reply-To: <2023051547-arming-kinsman-4f0a@gregkh>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Tue, 16 May 2023 12:18:30 +0800
Message-ID: <CAJedcCwWh0NV13rSZdU7jCcQKdTTes=AxSQFwYjbFbB0LyFHbw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] linux kernel 6.3.0: slab-use-after-free Write in
 txEnd due to race condition

Greg KH <greg@kroah.com> =E4=BA=8E2023=E5=B9=B45=E6=9C=8815=E6=97=A5=E5=91=
=A8=E4=B8=80 20:05=E5=86=99=E9=81=93=EF=BC=9A
>
> On Mon, May 15, 2023 at 09:34:36AM +0800, =E8=93=9D=E8=89=B2=E7=9A=84=E5=
=B0=8F=E7=BE=8A wrote:
> > Syzkaller reported an error "slab-use-after-free Write in txEnd".
>
> In the JFS filesystem, right?
>
> <snip>
>
> >  fs/jfs/jfs_debug.c  | 2 ++
>
>         $ ./scripts/get_maintainer.pl fs/jfs/jfs_debug.c
>         Dave Kleikamp <shaggy@kernel.org> (odd fixer:JFS FILESYSTEM)
>         jfs-discussion@lists.sourceforge.net (open list:JFS FILESYSTEM)
>         linux-kernel@vger.kernel.org (open list)
>
> Any specific reason you didn't send this to the mailing list and
> developers who can review and apply this potential fix to the kernel
> tree?
>
> syzbot-reported issues are not really a new or exciting thing, we get
> loads of them every week (see the syzbot mailing list and summaries).
> What is good is for fixes like this one to be sent to us so that we can
> merge them for all to use.
>
> That is if anyone is actually using the JFS filesystem anymore, it is
> pretty obsolete.  Are you using it?
>

Hi Greg,

Sorry for our mistake. My friend is not familiar with the rules. We
should send it to OSS-security after the bug is fixed. The patch now
is sent to the open mailing list. Sorry again for the unintentional
mistake.

Best regards,
Zheng


> thanks,
>
> greg k-h
