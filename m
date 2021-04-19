X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1944" "Monday" "19" "April" "2021" "15:19:58" "+0800" "- Nop" "nopitydays@gmail.com" nil "63" "[oss-security] Re: Linux Kernel: out of bounds array access in dm-ioctl.c" nil nil nil "4" nil nil (number mark "U       nopitydays@g Apr 19   63/1944  " thread-indent "\"[oss-security] Re: Linux Kernel: out of bounds array access in dm-ioctl.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux Kernel: out of bounds array access in dm-ioctl.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30197 invoked by uid 550); 19 Apr 2021 07:25:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28046 invoked from network); 19 Apr 2021 07:20:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=G3ijUYaa91xZ3Oy2ePzU0mjN8cYOj10v89qdOn1T9g4=;
        b=DUynH4AF0PSv6WkYlrEYEgMaPtpZCr9EiqA3Kn1+79mdGirKtgK15efqAeecpkJeIW
         wDbFDS9446mQ5uJwbFpZjTXd6W1DWCRk2uTYOc+rz0ce5u5BJgti/tqg2q9qrmWenuZK
         vg8NuGvnYEYIYhtfaIB9oVRUVsrLRt5xp7/z5HjViwCGNYsdC6DwzOLrRTwmorNi2iP3
         F+IZWGMBxJpwSjsCoWJ/TLoGaICleSAZwrfkMhs1ouryIGogbFF114SlybjYvF0Z/POM
         wgPawXOtU94f4K60dtVrDys6ENDhFDwbM3lZEse5mpR7LbERvuLz0TlNIFr9c5qZ++G+
         D0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=G3ijUYaa91xZ3Oy2ePzU0mjN8cYOj10v89qdOn1T9g4=;
        b=nJeBUCXDGLXQDnVlDiwvYI+TzFDyCOWvTIids3jEn8Ty8IZL9CDTgQW2PnUgOx4eNT
         I5cVGyJts98Xoryqg9UDsQFEA1kdTaODW2nty8tc49I056lDjwfZ1Jmgkqs5Iyw3bCli
         N7LJ0zgADz5w7RyD0ZTaGT+AarRUf/QgTx48JXUHdHq5XaxORJK23mav4v48QQX5dkqp
         OHVui3E4HgO66Pahm4TIInGUlH716ji42/uchvnwJscjeMMhhngiDDYcEgveF0eKpi4G
         7Q/2IBOXITcUKG9srpaUThfF5b1XNypVogQnF+HneVNm2w7yhoO97Wa/EXTdav8BbcFl
         iBjg==
X-Gm-Message-State: AOAM533i5IFGBgc4KkL2iWCPpHFSBuyE3SPDYjWahOSPBaU8rgj7BuuH
	5jzykAJR/H7VCDuifF9bP/R+GMa5+3nsvyMPK8DTUqueCsZpwCNZ
X-Google-Smtp-Source: ABdhPJyubWimW+ZJwpZSf+XIxoeBn69zphdlR+jxq1j6yJopWHAfcPLcXw2nYrbuRteP5dxTxciFbuuAk4Z3+NehcBk=
X-Received: by 2002:a1c:7402:: with SMTP id p2mr18454951wmc.88.1618816809904;
 Mon, 19 Apr 2021 00:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-U7QC-zxn_XYLJifSm=cDmsW0_Rs+juQuoCUTw1+TQmdfpGg@mail.gmail.com>
In-Reply-To: <CA+-U7QC-zxn_XYLJifSm=cDmsW0_Rs+juQuoCUTw1+TQmdfpGg@mail.gmail.com>
From: - Nop <nopitydays@gmail.com>
Date: Mon, 19 Apr 2021 15:19:58 +0800
Message-ID: <CA+-U7QBGWLJkSvg+7g8K-Aj02Svp9e6HhSRbXYPVBp8gZUBQVA@mail.gmail.com>
To: oss-security@lists.openwall.com, John Haxby <john.haxby@oracle.com>
Content-Type: multipart/alternative; boundary="000000000000e92c7105c04e2822"
Subject: [oss-security] Re: Linux Kernel: out of bounds array access in dm-ioctl.c

--000000000000e92c7105c04e2822
Content-Type: text/plain; charset="UTF-8"

Hi,

sorry for the late reply.

> DM_LIST_DEVICES_CMD, and in fact, any function called from ctl_ioctl is limited to users with CAP_SYS_ADMIN.  Without that root-equivalent privilege I don't see any way to exploit this bug. Did you find a way to exploit it as an unprivileged user?

Yes, this IOCTL does need CAP_SYS_ADMIN capability which is very close
to the real root user.

The only possible exploitable scenario that I can imagine is, a user
with CAP_SYS_ADMIN cap in a container attacks the shared kernel to
break through the seccomp limitation.

However, it is quite rare.


Thanks,

Bodong


On Sun, Mar 28, 2021 at 11:47 AM - Nop <nopitydays@gmail.com> wrote:

> Hi,
>
> We found an out of bounds array accessing bug in drivers/md/dm-ioctl.c,
> and reproduced it in the latest kernel (v5.11.10).
>
> The root cause of this BUG is :
>
> The field "data_size" in function ctl_ioctl is fully controlled by users
> and this argument controls the size of kvmalloc in function copy_params.
>
> When the data_size is in a range of [0x131,0x138], the allocated memory
> which is pointed by the variable "param" used in ioctl
> "DM_LIST_DEVICES_CMD" is too small, causing an oob bug at line "nl->dev =
> 0; /* Flags no data */" (
> https://github.com/torvalds/linux/blob/0d02ec6b3136c73c09e7859f0d0e4e2c4c07b49b/drivers/md/dm-ioctl.c#L538
> )
>
> Attachments are the poc, kernel config and Kernel report.
>
> The patch:
>
> https://github.com/torvalds/linux/commit/4edbe1d7bcffcd6269f3b5eb63f710393ff2ec7a
>      * Grab our output buffer.
>      */
>      nl = orig_nl = get_result_buffer(param, param_size, &len);
> -    if (len < needed) {
> +    if (len < needed || len < sizeof(nl->dev)) {
>          param->flags |= DM_BUFFER_FULL_FLAG;
>          goto out;
>      }
>
> Regards,
> Bodong Zhao of NISL lab, Tsinghua University
>
>

--000000000000e92c7105c04e2822--
