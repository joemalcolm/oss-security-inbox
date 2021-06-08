X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1549" "Tuesday" "8" "June" "2021" "11:02:12" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "61" "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "6" nil nil (number mark "U       butterflyhua Jun  8   61/1549  " thread-indent "\"Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19864 invoked by uid 550); 8 Jun 2021 11:10:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13583 invoked from network); 8 Jun 2021 03:02:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=wYhKYDgEUtnXXpSoUgP6q/zoNwhfWgCxIsc2YCaf15s=;
        b=bKQrxpM1CiuqIyFqEB0r7sZlvk1wqAz0Z+Q25n2AkmRyvPfxbqXhsh0vcK5aPdLTTN
         QgiC4XCh715pFM7hpGKpeuYvdXRHdzfQXE0XYbGL30vrideJyebR2dE1W0FgSCj5jpNj
         7TTmeDRrrqtO3PjgzUhQ6TEiNreXNuLmsQHt5NG+/78B1LgmTnXucmQuebZ6WFUwrQXx
         10hMACn9MgTafgWFZ/gUworS5sHkQlf7Ucgixx3yJCrdYmmBpkf4tOIaK7hi7p+n4XLq
         wWQbyzgoxsyJ6QCyE+WS3WWo+2EhFTlyySlJp2xOpcj9q8UOMTLEREMZxOT6oiNYly6W
         ah1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=wYhKYDgEUtnXXpSoUgP6q/zoNwhfWgCxIsc2YCaf15s=;
        b=HygTMeDrFi7lbf+GORCSVKJKDif1S4x3LhGBSMKBV8SDjNLBSQt1p5U87Hub7ItKjz
         zD1hpfczjeYu50RzIewzDcYQK9r+GzcifBwLC03mwi4hfCm7TH/Ru75LgzNl251+0G5D
         PWKW+j0ZoeDZ1+8kH2Uf7wOP1h+r9g7m5ekY0t9RQFZZckPMnS7OoNjAZLQFeP0i4ZWz
         Pf/uR7TU/vX7nXA18x5C3yT1se6kLIqySa+d+WTFSHOn6AgyTTP4SRfG7f3Jn2LGnl4q
         UMNlpT3C737QLgHMiyzMPRanKPsXbKWLGUUNEu6CiqgBFCZJHpqDf1JUDQ6kD0he+5X6
         vzJQ==
X-Gm-Message-State: AOAM532LMOCsHXorp9B53fzJwWSiCE0InJMZawasyT1mmm1hcZuighgT
	NkZHvNH78z4o6q8fuLRT9cynY4mR885R7jETADyL0F5OIsqGUA==
X-Google-Smtp-Source: ABdhPJxkR1WJZ6dXiiQqR/cS97bpT+5mvpm4zPmBc/Lg+r5TywKOkxAk19Ei+k4U1SoqTv8zHfdTTR/8c0I0rRoqthc=
X-Received: by 2002:a25:e741:: with SMTP id e62mr29495996ybh.484.1623121343534;
 Mon, 07 Jun 2021 20:02:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
 <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
In-Reply-To: <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 8 Jun 2021 11:02:12 +0800
Message-ID: <CAFcO6XOoDp3LDitRWWg0O7uXtL0c7+zosg3_+qwXeB=PYaezxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname

Hi, RedHat has assigned CVE-2021-3587 to this issue.


Regards,
 butt3rflyh4ck.


On Sun, Jun 6, 2021 at 11:40 PM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi, the patch for this issue in upstream:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4ac06a1e013cf5fdd963317ffd3b968560f33bba
>
> Regards,
>  butt3rflyh4ck.
>
>
> On Tue, Jun 1, 2021 at 3:37 PM butt3rflyh4ck <butterflyhuangxx@gmail.com> wrote:
> >
> >  Hi, there was a null pointer dereference in llcp_sock_getname in
> > net/nfc/llcp_sock.c and reproduced it in linux-5.13.0-rc2. An
> > unprivileged user can trigger this bug and cause denial of service.
> >
> > #Root Cause
> > After creating an nfc socket, bind the address by calling bind(), if
> > LLCP_SAP_MAX was used as SAP, it cause the bind() failed and there
> > would set llcp_sock->service_name  as NULL.
> >
> > Although bind() returns an error here, it does not affect calling
> > other socket functions. sock_getname() would invoke
> > llcp_sock_getname(), llcp_sock_getname copied service  name from
> > llcp_sock->service_name by memcpy but llcp_sock->service_name is NULL.
> >
> > #Fix
> > the patch for this issue:
> > https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=4ac06a1e013c
> >
> > #CVE
> > CVE not assigned.
> >
> > #Credits
> > Active Defense Lab of Venustech.
> >
> >
> >
> > Regards,
> >    butt3rflyh4ck.
> >
> > --
> > Active Defense Lab of Venustech
>
>
>
> --
> Active Defense Lab of Venustech



--
Active Defense Lab of Venustech
