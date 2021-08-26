X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1825" "Thursday" "26" "August" "2021" "23:18:53" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "66" "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 26   66/1825  " thread-indent "\"Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14086 invoked by uid 550); 26 Aug 2021 15:21:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13606 invoked from network); 26 Aug 2021 15:19:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5zV7TRSdE24+hJwWL7W/Kk3PDGr7JO09KF9L0eo126U=;
        b=oVNS4MujaL8cD7lo5Zaw61m3pqP08xmwOAdvb2bLilAqqK0egEKRSSsRL2uyS8x5Mi
         33Fys8sltKZDk9HC0t4fRnEFEoJrjHx4ry9nvDT7bGMam96gV5olT71KmRH4dGU56NNR
         TIzP4FZIXoSEYqd8w+Gb68GnycVCnIblidLSUpoMIv0pCYb0rNsgLSmN5/ixW/xui7Wh
         Oqa2xUd8FnXD6DfQVmX3WvYmd3bhxJjR00BTdMRP1CHsc7F5MTjtmI7hCS/3gki2LvUe
         CkOeqGa1r+TzAY0EO8rMTOTl3IuyXtuzc++gZO3/QfM+fuimoddgP/xP+jjmPAX+TJI1
         Kdew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5zV7TRSdE24+hJwWL7W/Kk3PDGr7JO09KF9L0eo126U=;
        b=bS99zE6cTkA9q3E5+6nnGl+rb2Eo+Qun8vpWdmrhNLVfFH7Jc5qK/iiLYlv0b0yO/6
         H7poQ5g0NoaAlvqZZ2a+5qtc1ix5Uu94BJmMoHy1lDHjDJuCLCYOFlNsoh12755UgHcy
         l7nIjprE3aNDEk+DmjSdZdWadfUV/GB4SmXmwR872BQMs2paD6tEnGQO6TSFxZASxx3J
         J2Sv3ko+Ic06N+OIBYrSig9b7g/wUsLS3lcx/pstPi9bMBWJMGB60c78NLQWo31PQidG
         8dbv3hYo6+I8OJ7oDVfAScpYSc2aAxOin68pe3gRewrHrBSABGn3i//zBnBp/3ZN1ylg
         +u/A==
X-Gm-Message-State: AOAM5333eSvdJFHUySIRNvYgrI8oD6Op/Ae1o+pmyFIXMVeljazZZGdx
	sztdz4WICoyGxg/AKn3+604Rt958cfw0iMkPlzM=
X-Google-Smtp-Source: ABdhPJyuR2sMuuQF7gC4oL63AOdH3Lz9Xcp84gUWZ2sxGxgPnpCmon189V9KptMM+nT6o/VVOxCjQbsWcjlQ5m7zy7w=
X-Received: by 2002:a25:a241:: with SMTP id b59mr5690976ybi.522.1629991143046;
 Thu, 26 Aug 2021 08:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
 <66DDFEAA-E5B2-4348-B5D9-ECCE66231F44@oracle.com>
In-Reply-To: <66DDFEAA-E5B2-4348-B5D9-ECCE66231F44@oracle.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Thu, 26 Aug 2021 23:18:53 +0800
Message-ID: <CAFcO6XO9KQwwcwYrSc00j1y_xAf+wU4AN7YLSCgWOEqUAANMOQ@mail.gmail.com>
To: John Haxby <john.haxby@oracle.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in
 qrtr_endpoint_post in net/qrtr/qrtr.c

No, I didn't. I have reported to Red Hat, they said that if they
confirmed and would assign a CVE for this issue.

Regards,
  butt3rflyh4ck.

On Thu, Aug 26, 2021 at 10:41 PM John Haxby <john.haxby@oracle.com> wrote:
>
>
>
> > On 25 Aug 2021, at 03:40, butt3rflyh4ck <butterflyhuangxx@gmail.com> wrote:
> >
> > Hi, There was another out-of-bound read bug in qrtr_endpoint_post in
> > net/qrtr/qrtr.c in 5.14.0-rc6+ and reproduced it.
> >
> > This check in  qrtr_endpoint_post was incomplete, did not consider size is 0:
> > ```
> > if (len != ALIGN(size, 4) + hdrlen)
> >                goto err;
> > ```
> > if size from qrtr_hdr is 0, the result of ALIGN(size, 4) will be 0,
> > In case of len == hdrlen and size == 0 in header this check won't fail and
> > ```
> > if (cb->type == QRTR_TYPE_NEW_SERVER) { /* Remote node endpoint can
> > bridge other distant nodes */
> >             const struct qrtr_ctrl_pkt *pkt = data + hdrlen;
> >             qrtr_node_assign(node, le32_to_cpu(pkt->server.node));
> > }
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
>
> Hi,
>
> Did you ask for a CVE for this bug?
>
> jch
>
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
> > butt3rflyh4ck.
> >
> > --
> > Active Defense Lab of Venustech
>


--
Active Defense Lab of Venustech
