X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Friday" "27" "August" "2021" "13:51:16" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "57" "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 27   57/1647  " thread-indent "\"Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16188 invoked by uid 550); 27 Aug 2021 08:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28187 invoked from network); 27 Aug 2021 05:51:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=WeNqM/zzmSpNmp3RIdDs3VnJYipag2WztuQqiYkvtU4=;
        b=E/3xzEGLYWqHSJSDwqiZYGdJuRQhDMldhmdf92Y7t5Rm/LYBwSB/lcTxRWSZeCwOUy
         ghSar6LeoAywpLByc/zHTFZKUlAmBY6MV3Bei3UfvjxpAvo9Pq+bD+gN7TcYnAuyVe83
         FSPbKNc7L2heU5ZStFp0ydG6j6t72+Hlb3/DQvdLtfHAN2BxPNqdFFBHNq3NiFRHRncr
         OEa51vo8vtzo513SyYcGTiZJ1fjX4OA7qWjH1pRborSWgrkaJI8MxcE5d6y1Av4Jtj+r
         YlknAo4XoDIBViSdf5rAk48hr9PFrRXSSxHCrwP8rmi3sHKth/vtG50kjTRHK6qfrv0m
         Nl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=WeNqM/zzmSpNmp3RIdDs3VnJYipag2WztuQqiYkvtU4=;
        b=TYycxJcC5HXxqkUBFGRwfmTa98oRWAmeiCMde8m7hyecqRbKhvYYFjI8Irv/6b8n35
         qjazmUpHMOIpEMGlyr0zYnaZK35c8/qs/FRd89InyGaSFzhofCkEZs0GeczD1P/LTYhO
         xfdNRsP+l9347nz1iK8/BO6KoSjhf58gFsUQMim+dj6LWnRbx5QBrmqcchOUDbu1fG9M
         y2UOr+ylXGTllRYDgIvXGNEoux1UcPaEmO7K+rMT99oGFuffbLUMfqE88Rb/VH94M6UH
         YWcaF1YVsvzRfg+xAEpZ+C0BOF4Ly87Pfeh7tEc3/afyfdn06Doyqfm2xU96o1TM9Wwr
         Xosg==
X-Gm-Message-State: AOAM532eWG7N+YuEv8znmbWPA+2TEAeBPLZXdPUZMKEarTnqfzFBUnZp
	P4BXdomo9M1ql+kMGrU+kVOw05Ok4M0fSIJ5b1BP6IPMa1Cb/g==
X-Google-Smtp-Source: ABdhPJxxBeL0CdsDm+yCaYE7HTtoICQ5w6beZl5qDmlv/P0vw+e38w2gKxtdapEsZqQCiXxvFqs7bNrlAwvqn4HX9TQ=
X-Received: by 2002:a25:a241:: with SMTP id b59mr3087288ybi.522.1630043486738;
 Thu, 26 Aug 2021 22:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
In-Reply-To: <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Fri, 27 Aug 2021 13:51:16 +0800
Message-ID: <CAFcO6XOfkH52NQbQj+e4U+TQ=EZizZ-YQbYygS9Mpgwsw040iA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: qrtr: another out-of-bound Read in
 qrtr_endpoint_post in net/qrtr/qrtr.c

The patch is available upstream.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7e78c597c3ebfd0cb329aa09a838734147e4f117

Regards,
 butt3rflyh4ck.


On Wed, Aug 25, 2021 at 10:40 AM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi, There was another out-of-bound read bug in qrtr_endpoint_post in
> net/qrtr/qrtr.c in 5.14.0-rc6+ and reproduced it.
>
> This check in  qrtr_endpoint_post was incomplete, did not consider size is 0:
> ```
> if (len != ALIGN(size, 4) + hdrlen)
>                 goto err;
> ```
> if size from qrtr_hdr is 0, the result of ALIGN(size, 4) will be 0,
> In case of len == hdrlen and size == 0 in header this check won't fail and
> ```
>  if (cb->type == QRTR_TYPE_NEW_SERVER) { /* Remote node endpoint can
> bridge other distant nodes */
>              const struct qrtr_ctrl_pkt *pkt = data + hdrlen;
>              qrtr_node_assign(node, le32_to_cpu(pkt->server.node));
>  }
> ```
> will also read out of bound from data, which is hdrlen allocated block.
>
>
> #analyze and some details
> https://lists.openwall.net/netdev/2021/08/17/124
>
> #patch
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=7e78c597c3eb
> now not available upstream.
>
> #Timeline
> *2021/8/17 - Vulnerability reported to netdev@vger.kernel.org.
> *2021/8/20 - Vulnerability confirmed and patched.
> *2021/8/23 - Vulnerability reported to secalert@redhat.com.
> *2021/8/25 - Opened on oss-security@lists.openwall.com.
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
