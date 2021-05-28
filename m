X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["983" "Friday" "28" "May" "2021" "17:41:03" "+0200" "Oliver Hartkopp" "socketcan@hartkopp.net" nil "31" "[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil "5" nil nil (number mark "U       socketcan@ha May 28   31/983   " thread-indent "\"[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23772 invoked by uid 550); 28 May 2021 18:10:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19855 invoked from network); 28 May 2021 15:41:30 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1622216472; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=ipB9NQGi3v5BC+M+tXgntmDnIUK//D6bE5zt+ETjY+jU5miZtSn9LJQ5NPoObeOMdq
    sF+kv96QsN+SyakO1oOYgHDVmeGdv7Oc1oouI6D0WrvyGS7IphNLEay/FYq7icLqMgiB
    kt9rK0CxV70yGHCCBOhU4UoLjQOB2CKPnceu8lAF+hOwetZBofMZELV+1j2K5Fk9XfkU
    iZ1bSdJa5C7XhXDYS6WhiQQ5vRjNUMxgLmMenlkyfriFXdMZWcIAR0M93RYjS/lyw6Bv
    T4IVo9EPM4axuxwuHGwGfuHdjze0TaTzdFQFfg+5xsgLbi8bMWtajKHwMPSv+YWrr4E2
    kQIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1622216472;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Cc:Date:
    From:Subject:Sender;
    bh=vCBfHfmrJHDLszK7SXrD/nqlXk4rAuhvbk2CSDB9xDM=;
    b=aemUUQjPYfT2QfjFElnCgn/gInAL2zFdpyAVir3D/VUGo/oGOtYgtIIGs9adLyVpco
    5V8Nw3AF7AFdeEBscmlwBLC6r/ZfZh6z9wwuR3QPAbRkseyDjYw8dMg4Hp5Ipba4vjzt
    fvJy9OAPL7uz4h+oL8h7K/9+2o7pjoCZLXsVZjDu7kjY28qw6XLbvi11Foj2H759g/Dp
    WjIcSyEjt06wwCP80D2WQfgA0PfqTDnHguHsNwMBZm/sLtph7OX5P2tBMIyxF1tD8S+O
    q6B0AsbOY4LLm7pQbGhPf3KdXS2Cwqu0W0D5DmkMq8jydNP5XVeEVvZe8atdPszz6s8H
    ocMg==
ARC-Authentication-Results: i=1; strato.com;
    dkim=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1622216472;
    s=strato-dkim-0002; d=hartkopp.net;
    h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Cc:Date:
    From:Subject:Sender;
    bh=vCBfHfmrJHDLszK7SXrD/nqlXk4rAuhvbk2CSDB9xDM=;
    b=UNks0USDaR5NXr6DpElpUKZTsZVmqxXhp87lMQIja6dKlgO0bxq3JeQcwiCi7YkVmG
    7sf7/ZJIESdlA1CTwL8qZNc8tj8yluGPm3gUXJrD6huQgMo8Ke7kIDFJvlrR+SlpLbAB
    mxyucfEY3D0wp6ThIgjoFfvl8iC8/+jUrpTahh0aaZO1VwCV6WRlI7qXcx9fJRBsc7i2
    pxf/SfE77mdRTo76mUAidxVJPzOppwKIXIrwbIjnqQL1YLcllfl9VHYMuUgKazEXuBtt
    +w+rJaRKqBEstXiu0cptcWelgDmmdPAWdA5n8qFMpDJBxrzowoQO7j2HbIsqGKxuA2Md
    0vog==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P2MHfkW8eP4Mre39l357AZT/I7AY/7nT2yrDxb8mjG14FZxedJy6qgO1qCHSa1GPy/P2vRbztzpR8OBOV+St1n1qYOMbbO2d9IkX+lQXNOo="
X-RZG-CLASS-ID: mo00
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mkl@pengutronix.de, alex.popov@linux.com, seth.arnold@canonical.com,
 steve.beattie@canonical.com, cascardo@canonical.com,
 oss-security@lists.openwall.com, Norbert Slusarek <nslusarek@gmx.net>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 security@kernel.org
References: <trinity-10aeed49-cb96-47d9-818e-b938913e6fce-1620770433273@3c-app-gmx-bap63>
 <c80114dd-4a97-714d-232c-f4c6cf354332@gmx.net>
From: Oliver Hartkopp <socketcan@hartkopp.net>
Message-ID: <173ce2fa-fe90-4e00-e5a3-1f3163dfe13d@hartkopp.net>
Date: Fri, 28 May 2021 17:41:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <c80114dd-4a97-714d-232c-f4c6cf354332@gmx.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Linux kernel: net/can/isotp: race condition leads to local
 privilege escalation

Hello Greg,

this patch ("can: isotp: prevent race between isotp_bind() and 
isotp_setsockopt()") has hit Linus' tree ~36h ago:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/can?id=2b17c400aeb44daf041627722581ade527bb3c1d

It has a CVE number and is potentially exploitable - but it was not in 
the latest batch of stable kernels about ~4h ago.

It was obviously not tagged properly for stable kernels but has a fixes-tag:

Fixes: 921ca574cd38 ("can: isotp: add SF_BROADCAST support for 
functional addressing")

which was introduced in 5.11

Thanks for taking care!

Best,
Oliver

On 14.05.21 01:52, Norbert Slusarek wrote:
> As Salvatore already mentioned, the assigned CVE ID is CVE-2021-32606.
> The exploitation details are published in an article available on github
> via this link:
> https://git.io/JsYYB 
> <https://deref-gmx.net/mail/client/ulc_0Gq1TD4/dereferrer/?redirectUrl=https%3A%2F%2Fgit.io%2FJsYYB>
> 
> Regards,
> Norbert Slusarek
