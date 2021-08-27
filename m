X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2022" "Friday" "27" "August" "2021" "16:09:34" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "72" "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 27   72/2022  " thread-indent "\"Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19952 invoked by uid 550); 27 Aug 2021 08:13:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15644 invoked from network); 27 Aug 2021 08:09:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Q3NhYJv9uMFUzYtNPnYMO0vxQDGbVI0EDXcNEPVaQ64=;
        b=Pt5vz/izTDjASOPjV6/H02EBVSg8xrE28IY9ihb5/7pWKVY63jzU1qguKtwiz4i82w
         WV0MS4Fo2MwnPjOE/R7ptnC/mBt3TByo6sydgzCpN3F3tcCh0SunD3gLO0hDg/H21Otj
         LzLvYystybLK/KIRFa7VLR436y/f5l5etnWwKjOMrHyFXkW8XCqOmRzwNeIM/yjxn0Ag
         wt0e3fZeFdw/uCgiBByMcr5D8xTzhuuHuKEqvFAxjNcfzY4tV6a6a4Vc9JWJR0ldd506
         M6xhRVTt6iizLB9xu5wTzS0oir8fexB7w1L3QoX5uRFkaS9whbrh6zbviMW3AwJk17nZ
         mqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Q3NhYJv9uMFUzYtNPnYMO0vxQDGbVI0EDXcNEPVaQ64=;
        b=bjbIRzZhWzztg86wt1ASsv03riGBAldephtPEohgISbtZ6PNwgI/IS3gpgL3a25V2u
         mMieejjEELzwVYQ3by4KpfVBYj1DBvuXX7aIfIpfg3Nwcaa8JACUdFSgaE8HtvkBjnkO
         bYEO2L0oj6YN2fc1a3pyCsJXppJ8qEXwoQq3ysjjmUEtNluyCYhZxvzoCEfNOkJb7bEF
         aXnLT//PCeAjvT06QCh+hQMB0LDRtYIwirPpXzdvlDIh/8ZWX+VBEOeZ7SI9mI57H6qL
         +Lj4cAeeRJKnHWujIVb6V8TAx3hP7k1NYQm+FI7ckdS5Nf+h3Db7Db9rlbn+Ku97gIap
         uCvQ==
X-Gm-Message-State: AOAM532wBoJjuWrwO/Q7YMqUbPtN88JnwkjfvivKlRethD2m43MIA2K2
	7DgMjm9N18ViHmfTPwFRAO5dc0yUfSvZ5RPnxv3dg8EY3tNPL2be
X-Google-Smtp-Source: ABdhPJznAZUkZa2BJIJCmTl506gWtUbPI+pAT8A6JyDfHkzoHCvuiPLGdHcdrZC35ieKjXnNx/DBQPAPh6tb8VF0/D8=
X-Received: by 2002:a05:6902:513:: with SMTP id x19mr3761340ybs.90.1630051786880;
 Fri, 27 Aug 2021 01:09:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
 <CAFcO6XOfkH52NQbQj+e4U+TQ=EZizZ-YQbYygS9Mpgwsw040iA@mail.gmail.com>
In-Reply-To: <CAFcO6XOfkH52NQbQj+e4U+TQ=EZizZ-YQbYygS9Mpgwsw040iA@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Fri, 27 Aug 2021 16:09:34 +0800
Message-ID: <CAFcO6XO5QjES9w1CCJ9Ypt4bVEMkzQbv1HcioeaUKgj8Yj4NkA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in
 qrtr_endpoint_post in net/qrtr/qrtr.c

Hi, Red Hat has assigned CVE-2021-3743 to this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3743

Regards,
   butt3rflyh4ck.

On Fri, Aug 27, 2021 at 1:51 PM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> The patch is available upstream.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7e78c597c3ebfd0cb329aa09a838734147e4f117
>
> Regards,
>  butt3rflyh4ck.
>
>
> On Wed, Aug 25, 2021 at 10:40 AM butt3rflyh4ck
> <butterflyhuangxx@gmail.com> wrote:
> >
> > Hi, There was another out-of-bound read bug in qrtr_endpoint_post in
> > net/qrtr/qrtr.c in 5.14.0-rc6+ and reproduced it.
> >
> > This check in  qrtr_endpoint_post was incomplete, did not consider size is 0:
> > ```
> > if (len != ALIGN(size, 4) + hdrlen)
> >                 goto err;
> > ```
> > if size from qrtr_hdr is 0, the result of ALIGN(size, 4) will be 0,
> > In case of len == hdrlen and size == 0 in header this check won't fail and
> > ```
> >  if (cb->type == QRTR_TYPE_NEW_SERVER) { /* Remote node endpoint can
> > bridge other distant nodes */
> >              const struct qrtr_ctrl_pkt *pkt = data + hdrlen;
> >              qrtr_node_assign(node, le32_to_cpu(pkt->server.node));
> >  }
> > ```
> > will also read out of bound from data, which is hdrlen allocated block.
> >
> >
> > #analyze and some details
> > https://lists.openwall.net/netdev/2021/08/17/124
> >
> > #patch
> > https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=7e78c597c3eb
> > now not available upstream.
> >
> > #Timeline
> > *2021/8/17 - Vulnerability reported to netdev@vger.kernel.org.
> > *2021/8/20 - Vulnerability confirmed and patched.
> > *2021/8/23 - Vulnerability reported to secalert@redhat.com.
> > *2021/8/25 - Opened on oss-security@lists.openwall.com.
> >
> > #Credit
> > Active Defense Lab of Venustech.
> >
> >
> > Regards,
> >  butt3rflyh4ck.
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
