X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Tuesday" "23" "July" "2019" "10:08:17" "-0700" "Linus Torvalds" "torvalds@linux-foundation.org" "<CAHk-=wggoL7jRHTVxm=XLhtGwCwQ3On=GmqZ01OZpN7JU_072Q@mail.gmail.com>" "18" "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil "7" "2019072317:08:17" "[oss-security] Re: stack buffer overflow in fbdev" (number mark "U       torvalds@lin Jul 23   18/709   " thread-indent "\"[oss-security] Re: stack buffer overflow in fbdev\"\n") "<20190719140343.GA12952@thinkstation>" ("<20190719140343.GA12952@thinkstation>") nil nil nil nil nil nil nil "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22420 invoked by uid 550); 23 Jul 2019 17:21:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5963 invoked from network); 23 Jul 2019 17:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NebuRFr24HEGRpx0ThYSzxFLpxKKUyJyRglAw8NIbx0=;
        b=C1DG878MF0k5V3Ts/Ls/0UlmW270t8FMRCg8T5LSe+d6+js1M/zyDLW2ughab8sv8a
         zGwPjo9TGsXgmul9TmMFHKGcvFM+FDPdGB0NMet+rWGqAz4GdNXHbzKQ2sAehIbH+asL
         ajqbOrXAGz3qvJ5Qi/fREB/W1TirTl4+G8f4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NebuRFr24HEGRpx0ThYSzxFLpxKKUyJyRglAw8NIbx0=;
        b=YSjht9NmAXpup2XHYQ8zKfkmm8HSxGtdFY6og2fbRv4pBavDtJC2SKVVcKGQmIl6/I
         KWRbpFjYuhl1L9BF4ljiE9I2lV+5ivOQRCTq0tz+QRezBs/fuP6ppSh1BSRA0AM59p4B
         fazPxUpVlIkzhmahzbBnx37sz7yOSIINfFAfq9mK3t6LXd0s+78yRso3NNNzezZLCKIq
         V+U7/r2X4qB2Hfeksjqvfg/BFrEYsCIrlXusoS8upzsyySPzMbD2QmKzfYlWspQ+uW9V
         /o1lC5rfYtboByxML66sCKOhuXwL+03d1aFIZqWl2qOIxu9Q0yTBr2mzyeFA/2olpGmn
         FfZQ==
X-Gm-Message-State: APjAAAViYy2CZiZ6IzyKr4R4KxJKiaui/0PGAGYodVd4HrKCw3OqtopP
	tXiWoj/Gn8jWp7E05G9mfbvRp2vJTIY=
X-Google-Smtp-Source: APXvYqw/mRebeZv3kElgGAgdHiMO6szbeh4IO7vJuaH7cdOSb5uvGMUUxUXOeFoEf/iA+OK4t/igFg==
X-Received: by 2002:ac2:5938:: with SMTP id v24mr18492853lfi.161.1563901715284;
        Tue, 23 Jul 2019 10:08:35 -0700 (PDT)
X-Received: by 2002:a2e:9b83:: with SMTP id z3mr12666514lji.84.1563901713950;
 Tue, 23 Jul 2019 10:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190719140343.GA12952@thinkstation>
In-Reply-To: <20190719140343.GA12952@thinkstation>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 23 Jul 2019 10:08:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=wggoL7jRHTVxm=XLhtGwCwQ3On=GmqZ01OZpN7JU_072Q@mail.gmail.com>
Message-ID: <CAHk-=wggoL7jRHTVxm=XLhtGwCwQ3On=GmqZ01OZpN7JU_072Q@mail.gmail.com>
To: Tavis Ormandy <taviso@gmail.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: stack buffer overflow in fbdev

On Sat, Jul 20, 2019 at 5:35 PM Tavis Ormandy <taviso@gmail.com> wrote:
>
> There is enough space to have 52 1-byte length values, which makes svd_n
> 52, then make the final value length 0x1f (the maximum), which makes
> svd_n 83 and overflows the 64 byte stack buffer svd[] with controlled
> data.
>
> This requires a malicious monitor / projector / etc, so pretty low impact.

Ok, so I went back all the way to 3.16, and in 4.4 and earlier the
only user of fb_edid_add_monspecs() was that SH-Mobile SoCs driver
that got removed for no use.

So I think we can ignore this even for stable kernels, and I'll get
the pull request that removes the function entirely some time in the
future.

             Linus
