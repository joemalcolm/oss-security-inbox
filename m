Received: (qmail 11653 invoked by uid 550); 22 Sep 2023 16:01:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32334 invoked from network); 22 Sep 2023 15:50:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695397842; x=1696002642; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uMyZxxGrWGRlz7lB8bnq4+q5i2OCEFzjD3Y9A31UsWU=;
        b=u2Vw//X/9qpuMpeoPXxefhw5oc8+o9IOLCtZZAVgVVBNIE2TaZE2iUwBs6KoyNf5II
         JDGcpi1xNprnS9WHtkNrtJUUx1eB0L3LH4zp8soKr00cp79ID6MBF+uiSEpbVdinELHj
         CDn7in8UhIMFYagFOKRDZJQtp8/ONIZSuB8ayzE6gA4ZwGbpG6yw2oMoCsJup5aKJgjR
         KiSwUY+59bx0BXL8udSjMNUUJxUlQpSgq2EDJ37bZPlNiO2aIo4O2lF+5TiXjXkcwMMO
         iUzJaei39dCx+V48cGwD+vp8TsT4fUDnb8skq0K+VM7JRiA3giPvl+rx4gpxKEZwjfCJ
         i1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695397842; x=1696002642;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMyZxxGrWGRlz7lB8bnq4+q5i2OCEFzjD3Y9A31UsWU=;
        b=as6fW6Mf3nxOsFUi4t5/UUStz4qc8mQVttwysdspcVjhS97uvQ4ePYrMsg7CapGmVG
         yt+N3DYjAI3wdAEI+kM1NzTPUsZX68MBx59wqCYOnuRkzVyzey9uKaEreLd60RUfKgHu
         yO6f9wraIW3gfNNr6fQicSWTgbJH7pwjCud/j/ZowYnXc76pxBegA0iZkrx3VWt1M8xN
         cBp7cXj+YxhVjiyPSo9HONIcNxzVNwxZFE4ClJk/pVesjOeVQIaZ7jDmQfyOSSo3INsh
         xanRebLPEABgIIP/+boFB38I/pXIVu7iZh6E7hcQLQz7j/x2++3X846ixwBqRNu/y0TB
         3W7A==
X-Gm-Message-State: AOJu0YzLWS9SQSNdzExljOafB+ZhTNCL9VO4BnAyqtvsEIpikESCFcmk
	T25XqDKNX3S6sjW3PYdiWdThKIM0QNL/6CK8KXHjP4P0knC9CC2usho=
X-Google-Smtp-Source: AGHT+IF8uf8/uFXxtuC5xJnuM7CODxiUqIClxD07h/oYPC6x9bnvay97Frs5HJI0xxHmz9fzUgD4YNvff/+UV+aWXPI=
X-Received: by 2002:ac8:5d07:0:b0:412:16f:c44f with SMTP id
 f7-20020ac85d07000000b00412016fc44fmr285775qtx.6.1695397842295; Fri, 22 Sep
 2023 08:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230921205250.GA13106@openwall.com> <20230922072817.092917d2.hanno@hboeck.de>
 <20230922105410.GA15143@openwall.com> <CAJMnc16px2pgN9qmH6iw=by+DLu4cXBmZZpDGe3Lf_QWPEW0bg@mail.gmail.com>
 <20230922153516.GA17264@openwall.com>
In-Reply-To: <20230922153516.GA17264@openwall.com>
From: Vincent Rabaud <vrabaud@google.com>
Date: Fri, 22 Sep 2023 17:50:33 +0200
Message-ID: <CAJMnc14+zKq=VOFPcq_1O+spgoGDi1oO1BVbaj4Vi8zNf1CKiQ@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000024e0070605f49294"
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

--00000000000024e0070605f49294
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Clean-ups, no security issues there.

Le ven. 22 sept. 2023, 17:35, Solar Designer <solar@openwall.com> a =C3=A9c=
rit :

> On Fri, Sep 22, 2023 at 04:50:44PM +0200, Vincent Rabaud wrote:
> > Hi, we have commented on that here:
> > https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=3D62136#c7
>
> Thank you!  I include the relevant comments below:
>
> > Comment 6 by t...@ritter.vg on Mon, Sep 18, 2023, 4:58 PM GMT+2
> >
> > Can I request a CVE assignment for this issue (so I can note it
> > correctly in Firefox advisories)?
> >
> > Comment 7 by jz...@google.com on Tue, Sep 19, 2023, 3:22 AM GMT+2
> >
> > This was an incorrect check in an assert(). A release build would not be
> > negatively affected. The conditions were updated, but previously the
> > file would not cause an issue in that mode. Vincent, please correct me
> > if I'm wrong.
> >
> > Comment 8 by vrabaud@google.com on Tue, Sep 19, 2023, 11:08 AM GMT+2
> >
> > Exactly. And instead of fixing the assert, the patch uses an early exit
> > to not reach the assert, which is also an optimization.
>
> Vincent, what about these commits? -
>
> commit dce8397fec159c9edfeec7c6388cb81428c87ed8
> Author: Masahiro Hanada <hanada@atmark-techno.com>
> Date:   Thu Sep 14 19:37:24 2023 +0900
>
>     Fix next is invalid pointer when WebPSafeMalloc fails
>
>     When WebPSafeMalloc fails on VP8LHuffmanTablesAllocate,
>     next is not initialized to NULL.
>     VP8LHuffmanTablesDeallocate uses next to know the following nodes.
>     A patch fixes this issue.
>
>     Change-Id: I144ae84cd97e5bca227018ef1afa95361267902c
>
> commit 433c7dca11bb5b001ce5ad36ac1afd2906a2f13e
> Author: Vincent Rabaud <vrabaud@google.com>
> Date:   Thu Sep 14 09:31:19 2023 +0200
>
>     Fix static analyzer warnings.
>
>     Change-Id: I45f0db2310b1188809963af93240e3d438f807b8
>
> The "next is not initialized to NULL" one sounds like it could mean
> stale memory contents (possibly deliberately sprayed) could be used as a
> pointer, so it could be a security issue.
>
> The warnings fixes could be just that, or some of those warnings could
> have been for real issues (perhaps also something used uninitialized).
>
> In other words, are the issues fixed there known to be benign, are not
> sufficiently researched, or researched and known to be vulnerabilities?
>
> Alexander
>

--00000000000024e0070605f49294--
