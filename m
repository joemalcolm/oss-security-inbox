X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Wednesday" "8" "September" "2021" "13:15:34" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "48" "Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c" nil nil nil "9" nil nil (number mark "U       rkeshri@redh Sep  8   48/1452  " thread-indent "\"Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9589 invoked by uid 550); 8 Sep 2021 09:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7450 invoked from network); 8 Sep 2021 07:46:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631087149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vEiTkOwi9+TvNiyLi54G/fs8FThlgMncnQ9pN1TM/fo=;
	b=HKet0+1+DAUG4zJrWBX7Z+0iZtIsH0EDGxL1ubY4iBuqgEhGKbBzbMH/bZPelqYCdooV0P
	uTHu/cxjCBEDYcSOs46qu2H6G7wqgNOADEzalQBi6HbHdM7Uj6LAyZDlEheW9NcrjoolID
	s7BXk4H4hDXi3OE9lzAsJOskyS2NAC4=
X-MC-Unique: SFkF8MFHNpK2Mheg_YT00A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=vEiTkOwi9+TvNiyLi54G/fs8FThlgMncnQ9pN1TM/fo=;
        b=gj5ZcAz/IMvE1I1lrviInBoYSbykiqCg9xeDodrzbpE75sOqyp9j32AwX7HvY5Yysl
         9dGlI7WA7Qj1FBYGZpc/9PuMT7pB2l89HPeqt9baSusHM/BtNpnLOkQ4s/OjvzdZG2Uq
         i1syLaQtqPY40FfJsNrrIVD25UVDqzObTyTf/WxMTGObPuIGrYBcHBSadNpZ1xSATxcD
         Q6YPIU2uJ7bfLtggNH+KM6z14Ir4KaIiWjuFEGG5JNTPOlRNOIqBRgMklFk4yOsqmAaR
         RG+/+nB4Xbyxb+gUIpAxtWAiQGDaN/jpfBZPdr7iRlTfZpaxtGitSZGBXSL2vKhzzpQR
         nwJw==
X-Gm-Message-State: AOAM530fx/HvcHxwODptWS0lYlvXxXs5gn/5Tta9JCikx5AWd9n/eOcp
	8x0mJdGShZv1k/oCA7gkBG0kZmt4ztBHvL56bugJUrM1Uq7yVHZtpUDUMfG01aJ0ogEpLPgZIZ6
	hSNscsvZ9XyKysT46hFGi9Rf7LA7Q3UtB7s4wjRWtpmXK
X-Received: by 2002:a05:6512:220a:: with SMTP id h10mr1721780lfu.623.1631087145876;
        Wed, 08 Sep 2021 00:45:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+F6mD4FnYk6RkjlIIFYhbK89QezV08B0meP12GWejvUSwfsFE3N5vO4mfX2FGz+BR8neuZY+KqrtebuOb2E4=
X-Received: by 2002:a05:6512:220a:: with SMTP id h10mr1721769lfu.623.1631087145636;
 Wed, 08 Sep 2021 00:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAKx+4-qZVEvOx+zD1R0r2UzNpT8eLUe+sTp78KJHjaEun7BVPA@mail.gmail.com>
 <YTc8Gk29v6qc5ej0@kroah.com>
In-Reply-To: <YTc8Gk29v6qc5ej0@kroah.com>
From: Rohit Keshri <rkeshri@redhat.com>
Date: Wed, 8 Sep 2021 13:15:34 +0530
Message-ID: <CAKx+4-riLe6E466yDMO=_zV-ZDisOESHT82=Wofc=o5G3BDWGA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000e9ea1c05cb7711b6"
Subject: Re: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in
 route4_change() in net/sched/cls_route.c

--000000000000e9ea1c05cb7711b6
Content-Type: text/plain; charset="UTF-8"

Thank you Greg,

Correction please,  This issue was fixed in the upstream Kernel 5.6 onward
with ef299cc3fa1a9
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response


On Tue, Sep 7, 2021 at 3:47 PM Greg KH <greg@kroah.com> wrote:

> On Tue, Sep 07, 2021 at 02:09:52PM +0530, Rohit Keshri wrote:
> > Hello Team,
> >
> > A flaw was found in the "Routing decision" classifier in the Linux
> kernel's
> > Traffic Control networking subsystem in the way it handled changing of
> > classification filters, leading to a use-after-free condition. This flaw
> > allows unprivileged local users to escalate their privileges on the
> system.
> > The highest threat from this vulnerability is confidentiality, integrity,
> > as well as system availability.
> >
> > This issue was fixed in the upstream Kernel 5.10 onward with
> ef299cc3fa1a9
>
> Note, commit ef299cc3fa1a ("net_sched: cls_route: remove the right
> filter from hashtable") came out in the 5.6 kernel release, in March of
> 2020, and was also backported to all relevant stable kernel releases at
> the beginning of April, 2020:
>         4.4.218 4.9.218 4.14.175 4.19.114 5.4.29 5.5.14
>
> How did 5.10 get messed up in this, it was not released until December
> 2020?
>
> thanks,
>
> greg k-h
>
>

--000000000000e9ea1c05cb7711b6--

