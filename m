X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1898" "Tuesday" "8" "January" "2019" "19:34:24" "+0400" "Entropy Moe" "3ntr0py1337@gmail.com" "<CALzBtjLafJkFNKBEw4iH8D3fc_eMKV5bqt1F4n_7Edf=Lj9NMw@mail.gmail.com>" "56" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." nil nil nil "1" "2019010815:34:24" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." (number mark "U       3ntr0py1337@ Jan  8   56/1898  " thread-indent "\"[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.\"\n") "<20190108152627.GA19359@kroah.com>" ("<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>" "<20190108152627.GA19359@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18195 invoked by uid 550); 8 Jan 2019 16:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7734 invoked from network); 8 Jan 2019 15:34:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rChbqzLd09+Bsq7zmHWekFGIvNzZVzYAPtU3h8gjkXI=;
        b=N7JyPppV69YNs3jxqmxNQ7OTreNSRF6lRsYz21C1l7x9yvf9pQBMvUGWoxfuWu5gHI
         qrvj0wB2h99d/qM4oeaZQw3Y8acHFXR5mfsTxGSact6eNVQuL7EZziI0uQPa+dQ6br12
         6YOrVunhGK2KkRl2AX1Dfo3Jmre9l+Lie6V17ZL0/h5a293y86etQ4BAg8AL08PtTcc+
         EWY0CDdNTnqhWfSbNwNpCp14lrzV0iRFM2QcECK5ggA9Sm4AZ/ng3Am/axXoCaa3tMva
         bFdlCVG2OmjXPSeY86hZJ87IowJgypps/zfhfonSUsTqINaE+UxxZqlSbYLmA41rLqwG
         VuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rChbqzLd09+Bsq7zmHWekFGIvNzZVzYAPtU3h8gjkXI=;
        b=HIbSmI6P/6qaUaE0XAwlZfYmn+WLAd0Q8BBmsaFVC5HgLP1wwjBQFg4NrR8JL+Wt86
         jfC5KHCbEIGWBbdYkgb/wf0KmShHv/JYS/uS+nqD/9/L6XXloNGtdw7hsuFzzJz9L8Mm
         wP5qVuT6IbsOtfYA1BEzE2ODT88NWyRri/pAC0Y35+KooCl72nHtX1KhkApP6scPjtpH
         cMRI6i9Sdfvyvql2Ip5JSmCeWRw6BQvXBIQWzdB5WjIE+cu7pH13ERDMPvWiuBcXLi8+
         FbdxPh9OdRmBodA8jSIQV1aIieGC4rgza9JaGGVGxNDqU8KmyHgEJOhnGNNUsdPqhd/l
         WZKA==
X-Gm-Message-State: AJcUukepDcIDFQnN3EPuWN68S5iCjlBYvilQ+UhBtIltFvctSG1aVgrA
	eyd2VPcuqB8d+g5Q/5YGCbhimx5ufJVh3Tu/+tuzcswip78=
X-Google-Smtp-Source: ALg8bN44vPyrzLhTVEb4SfmHlTvRjYFdM5n1tI9jfAg4pwO08E1UiLzg5SNDMoSa/1M6iyEuJy9bJmSrqkW7eJlUsns=
X-Received: by 2002:a1f:1a05:: with SMTP id a5mr815134vka.9.1546961674809;
 Tue, 08 Jan 2019 07:34:34 -0800 (PST)
MIME-Version: 1.0
References: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>
 <20190108152627.GA19359@kroah.com>
In-Reply-To: <20190108152627.GA19359@kroah.com>
From: Entropy Moe <3ntr0py1337@gmail.com>
Date: Tue, 8 Jan 2019 19:34:24 +0400
Message-ID: <CALzBtjLafJkFNKBEw4iH8D3fc_eMKV5bqt1F4n_7Edf=Lj9NMw@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: security@kernel.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001bb8d3057ef41581"
Subject: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.

--0000000000001bb8d3057ef41581
Content-Type: text/plain; charset="UTF-8"

Hello Greg,
thank you for reply,
I have have them tested on the new kernel 5

On Tue, Jan 8, 2019 at 7:26 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Jan 08, 2019 at 07:08:14PM +0400, Entropy Moe wrote:
> > Hello,
> > I wanted to let you know that there seem to be a deadlock vulnerability
> on
> > the linux kernel 4.20.
> > I am attaching the result report from syzkaller which also got the c code
> > for replication.
> >
> > thank you,
>
> > Syzkaller hit 'possible deadlock in console_unlock' bug.
> >
> > RBP: 00000000006cb018 R08: 0000000000000001 R09: 0000000000000031
> > R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000004
> > R13: ffffffffffffffff R14: 0000000000000000 R15: 0000000000000000
> >
> > ======================================================
> > WARNING: possible circular locking dependency detected
> > 4.20.0-rc7+ #8 Not tainted
> > ------------------------------------------------------
> > syz-executor579/2028 is trying to acquire lock:
> > 00000000e478796d (console_owner){-.-.}, at: log_next
> kernel/printk/printk.c:489 [inline]
> > 00000000e478796d (console_owner){-.-.}, at: console_unlock+0x33d/0xd30
> kernel/printk/printk.c:2401
> >
> > but task is already holding lock:
> > 0000000030388923 (&(&port->lock)->rlock){-.-.}, at: pty_write+0xcd/0x1d0
> drivers/tty/pty.c:120
> >
> > which lock already depends on the new lock.
>
>
> Are you sure this is a real problem?  Can you deadlock this when
> running?
>
> Also, try 5.0-rc1, a number of tty core changes went in there to try to
> resolve these types of issues.  They have not been backported to 4.20.y
> yet as they need to get more testing.  If you could run your same test
> suite on that kernel, it would be great to find out your results.
>
> thanks,
>
> greg k-h
>

--0000000000001bb8d3057ef41581--
