X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/04/24
Message-ID: <572A42A7.90407@openwall.com>
Date: Wed, 4 May 2016 21:42:47 +0300
From: Alexander Cherepanov <ch3root@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: broken RSA keys
Content-Type: text/plain; charset=utf-8

On 05/04/2016 03:42 PM, Solar Designer wrote:
> 0x115CFF61CFECFF61BE9, where we see three 32-bit limbs satisfying:
>
> limb[1] = limb[0] + limb[2]

This just means that the number came from two-limb number with limbs 
limb_src[1] = limb[1] - limb[0] and limb_src[0] = limb[0] by multiplying 
it by 2**32 + 1. HTH.

-- 
Alexander Cherepanov
