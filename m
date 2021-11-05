X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2050" "Friday" "5" "November" "2021" "23:11:42" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "67" "Re: [oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in detach_capi_ctr in drivers/isdn/capi/kcapi.c" nil nil nil "11" nil nil (number mark "U       butterflyhua Nov  5   67/2050  " thread-indent "\"Re: [oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in detach_capi_ctr in drivers/isdn/capi/kcapi.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in detach_capi_ctr in drivers/isdn/capi/kcapi.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7821 invoked by uid 550); 5 Nov 2021 15:22:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32749 invoked from network); 5 Nov 2021 15:12:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=LrINZOqmoipaH42Q2j1iO0FW7Pq8iimvLzlFNFZn2XQ=;
        b=VE+v+HDUVw7FV4Cke3L1QJjJGyEj32V1GD2InYnbTGpWazElcyKG7hBCCijwB9k0fr
         phHdO58nudfyE4dde5q8SvGhix0CSt16FBRtKLAG0AM+1Crg+FgeHeztUmMcKiGfUU9Z
         ZNRia9x1tT7AIjoTH2/UWIMYxYoNBfsGeGMokEqBDvOv3fblxjInqjJXAdtSno69hUdL
         jt9HXLA/ztywoR+XYl+IsNZnHjsssLPFu8yMiGyhOJYmcGkG8FToc1gv/c+QXYP4+51G
         keef3mWQnSbPRkijp6teNcdBgL6YkfC2ynmEO6nbaqu3lNPT8vhWLka76nwyWpZ+4u4I
         y3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=LrINZOqmoipaH42Q2j1iO0FW7Pq8iimvLzlFNFZn2XQ=;
        b=vwYhka15nbnZjse1CrHPk4hLiWVibT0yE5iftkzBKPKPKpnRxjnoKbS5qapuHd7zSK
         W1V71X/umLCVv4j4qFofw9CfIBW0+BBzcCwkKNv+jSPhNN7rXDFL2MOs9WEgS1RJeQ5Q
         WL9cPlf2bEslPf8NABc7J/KLthKiMxyi8pdWAzgTkiBYjvChEzxrdVZufiXM+FTgWJ06
         ahAuz1eYnRY9n7nqtargNdmxGs1RmvgE90NZAV8DdBND9+nBn/tw6Ywi4DKTIhW7AvB6
         clQBpXgQXcCEKvPcEM7m5/5xl22OtmWcACJfGhowBs2RYQDjyq89qdlRruqxT8noszsD
         UjkQ==
X-Gm-Message-State: AOAM533PPkvo8X+OaUl/GRKi9jbNL6zXbpog/gQDh59QNHLQ3NCoTRj1
	RyprRZcsUVtWumqjbQYZdImStpKtprW6+oHasM9WBKFvdNLnwpM9
X-Google-Smtp-Source: ABdhPJzavkGLC+NT0LalILNMQYD4FBAxeyuhEz/ab+wZ8QbQeAjf3poxOrMCBb/KO0k5Q5zng5PTkgtTz2Ec8dYRat8=
X-Received: by 2002:a25:ad03:: with SMTP id y3mr28481828ybi.212.1636125113149;
 Fri, 05 Nov 2021 08:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XNFySfp80uRssnz5jhgndpCvmgNbSE88ttMhXdZzqcfhw@mail.gmail.com>
In-Reply-To: <CAFcO6XNFySfp80uRssnz5jhgndpCvmgNbSE88ttMhXdZzqcfhw@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Fri, 5 Nov 2021 23:11:42 +0800
Message-ID: <CAFcO6XPZGdhZ6p=iy2=HS2LcwRw30B2=dgevmrnU1hQM14qwXg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds
 in detach_capi_ctr in drivers/isdn/capi/kcapi.c

Hi, the Mitre has assigned CVE-2021-43389 to this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43389

Regards,
  butt3rflyh4ck.


On Tue, Oct 19, 2021 at 11:21 PM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi, there is an array-index-out-bounds bug in detach_capi_ctr in
> drivers/isdn/capi/kcapi.c and I reproduce it on 5.15.0-rc2+.
>
> #Root Cause
> we can call CMTPCONNADD ioctl and it would invoke
> do_cmtp_sock_ioctl(), it would call cmtp_add_connection().
> The chain of call is as follows.
> ioctl(CMTPCONNADD)
>    ->cmtp_sock_ioctl()
>          -->do_cmtp_sock_ioctl()
>             --->cmtp_add_connection()
>                 ---->kthread_run()
>                 ---->cmtp_attach_device()
> the function would add a cmtp session to a controller.
>
> The cmtp_add_connection() would add a cmtp session to a controller
> and run a kernel thread to process cmtp.
>
>         __module_get(THIS_MODULE);
>         session->task = kthread_run(cmtp_session, session, "kcmtpd_ctr_%d",
>                                                                 session->num);
>
> During this process, the kernel thread would call detach_capi_ctr()
> to detach a register controller. if the controller
> was not attached yet, detach_capi_ctr() would
> trigger an array-index-out-bounds bug.
>
>
> #analyze
> https://lore.kernel.org/netdev/CAFcO6XOvGQrRTaTkaJ0p3zR7y7nrAWD79r48=L_BbOyrK9X-vA@mail.gmail.com/
>
> #patch
> The patch is available upstream now.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1f3e2e97c003f80c4b087092b225c8787ff91e4d
>
> #Timeline
> *2021/9/24 - Vulnerability reported to netdev@vger.kernel.org.
> *2021/9/24 - Vulnerability confirmed.
> *2021/10/8 - Vulnerability patched.
> *2021/10/9 - Vulnerability reported to secalert@redhat.com and confirmed
> *2021/10/19 - Opened on oss-security@lists.openwall.com.
>
> #Credit
> Active Defense Lab of Venustech.
>
>
> Regards,
>  butt3rflyh4ck.
>
> --
> Active Defense Lab of Venustech



--
Active Defense Lab of Venustech
