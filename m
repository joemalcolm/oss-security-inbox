X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2989" "Sunday" "13" "February" "2022" "11:10:58" "-0500" "Willem de Bruijn" "willemdebruijn.kernel@gmail.com" nil "55" "[oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management" nil nil nil "2" nil nil (number mark "U       willemdebrui Feb 13   55/2989  " thread-indent "\"[oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23728 invoked by uid 550); 14 Feb 2022 07:09:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30401 invoked from network); 13 Feb 2022 16:11:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YaE9KVeLJ/5Adtm57P8/bYr9adrmqYlWKVBtPptHpg0=;
        b=BnUBgIsoNfCmefER+CDDQ+vZ2J3wvvyWrZv1yznju+NVG/qmRNFDD4GebCaI/W3+Zp
         KM9WlXsP6nQa283ux0ORpu3SpzU2/P7aLPV3CgeNrfdxhCOuzaJQlKB9HuUPMuMhbIrd
         mP/rBiyXep0S8rwnLuJQcV7EuzcKHh6zlDRqXomf+48G05U+vx0y9UDxDljIgTg+on9z
         9RZkCBnwy+LQY9yTN1zvHxsTVbqEHiPZM+SAw7AmzHXLy18/RPj4eiKdFo0O+hvGYn7y
         VNO2g39uZS5vbI0g1MMlOIFBYxxqrW1O4OAzs2tJNExNbhVQh6ES1Lc/cYgSnjaWsCRz
         t8Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YaE9KVeLJ/5Adtm57P8/bYr9adrmqYlWKVBtPptHpg0=;
        b=xnKC+qLET5shSY2c+JhJWkTCbi3oYqJzRI7qaTKhzkfRAHMFM0M1iQ/YpoyfBfZURu
         zlhwr9SKWycuUXJwBowN+GHAeBwuIHTtCRHJplB3qLrl0FDVBpMuKf7KwctGAc+G5NCE
         NWqH7f0GyVmKGOF9B8cXxszKSYpUDk1CjIghQBQytruteTcQajxe9/pPbPEyvFX0KiRe
         cbEtj0NWvp4iPmjr/GZSMP2i/COa0ZMzTsu5L/PP+9PvwW7g1EzhC82fps5CKNcLcNii
         QusEj+Iie8DR3zuKUN+uelS2EFBD8e4MuWH9N4ZWoBk12e3vXiBmSL8hsvvfFsFMHPM5
         E/aA==
X-Gm-Message-State: AOAM532kPqgMXsqYGno0STgpLvlBXw/zCcWVzI4FcUR5wbq1OyOy7C7z
	iyLz7Z48IMan9ilx6L3mnvY0XJDbVpM=
X-Google-Smtp-Source: ABdhPJzZojzTZpJM+CJA2sO0ATb/9lfLvaxIKJQLHnTMDtmR14bbngPnfK14sVh8ouMrTxCJnoZEVw==
X-Received: by 2002:a67:b241:: with SMTP id s1mr2690099vsh.73.1644768696905;
        Sun, 13 Feb 2022 08:11:36 -0800 (PST)
X-Received: by 2002:a67:cc14:: with SMTP id q20mr221043vsl.74.1644768695555;
 Sun, 13 Feb 2022 08:11:35 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR2201MB1072BCCCFCE779E4094837ACD0329@MWHPR2201MB1072.namprd22.prod.outlook.com>
In-Reply-To: <MWHPR2201MB1072BCCCFCE779E4094837ACD0329@MWHPR2201MB1072.namprd22.prod.outlook.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Sun, 13 Feb 2022 11:10:58 -0500
X-Gmail-Original-Message-ID: <CA+FuTSeY-GNfBCppjRwhWrOnUg9JDOaesjby2+QbuvPOO5g-=Q@mail.gmail.com>
Message-ID: <CA+FuTSeY-GNfBCppjRwhWrOnUg9JDOaesjby2+QbuvPOO5g-=Q@mail.gmail.com>
To: "Liu, Congyu" <liu3101@purdue.edu>
Cc: "security@kernel.org" <security@kernel.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux kernel: potential net namespace bug in IPv6 flow label management

On Sun, Feb 13, 2022 at 5:31 AM Liu, Congyu <liu3101@purdue.edu> wrote:
>
>
> Hi,
>
> In the test conducted on namespace, I found that one unsuccessful IPv6 flow label
> management from one net ns could stop other net ns's data transmission that requests
> flow label for a short time. Specifically, in our test case, one unsuccessful
> `setsockopt` to get flow label will affect other net ns's `sendmsg` with flow label
> set in cmsg. Simple PoC is included for verification. The behavior descirbed above
> can be reproduced in latest kernel.
>
> I managed to figure out the data flow behind this: when asking to get a flow label,
> some `setsockopt` parameters can trigger function `ipv6_flowlabel_get` to call `fl_create`
> to allocate an exclusive flow label, then call `fl_release` to release it before returning
> -ENOENT. Global variable `ipv6_flowlabel_exclusive`, a rate limit jump label that keeps
> track of number of alive exclusive flow labels, will get increased instantly after calling
> `fl_create`. Due to its rate limit design, `ipv6_flowlabel_exclusive` can only decrease
> sometime later after calling `fl_decrease`. During this period, if data transmission function
> in other net ns (e.g. `udpv6_sendmsg`) calls `fl_lookup`, the false `ipv6_flowlabel_exclusive`
> will invoke the `__fl_lookup`. In the test case observed, this function returns error and
> eventually stops the data transmission.
>
> I further noticed that this bug could somehow be vulnerable: if `setsockopt` is called
> continuously, then `sendmmsg` call from other net ns will be blocked forever. Using the PoC
> provided, if attack and victim programs are running simutaneously, victim program cannot transmit
> data; when running without attack program, the victim program can transmit data normally.

Thanks for the clear explanation.

Being able to use flowlabels without explicitly registering them
through a setsockopt is a fast path optimization introduced in commit
59c820b2317f ("ipv6: elide flowlabel check if no exclusive leases
exist").

Before this, any use of flowlabels required registering them, whether
the use was exclusive or not. As autoflowlabels already skipped this
stateful action, the commit extended this fast path to all non-exclusive
use. But if any exclusive flowlabel is active, to protect it, all
other flowlabel use has to be registered too.

The commit message does state

    This is an optimization. Robust applications still have to revert to
    requesting leases if the fast path fails due to an exclusive lease.

Though I can see how the changed behavior has changed the perception of the API.

That this extends up to a second after release of the last exclusive
flowlabel due to deferred release is only tangential to the issue?

Flowlabels are stored globally, but associated with a netns
(fl->fl_net). Perhaps we can add a per-netns check to the
static_branch and maintain stateless behavior in other netns, even if
some netns maintain exclusive leases.
