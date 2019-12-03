X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["716" "Tuesday" "3" "December" "2019" "07:54:54" "+0200" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD97nkCGns=1JSAH+StSYtTaHPoF6bm5n8WXk=dKoFzN_A@mail.gmail.com>" "18" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120305:54:54" "[oss-security] virtual consoles" (number mark "        gguninski@gm Dec  3   18/716   " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191202165638.GA3235@thinkstation>" ("<20191202165638.GA3235@thinkstation>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30431 invoked by uid 550); 3 Dec 2019 10:53:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17832 invoked from network); 3 Dec 2019 05:55:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=C7GEKSPnghugHDXZlyUUSh9MmciwRNtcKTbIX8SiXeM=;
        b=DDA2zkIRcTxHOlEGKYE8rM4n4/jGsXf6KTcny7sUVlR5hatVhHNsFEWdJuoTLkU7/b
         iediQqmYuCSKec7pUcgVUJ6jxbcin9oxWIw0p5wbGMQQXIDjkZpaeyxCyF6yEwElOPCq
         I2pP4KdLvtiFUvBy4/KeKYYy11js2oUi5HUJyiX0nnsj2P/sHuTxGletMl2N5XM4zOef
         vr2iPQj1wyRnseOTTjX3KRzOZapQjVBE4uSC667rbvy7fv/fBfemKiy5fXWDeHbxPwho
         KAqBmU3MVreJDOqz30gwInAqKNQCwkpD8nRpXe5EbTkuFr7pFWvN7Cona+btm8QNMa+h
         Rwxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=C7GEKSPnghugHDXZlyUUSh9MmciwRNtcKTbIX8SiXeM=;
        b=FbAIFyahSO7tXE8Xxy/CZnp3P6IpopFRk4JWWufcnoiiWXvXW04DBz5+AmYQcpNRwc
         wTy7HSw1Q4A/gIg5WG9rufXiAIFdPY2cB8aWiyrcacCUrkOkWLtfaGjYQu4ZZsXRkowp
         9GLn/X1MRUxtJcVxfgelnhscnzkw7293cOHhGGgbSe/fK0uJOBrGVfbiGOFHwCP4G1mC
         93FriCtSCVTMm3ymG32rvxtTv68l5BpBqjwT/PBtxqq5RY4zvUxUNawRinyJBELaRd1c
         Lf+f/C51ImVjBoDRgwL4OhlV0m5XMh/liUMKJHeD60R2IJpdJPGVuVL1aRYcc0AMrJA2
         FFoA==
X-Gm-Message-State: APjAAAVdNYVEeJfPaWtbIO/JqruyrowHTZ1uE/++8SYJv351SoBhzh7H
	mo07NhOXjaI0Pp+xF/lfyXoEM1xDjWP8g/tQJuZUD59zT+E=
X-Google-Smtp-Source: APXvYqz18eZ/cV85xAtdaTAwQWrG3Zk9VFme08hNCdJ6Nc8UnGdyKKIn9ADC3H/p1oQD0ps58IX4HovVx/c2G1+u+ZE=
X-Received: by 2002:a92:d38e:: with SMTP id o14mr3310481ilo.238.1575352507218;
 Mon, 02 Dec 2019 21:55:07 -0800 (PST)
MIME-Version: 1.0
References: <20191202165638.GA3235@thinkstation>
In-Reply-To: <20191202165638.GA3235@thinkstation>
Message-ID: <CAGUWgD97nkCGns=1JSAH+StSYtTaHPoF6bm5n8WXk=dKoFzN_A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 3 Dec 2019 07:54:54 +0200
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Mon, Dec 2, 2019 at 7:13 PM Tavis Ormandy <taviso@gmail.com> wrote:
>
> Hey List, we were discussing simple screen spoofing attacks today, and
> whether we consider it a vulnerability or just social engineering. For
> example, this paper on tricks Android malware can use to trick the user
> into granting permissions to the wrong app.
>

Precedence in mobile code:

1. This exists in Android 9, I had hard time exiting fullscreen
video player
2. Mozilla fixed similar bug about 15 years ago.
3. In 2001 internet exploder was remotely vulnerable and hitting
control-alt-del was not easy:

https://www.dslreports.com/forum/r1651258-Javascript-in-IE-may-spoof-the-whole-screen
http://www.guninski.com/popspoof.html
