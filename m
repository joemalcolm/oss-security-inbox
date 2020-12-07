X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Monday" "7" "December" "2020" "19:02:02" "+0800" "- Nop" "nopitydays@gmail.com" "<CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>" "29" "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil "12" "2020120711:02:02" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" (number mark "U       nopitydays@g Dec  7   29/727   " thread-indent "\"Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2\"\n") "<76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>" ("<CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>" "<76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15425 invoked by uid 550); 7 Dec 2020 11:04:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13620 invoked from network); 7 Dec 2020 11:02:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LgyVWgRVdzU7lmmCl32my+rKOw4KIqy33r31LyMBzqw=;
        b=GN2FFZGOdR/t98/iWyxL71dYN2hBBnJS/JOrVMD+aNnxqLdzMTXiofPpf/HS+19+Gk
         OQJ7HUsANJYkuD0jfrAma66mUEzn78RKmeUgj+LIx4RlB6N3MhRzBoT4FJLQHpxODDxe
         mUPOrf7lshfe7T7poHk3SMsSCPK6tdlvigpKXsU0HOwbxrCfboH8/zs7gdkqfy2oP/bs
         F90sW0iEGRjfIKHCZTmJW2iM9nCrlg4eSbYxZnv+ol/WT5I9dGSK0z21ZLYaFDiIbS+N
         4IxrC2uZ79nHeZnLfB5dqzsCMeFutLtfWLSvQ3Fej8yfrHzdZyB3vlzlTq0TlYuRj3lm
         WZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LgyVWgRVdzU7lmmCl32my+rKOw4KIqy33r31LyMBzqw=;
        b=Quazp2f3humEK3FJXff6hVhyg7OzanEMBt1O1cGHj8ZUOtnHuHU9yFLnZKUCAX3CxR
         OQE+/cUMlw747OlV9X+Gl7aTdpES3EzBrH1ja9WVAU9mUjnd+tF/EOKH0xe3hwuAqa5v
         oeCA4F+USatyazl6/uAiimrI01v9lNiCDnBUuSMv0hp+610GVFH3kI5+EfEi87i3wHEt
         gbj8AmlcMCpreCahsKIrWe6QUmb1S1+txJ4d1T/TTg/ju5gUFY5JuYVoaj089/Y8IJsH
         sB0vfx4bsOkRlRO/8FSmgjVcLJc96gz4oK0WIDAfwI53m7YFnbqthRL6qmWttZIxqk7s
         g5fg==
X-Gm-Message-State: AOAM533LrJ0ouyzsVtSvg9c0KPtMAoA+m3iH5V71OdAuSIOOnhR+Jc82
	8cCxykE1TlG1/GE+yUG3tKEPvJBxa54nVjMzRC4=
X-Google-Smtp-Source: ABdhPJzOFggxuJllHclOvMfvCOP5bS+GMRJ70zkYrgmjuzynz5SB/3Q1LMZzHFYleXXlNLkFN+cii9/1iIAurR5e7Wg=
X-Received: by 2002:a1c:6283:: with SMTP id w125mr17683747wmb.155.1607338934634;
 Mon, 07 Dec 2020 03:02:14 -0800 (PST)
MIME-Version: 1.0
References: <CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>
 <76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>
In-Reply-To: <76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>
From: - Nop <nopitydays@gmail.com>
Date: Mon, 7 Dec 2020 19:02:02 +0800
Message-ID: <CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>
To: John Haxby <john.haxby@oracle.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000003b8c8005b5ddc26a"
Subject: Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2

--0000000000003b8c8005b5ddc26a
Content-Type: text/plain; charset="UTF-8"

Hi,

yes, we asked for a CVE in the original email sent to
linux-distros@vs.openwall.org.

Thanks,
Bodong Zhao

On Mon, Dec 7, 2020 at 6:23 PM John Haxby <john.haxby@oracle.com> wrote:

>
>
> > On 7 Dec 2020, at 02:20, Shisong Qin <qinshisong1205@gmail.com> wrote:
> >
> > Recently we found another NULL-ptr deref BUG in spk_ttyio.c in the latest
> > Linux kernel(5.9.11 is the latest at that now). In the
> > spk_ttyio_receive_buf2() function, it would dereference spk_ttyio_synth
> > without checking whether it is NULL or not, and may lead to a NULL-ptr
> > deref crash.
>
> Did you ask for a CVE for bug?
>
> jch
>

--0000000000003b8c8005b5ddc26a--
