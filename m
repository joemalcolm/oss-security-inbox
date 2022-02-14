X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3576" "Sunday" "13" "February" "2022" "20:32:44" "-0500" "Willem de Bruijn" "willemdebruijn.kernel@gmail.com" nil "68" "[oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management" nil nil nil "2" nil nil (number mark "U       willemdebrui Feb 13   68/3576  " thread-indent "\"[oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24214 invoked by uid 550); 14 Feb 2022 07:09:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3901 invoked from network); 14 Feb 2022 01:33:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zYv4y7crMC2gY+dPV1mqIv4soL/NcDOobAqLv4qnesk=;
        b=OeKgF6+zGQHpOuXHJfTy+WA+dt9qmNJqMZ87KgNKDi1BlN5npKLFPRjk/4NCtfeg10
         e3gSZ5z4re0dh+hCjGX1DhkdaFCCEcIwmBO5n5z8eQT+Lf+r15AWjtsof6KrLJdFfTCO
         W+jzfW1C1mQBhd7c0JA2p12Qj3YtJpOOjEq8wlYTOQEmAGqSY818i9TaFSk9I7AaUEe/
         8dGFwsBXvFc3H8pABX1t2sHXqso8+6oPi+HQmqkaCLCeEUIk/g1o0l3y4z4yAZbO6OPD
         M7+MwZ34pjaxEeArJGs7SAOGWPD6xqkEmrP5ifaB+ZtLewC5fd5NvBemb4d8jYvOzhQK
         +Rqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zYv4y7crMC2gY+dPV1mqIv4soL/NcDOobAqLv4qnesk=;
        b=BGrJa64sp9oMV2y9R4nXIJdjimw0Y9ADSBJSoDofohe8PiiH0iayvnu2D5CnmMs3hK
         Hravo01RJEd0LxeJwcYefq5j+kGdT0YVVtgiJigls+ShsIJVN7u8dxKUelE/dhKm2gt6
         SHiyfU85t7wGoJHZ+X/dY2oWcwnK/VZ7e4geYuijRm5xtc8UCIf9n3VuGl4D4KfwrsfR
         Tcn2n6L5HwhIlufiLIqONB6gKBIkAqZoKtJHApLrsRKSNo/v4Pow/WCo5pWfAR8ZAEXG
         vb7OnLkdVOkwuCH+4hDAtEQcwjKVd4vzXtakaC84QDkPm8G723o2ZsU8HOONs1ZY4ll0
         68JQ==
X-Gm-Message-State: AOAM533r76T1HFrJJvHzHi0estd+RpBWAb5gTvV6nEvoNizAQ5gx8/Ce
	6BIptcQJ4BeDQXoHHtI15AHKWC0SSdoE9dIUjV0=
X-Google-Smtp-Source: ABdhPJwqv74ArnOuOaofYcCx4ljOcnx8M7mPZqOBrpCOoMJJ0QM8JtfWe/4vq0uOMa/ckMT+8v8GIPcX8mcaA5g8TVY=
X-Received: by 2002:ac8:5ac4:: with SMTP id d4mr8145742qtd.144.1644802400067;
 Sun, 13 Feb 2022 17:33:20 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR2201MB1072BCCCFCE779E4094837ACD0329@MWHPR2201MB1072.namprd22.prod.outlook.com>
 <CA+FuTSeY-GNfBCppjRwhWrOnUg9JDOaesjby2+QbuvPOO5g-=Q@mail.gmail.com>
In-Reply-To: <CA+FuTSeY-GNfBCppjRwhWrOnUg9JDOaesjby2+QbuvPOO5g-=Q@mail.gmail.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Sun, 13 Feb 2022 20:32:44 -0500
Message-ID: <CAF=yD-Kki07f3DAgiB3sjVKkeJLrzA8K3YG2z4z8gwiHu_UOYg@mail.gmail.com>
To: "Liu, Congyu" <liu3101@purdue.edu>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management

On Sun, Feb 13, 2022 at 11:11 AM Willem de Bruijn
<willemdebruijn.kernel@gmail.com> wrote:
>
> On Sun, Feb 13, 2022 at 5:31 AM Liu, Congyu <liu3101@purdue.edu> wrote:
> >
> >
> > Hi,
> >
> > In the test conducted on namespace, I found that one unsuccessful IPv6 flow label
> > management from one net ns could stop other net ns's data transmission that requests
> > flow label for a short time. Specifically, in our test case, one unsuccessful
> > `setsockopt` to get flow label will affect other net ns's `sendmsg` with flow label
> > set in cmsg. Simple PoC is included for verification. The behavior descirbed above
> > can be reproduced in latest kernel.
> >
> > I managed to figure out the data flow behind this: when asking to get a flow label,
> > some `setsockopt` parameters can trigger function `ipv6_flowlabel_get` to call `fl_create`
> > to allocate an exclusive flow label, then call `fl_release` to release it before returning
> > -ENOENT. Global variable `ipv6_flowlabel_exclusive`, a rate limit jump label that keeps
> > track of number of alive exclusive flow labels, will get increased instantly after calling
> > `fl_create`. Due to its rate limit design, `ipv6_flowlabel_exclusive` can only decrease
> > sometime later after calling `fl_decrease`. During this period, if data transmission function
> > in other net ns (e.g. `udpv6_sendmsg`) calls `fl_lookup`, the false `ipv6_flowlabel_exclusive`
> > will invoke the `__fl_lookup`. In the test case observed, this function returns error and
> > eventually stops the data transmission.
> >
> > I further noticed that this bug could somehow be vulnerable: if `setsockopt` is called
> > continuously, then `sendmmsg` call from other net ns will be blocked forever. Using the PoC
> > provided, if attack and victim programs are running simutaneously, victim program cannot transmit
> > data; when running without attack program, the victim program can transmit data normally.
>
> Thanks for the clear explanation.
>
> Being able to use flowlabels without explicitly registering them
> through a setsockopt is a fast path optimization introduced in commit
> 59c820b2317f ("ipv6: elide flowlabel check if no exclusive leases
> exist").
>
> Before this, any use of flowlabels required registering them, whether
> the use was exclusive or not. As autoflowlabels already skipped this
> stateful action, the commit extended this fast path to all non-exclusive
> use. But if any exclusive flowlabel is active, to protect it, all
> other flowlabel use has to be registered too.
>
> The commit message does state
>
>     This is an optimization. Robust applications still have to revert to
>     requesting leases if the fast path fails due to an exclusive lease.
>
> Though I can see how the changed behavior has changed the perception of the API.
>
> That this extends up to a second after release of the last exclusive
> flowlabel due to deferred release is only tangential to the issue?
>
> Flowlabels are stored globally, but associated with a netns
> (fl->fl_net). Perhaps we can add a per-netns check to the
> static_branch and maintain stateless behavior in other netns, even if
> some netns maintain exclusive leases.

To clarify, I don't consider this a vulnerability.

The issue is under the control of the victim. It can avoid the ENOENT
by requesting the flowlabel it intends to use.

I have responded with more technical detail on the Linux kernel
netdev list:

https://lore.kernel.org/netdev/CA+FuTScRGQV5ePxbu7LReuAUc_AU3sQd7Mb8KGVmu+X2jSQSCQ@mail.gmail.com/T/#m01181a0b1ac93f560275175b1b23a8b6f9e0fe45
