Received: (qmail 27658 invoked by uid 550); 17 May 2023 14:23:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9950 invoked from network); 17 May 2023 14:02:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684332162; x=1686924162;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8r2Yk23ACXg7wyrtw/a0qmuZR2jBBq7rlohI2RilUyc=;
        b=QWmMUk3EpNqYAlfDhKJPAD2cyqT94EwR2pNGCqCphxsvJJJjW7+DeOE5Qo8grcuo+u
         cGSzB/9HlmlsHt7Np8EQXoemzx9+Ov23tYtsoAON0JFh8lQGp15r5hqnQiTTp1a+wwGz
         J/VdfV2E5cezrSSevttVjIZkObuMGoo/436W4L0nyxIYBUHrlH9NnHNjB80E7dRR5X4B
         mYfT01XZpzGQwtj9/5jFjyXD3ff/nQvEWwuSfPlqpmMgWp4wZCbVhA+QBrhLaBm/E/3G
         zu60BPkfPFXKl458hk92mQcKPbw4POQuyNAPJU45dzNAomlBMoX2h+Boew17DmbUBMVM
         DnKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684332162; x=1686924162;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8r2Yk23ACXg7wyrtw/a0qmuZR2jBBq7rlohI2RilUyc=;
        b=ZkuzyMl8tgyhUXyi1ZCzEbyZUv3hJmC/ATcBjMGchEFPyEK+2Wh7xlF9DKLKMnWUDy
         3i0EXM6ZUkGop8ODm8VmYMw+O317uxXz6DHBbfDpxe9SZICSSzMU9Y+BI4CpBwMHqJMD
         XhEH41BiYZ2Sy+8eS2JQHsbw1jf6k/cxehT2xarMVytDodDv1NYEH4Vcqu8we3HOuw44
         xF31lSHKgGMLKcMe5I0XoL7+pmMH7GVN8Aern5w9QD/N4xLd0MtjhbiKLhnhMTjdYIqe
         R8hz/JuZO0AyHj0lI5ppCcouDBrF3WvI8E41mjOAoEUXcHUaqenxDfZNyJRT0X+gS4tC
         fbQg==
X-Gm-Message-State: AC+VfDxghw20H0ehmtGNLVGYFLzHrKRxuvMFJv9sV98QSGnRpSZcIC+I
	64N41061v4Uv3EqNfoZM3MfKS5y5fYu+pBz+DYSaTivAwkI=
X-Google-Smtp-Source: ACHHUZ5Uuc1vZXWHAgTXh966aCnfhToFKT3t6FNM+LJaRk2oEWwx+348BZf33n7hzDGSrEWYTiduTFEO0PjK6yu5G0M=
X-Received: by 2002:a05:6870:7385:b0:18f:6f:c6f5 with SMTP id
 z5-20020a056870738500b0018f006fc6f5mr14145357oam.42.1684332162056; Wed, 17
 May 2023 07:02:42 -0700 (PDT)
MIME-Version: 1.0
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 17 May 2023 10:02:31 -0400
Message-ID: <CAH8yC8kBFkWL1MRGv+z1wJ4Vj2KOmuK1xm63XGgQMJW+OB=Q9Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] IPv6 and Route of Death

Hi Everyone,

This seems to have been dropped as a 0-day. I have not seen a CVE
assigned to it.

IPv6 and Route of Death:

  * https://www.reddit.com/r/linux/comments/13jfehf/linux_ipv6_route_of_death_0day_no_patch/
  * https://news.ycombinator.com/item?id=35950379

I _think_ this is the original writeup:

  * https://www.interruptlabs.co.uk//articles/linux-ipv6-route-of-death

Jeff
