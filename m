X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2085" "Wednesday" "1" "September" "2021" "14:38:33" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "75" "Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c" nil nil nil "9" nil nil (number mark "U       butterflyhua Sep  1   75/2085  " thread-indent "\"Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23596 invoked by uid 550); 1 Sep 2021 09:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1663 invoked from network); 1 Sep 2021 06:38:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=QbklDYyyFBiTaCm2qLTeayTl+eX8obqzl9DQgqgAUlc=;
        b=JL3MKdmxYh5RaWFYDR51P/6bE79wQtTPspKGTcJoUlb/F/mYvyoUf63SZVSiJkqg4V
         6u/J40m0ue4SDri4sJX+Qp61H4OFNiOYQeE2SEdzRUAS0yNtdTceyW3HcMi4ydd1aV3g
         1AooJmHTEeaKgkz/gyPDmh5dhPl6ZoAnxJzNjLurYr5EcRkWv1ijIvcHAv7KSVafbmIQ
         BH9WY8Juehb+A98IEq4LQVFGUBzHRy5QzvoOojEQWHP9QDxnqeQzjzUoLy+N6Y5sLNbI
         Qg9kuIpD/dc4o04PoMdqcCUB63WtvWlQ4ODEmp7petc067nmAbEm3j1GaX2Y6kfDw9ti
         +lcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=QbklDYyyFBiTaCm2qLTeayTl+eX8obqzl9DQgqgAUlc=;
        b=uO3uPHyNmVbsWUxHHoK+d0MsaoIyOpWdXBS19NUefSDsBT6H6Tzh+ntZREZdoX+YH4
         fPID/WrpGnJOjG9/TKH0YJ1r8CZK1KHDAc28ByYRFWhVUNOvq40iweCJDu9kR9K7z8ya
         eWwmEmbCXqkslHZTWleh5AVi+67pgQO5mFAaxWKeRQaMw9zZFg3pgSZ/BvyisJgKNjq2
         NI4c8wTCim7iV3xVyi6+9HT7AMWh83FDNtManFxMF6bpLW1aPmYn4GPwoAaPuUZrk9wd
         niTqhw9outkMQhAmjUsjPN5orE6fT7uAYrZQY/0X5inkpvJWifY1MRb9Hu4t4FIebPuf
         3OCg==
X-Gm-Message-State: AOAM5329ATuaHwfCKAuoZ9XMDHf3d+wd5kOXfdZJYxNzSObAtcj5JLjD
	U8o38tRxHqp2SxyjcCQXvffM2c5zm3alBX9owP5ISFoSNhhpgJQo
X-Google-Smtp-Source: ABdhPJxdqzI4jQZX30FydqCzq5l2Ug4NZD3+E0fvUqQr1TiA5dpJybaMvE8fhhtxUofa2IfJQtlOCN911QQT9a0Shr4=
X-Received: by 2002:a25:e70a:: with SMTP id e10mr33789480ybh.302.1630478323935;
 Tue, 31 Aug 2021 23:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XP=t-BCX=NP=B6qH5WVQ1jc=pOS24d0d=6MS2dm66A_mQ@mail.gmail.com>
 <CAFcO6XNHPFyFvFUJhPVQ+YHLZw=fnxGoig+ZjWjv7rXZcxmX2g@mail.gmail.com>
In-Reply-To: <CAFcO6XNHPFyFvFUJhPVQ+YHLZw=fnxGoig+ZjWjv7rXZcxmX2g@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Wed, 1 Sep 2021 14:38:33 +0800
Message-ID: <CAFcO6XM70_Zwo6JuhkH53DCtRmWSTXc616gi4sfuwOyxPAAvzA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug
 in btrfs_rm_device in fs/btrfs/volumes.c

The patch for this issue is available upstream.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3De4571b8c5e9ffa1e85c0c671995bd4dcc5c75091


Regards,
 butt3rflyh4ck.

On Thu, Aug 26, 2021 at 5:36 PM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi, RedHat has assigned  CVE-2021-3739   to this issue.
>
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-3739.
>
> Please track the below link for more information.
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1997958
>
> Regards,
>   butt3rflyh4ck.
>
>
>
> On Wed, Aug 25, 2021 at 10:49 AM butt3rflyh4ck
> <butterflyhuangxx@gmail.com> wrote:
> >
> > Hello, there is a null pointer dereference bug in the btrfs_rm_device
> > function in fs/btrfs/volumes.c in linux-5.14.0-rc4+ and reproduce too.
> > Fortunately, triggering the bug requires =E2=80=98CAP_SYS_ADMIN=E2=80=
=99.
> >
> > #Root Cause
> > When a user invokes a BTRFS_IOC_RM_DEV_V2 ioctl to remove a non-exist
> > volume device,
> > it would call btrfs_ioctl_rm_dev_v2 function to implement. And
> > btrfs_ioctl_rm_dev_v2 would call btrfs_rm_device,
> > if the id of the volume device is illegal, it would trigger a
> > null-ptr-deref bug to cause DoS.
> >
> > # Analyse
> > https://lore.kernel.org/linux-btrfs/CAFcO6XO5TC5sEo-C9JGC75JkNAzkOSSLA3=
a=3DbwQqXFFbRTZ7Gw@mail.gmail.com/T/#md4b850f33616b7364f86e6fed144abc925f36=
69c
> >
> > #Fix
> > the patch for this issue, not available upstream now.
> > https://lore.kernel.org/linux-btrfs/20210806102415.304717-1-wqu@suse.co=
m/T/#u
> >
> >
> > #Timeline
> > *2021/8/6 - Vulnerability reported to maintainer and CC to
> > linux-btrfs@vger.kernel.org.
> > *2021/8/6 - Vulnerability confirmed and patched.
> > *2021/8/10 - Vulnerability reported to secalert@redhat.com.
> > *2021/8/25 - Opened on oss-security@lists.openwall.com.
> >
> > #Credit
> > the issue is reported by Active Defense Lab of Venustech.
> >
> > Regards,
> >  butt3rflyh4ck.
> > --
> > Active Defense Lab of Venustech
>
>
>
> --
> Active Defense Lab of Venustech



--=20
Active Defense Lab of Venustech
