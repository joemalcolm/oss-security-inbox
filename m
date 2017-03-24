X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1643" "Friday" "24" "March" "2017" "15:21:06" "-0700" "Eric Dumazet" "edumazet@google.com" "<CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>" "51" "Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" nil nil nil "3" "2017032422:21:06" "[oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" (number mark "U       edumazet@goo Mar 24   51/1643  " thread-indent "\"Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race\"\n") "<CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>" ("<20170324202714.GA29241@openwall.com>" "<CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22148 invoked by uid 550); 24 Mar 2017 22:37:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31839 invoked from network); 24 Mar 2017 22:21:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=80zCEufB1uTGsr0SJcMSDYxHxnK4f+2C2B5qL43675U=;
        b=Vcq2/aXhBFH4cdWoThmzryazKbGo4g9X7qLH1gRwuPmjv4WKUYwhpNNo6t9tzH5fgy
         PcuwKOuYJwqiH/tqqFAT8N1yKE0PXyMqcSXSCUZG2cz280opXMf0BsplOaVIRZvOggXE
         6ohU9/JsMthunu6G5GLDOhGFDdMs+NoPfizV8FwsTcNkaHp4dxPPw6h6yUrvzBa62Ojf
         acF4hqCRGpzFw7ZZw99QE7s89Qlk+4+SBdoKNKGgUg3qO2/sfHllb67Y9/OAIXTlMz3F
         oxANDZqBJKAAuvKFr8wcUsoUpTUEE7k6ojmkfFQSJTh6sSf8kfTSFBl8bDb9LZbWjYwQ
         b64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=80zCEufB1uTGsr0SJcMSDYxHxnK4f+2C2B5qL43675U=;
        b=TDcfyGl/Su53Weqg03xsGdhb+M5zYp0cf1oxlF3ocpCyl2kOo8L5JBm7SlBajsbySk
         80+lvi1iVYZDHBBba0RkaNWNI3DILxQP8mrMp2tYGwYEs7E4K0K5rVzqyGafUYD5F7iV
         26/IoJ0sgw4kx06hXmBzIeZm80e5xHON5P2o61UBKv36tDK0cb+OPn9Zi2Nwbk3N5Ls8
         oDZCkViGjjCgWznS7hrqYYn5EOOzG48oApKCEEkwWlOOAXGlBcO7TIy3z5Y1wDzV1MYx
         L5IhjNKMR2qpzUVyprBmdDGk+LOXCpM53FhyDfbaYgfMhS/ohhZknCrO5fHEapWcyT+i
         pnaQ==
X-Gm-Message-State: AFeK/H1gQw72GaLGOieIRy3gBpzL98vCIjZL2CjWnXLZr/NGnhN+l0p8FovQXzPpOsuegmoetIp1NYIokHN4+Znq
X-Received: by 10.28.230.83 with SMTP id d80mr5026805wmh.18.1490394067163;
 Fri, 24 Mar 2017 15:21:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>
References: <20170324202714.GA29241@openwall.com> <CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 24 Mar 2017 15:21:06 -0700
Message-ID: <CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>
To: Andrey Konovalov <andreyknvl@google.com>
Cc: oss-security@lists.openwall.com, "David S. Miller" <davem@davemloft.net>, 
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, James Morris <jmorris@namei.org>, 
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Patrick McHardy <kaber@trash.net>, 
	netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Vasily Kulikov <segoon@openwall.com>
Content-Type: multipart/alternative; boundary=001a1147bfd0f331f0054b816841
Subject: Re: [oss-security] Linux kernel ping socket / AF_LLC connect()
 sin_family race

--001a1147bfd0f331f0054b816841
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 24, 2017 at 1:43 PM, Andrey Konovalov <andreyknvl@google.com>
wrote:

> On Fri, Mar 24, 2017 at 9:27 PM, Solar Designer <solar@openwall.com>
> wrote:
> > Hi,
> >
> > I haven't fully investigated this issue, and the Subject is provisional
> > (but will probably get stuck).  I am not yet sure which kernel
> > subsystem(s) to blame here (ping sockets? LLC sockets? other/more?), and
> > there might be other ways to trigger the issue.
>
> Reproduced the crash on current upstream
> (ebe64824e9de4b3ab3bd3928312b4b2bc57b4b7e).
>
> Adding kernel maintainers.
>

Looks easy enough to fix ?

diff --git a/net/ipv4/ping.c b/net/ipv4/ping.c
index
2af6244b83e27ae384e96cf071c10c5a89674804..ccfbce13a6333a65dab64e4847dd510dfafb1b43
100644
--- a/net/ipv4/ping.c
+++ b/net/ipv4/ping.c
@@ -156,17 +156,18 @@ int ping_hash(struct sock *sk)
 void ping_unhash(struct sock *sk)
 {
        struct inet_sock *isk = inet_sk(sk);
+
        pr_debug("ping_unhash(isk=%p,isk->num=%u)\n", isk, isk->inet_num);
+       write_lock_bh(&ping_table.lock);
        if (sk_hashed(sk)) {
-               write_lock_bh(&ping_table.lock);
                hlist_nulls_del(&sk->sk_nulls_node);
                sk_nulls_node_init(&sk->sk_nulls_node);
                sock_put(sk);
                isk->inet_num = 0;
                isk->inet_sport = 0;
                sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
-               write_unlock_bh(&ping_table.lock);
        }
+       write_unlock_bh(&ping_table.lock);
 }
 EXPORT_SYMBOL_GPL(ping_unhash);

--001a1147bfd0f331f0054b816841--
