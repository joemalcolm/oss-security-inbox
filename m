Received: (qmail 18167 invoked by uid 550); 3 Jun 2026 18:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5748 invoked from network); 3 Jun 2026 17:49:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redcoat-dev.20251104.gappssmtp.com; s=20251104; t=1780508965; x=1781113765; darn=lists.openwall.com;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8/T9HFBLw/YpWEeEgkCq2I08y1b/oIORlN6Wuy8KpdE=;
        b=j0F+s/dMmScB6CRc0RHRzYwJdcb68SlYOcGQF/zedCtdCXxGHORy1UmXtUj7xyKS17
         Rb3xgVE+95nqBfLK2YjQp+jq2i1HPpobt6ChGRcCe2xy5FDlcW/KUSSPIBPrFKiRb7gF
         IgnYHhmZinLl/0WangivbvGGSM6IrdNffLQB9ixmRlMv0CP7KR8zac2bcqCLHmtbgm89
         7Lwm1c5m2P1qngZYa3bDvdV/J8pMcLVGTE++SZtgGHtYLhEvDQpCEKU8a0rxTB5QJpE3
         oKEn5RJ1EnlZchLS2yIXlVgivV5DkknnWMehgfhp5qjftlknXCqzD7VPSruvyP8FnOnS
         MQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780508965; x=1781113765;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8/T9HFBLw/YpWEeEgkCq2I08y1b/oIORlN6Wuy8KpdE=;
        b=ngl0+PjWBO4hzQBtjTq1R1x5tMPbnuxDkbTb/pNoZjB7x5BC6/pN1yZwPG9CqPq3bA
         8hWrjLgB5iV/lOEa6GJukvE76bCnchUqvF7qeHLyFGIrS7J4H3Zhh5/BxzfL5GJ/5YYF
         oiqmADK1Upl95jK824ssWJm1RzdSYkc/DxMKvMHqPXP+6Ayl+3tKrsDzMmN/LMTayRko
         tNItZwdVtqpmLeuTdrJotyHoFKrcvlGTkESCT2ZVxBs8tzNPOnGmpu7xdRZPzuuLssk9
         fvyJStXSSgbUAx1o5k/zLlzakygP9T3GFUIzbXRFi1sFxM5c1Vv+wI9bCxyCXLLiaB4c
         K4Sg==
X-Gm-Message-State: AOJu0YzXTtAu3l0vOmb8QSlGI+vbZ4HsUpW8kqIbgAbhMvBafJ75fg5W
	4tmqDb0bVu4/MnBSB15ZiLsu3iIkTgBnSHuCXV9fCKjDI/QxXOUPmhgT0FMjOTvgn17bneEK84G
	+DGi5
X-Gm-Gg: Acq92OEqsesKiuwu6rJT1YC7X9eMF9VzwlMVMvWh7IVDcfQAkSuz1KnQK14pEswiv2U
	l8JLxYpuq1n3cFIlXmpeQG3UF22PFbuMEAz3uO2Cfvmjv9ZThykqnHDJoRPoJi3a5XU9RJhWwfS
	SJy+o9hSs+4Z0aT1m+NWxwau5IU03kk6lZ8amKVZJDCFc+UuhsywX0T3VQk2rHq0tkKrFrCNuNN
	h1sCx/xKSZEoTfb2/Gva+j7JfexSDOOFQgA0wWBT273hkVjl1gSHgdlQBiBThiH+NEdE9XWrhdD
	RedlagWJ/j61UXpInBX/nj/RHr/oYbN9T9hvz4WFUAwQPnAxOoQQ6eGgOACzQqIb01WuWOoPjRd
	vfmdTK9+x+jEhG9g2LXJNU5xOlOQKEGVSsdB5no7F6zlvh0KwyB9H2FPfRxS91H3G+Eg95q8o02
	1UWTR7A87MaSpQhQnOrvXePUkfPBAx/0ufm6XKRVYqpXdrClF0lXqXlI9i5l3jxciZx5jirXrxW
	A==
X-Received: by 2002:a05:600c:4e52:b0:490:ae52:499c with SMTP id 5b1f17b1804b1-490b5ed4620mr78103945e9.21.1780508964513;
        Wed, 03 Jun 2026 10:49:24 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 03 Jun 2026 18:49:23 +0100
Message-Id: <DIZLR1S1UFXC.1CL0O1X3GAEZ9@redcoat.dev>
From: "Emily Shepherd" <emily@redcoat.dev>
To: <oss-security@lists.openwall.com>, <jcb62281@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <CAJv4Csu5=C04SfEWEWe7QuUTTYbwRieTxCXQ4chO3tPXDvGxHw@mail.gmail.com> <dba33ac5-e1de-47d1-ac39-05fc42dfa3f4@gmail.com> <CAJv4CssaPRCG40QqABsMj89riidUxAO35LVns_X=Df-+qfThpQ@mail.gmail.com>
In-Reply-To: <CAJv4CssaPRCG40QqABsMj89riidUxAO35LVns_X=Df-+qfThpQ@mail.gmail.com>
Subject: Re: [oss-security] Linux kernel TLS ULP use-after-free in
 tls_sk_proto_close()

On Wed Jun 3, 2026 at 10:16 AM BST, Oleg Sevostyanov wrote:
> Thank you for the comments.
>
> You are right about the reproducer. I mistakenly included it despite sayi=
ng
> that I was not including it. I apologize for the inconsistency.

This reads like AI. Given the original mistake in publicly submitting=20
a PoC when you intended not to, I have to ask: is a human properly=20
checking the contents of the emails you are sending?

> I also agree that taking lock_sock(sk) earlier in tls_sk_proto_close()=20
> looks
> like the natural mitigation direction, given that the function takes it
> unconditionally anyway. I will bring this point to the kernel/networking
> maintainers when discussing a fix.

Can you clarify if this has been raised on the appropriate kernel=20
mailing lists? I do not see it in your timeline:

On Tues Jun 2, 2026 at 20:59 AM BST, Oleg Sevostyanov wrote:
> Timeline:
> 2026-05-16: Reported to linux-distros
> 2026-05-30: Latest agreed public disclosure date
> 2026-06-02: Public disclosure to oss-security

Emily
