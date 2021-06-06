X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1261" "Sunday" "6" "June" "2021" "23:40:24" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "46" "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "6" nil nil (number mark "U       butterflyhua Jun  6   46/1261  " thread-indent "\"Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19548 invoked by uid 550); 6 Jun 2021 16:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1893 invoked from network); 6 Jun 2021 15:40:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=YLCNC/GEQ1aw0wToc/m8FYo0MAFSzSWrO0wjjNxk9AQ=;
        b=ddmFvK/r3+dKPzpkAc/91y+Vw6pNGfCUor6ECGdv4XUNNUKC7F2q+LaYQPAs/APWw4
         VcX1DFAt8W+gv/qym4w00pYM7XS2K3ryu/hyCVeb63PEWyqRMQUX+IdjdGYCBqW3Ke0Q
         qLGBduCawyCvBrtWTUtm5x8ipgL5J5ue9SkbF/dZz0T5hWwM4cFyLbb2+X8J/+6jFc9/
         d/kPHUKmXS9Hgn3AHoU8G/i2mipB/EhR8jHFb2k5E8YS3cFDUIuKOkYhrfFQE34WopkM
         +G+6CK2zl5NwCg1TyxzAhxI9Po2rEc0R9ZdQmkZjHftrA9MaQzwBUoYJJVmfzkddX95f
         OQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=YLCNC/GEQ1aw0wToc/m8FYo0MAFSzSWrO0wjjNxk9AQ=;
        b=c4LM7dx/ct4VZAUjvr6CartrBWtFa8+GY3Cmk7MbhiwEZ/N/7boCGlFTJZVV9b9LZz
         vBiVQMN9HF7mVmZOYSUH6I75F6n35aj5+21x+pP0E4mfg/1MCBJ9XMxnQTEYV9ZJK6bM
         VIABeulNjiIwc8Mj4w+e7/usPSSJsuFdb6F4tmAU1oTEKvi55VxxevA26BoZVQCWO2u0
         LmNpAKaskKfCNvZnSP8S2d1IgK7zj8pdu7dJFeMImV0BW2pJW+NV9tvInnfSHN/1TILy
         7v/SCAaqX6rOa3y+boo9R/196jyJEZ45Xd/n7oBSH5Vsfz7RhdrOHeujg617vISZhwqS
         uN1w==
X-Gm-Message-State: AOAM5337jOGos3vPB1w28EB3yzaD0iBhxFwFDAeAvKShwvJfqp7i0rQp
	mymP30HizZFwOTaSCnVy9Fe/EAF065Z7cbX3QyTdmX3n
X-Google-Smtp-Source: ABdhPJzknhx/bvoCFAtgwwcbGb8TOySodATbJiFfosQRjWh+9DSHY/p/cftdCk8W/zUW6bYTaJM1vx1ii5aYgCw3Nb4=
X-Received: by 2002:a25:9d06:: with SMTP id i6mr18002081ybp.90.1622994034362;
 Sun, 06 Jun 2021 08:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
In-Reply-To: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Sun, 6 Jun 2021 23:40:24 +0800
Message-ID: <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname

Hi, the patch for this issue in upstream:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4ac06a1e013cf5fdd963317ffd3b968560f33bba

Regards,
 butt3rflyh4ck.


On Tue, Jun 1, 2021 at 3:37 PM butt3rflyh4ck <butterflyhuangxx@gmail.com> wrote:
>
>  Hi, there was a null pointer dereference in llcp_sock_getname in
> net/nfc/llcp_sock.c and reproduced it in linux-5.13.0-rc2. An
> unprivileged user can trigger this bug and cause denial of service.
>
> #Root Cause
> After creating an nfc socket, bind the address by calling bind(), if
> LLCP_SAP_MAX was used as SAP, it cause the bind() failed and there
> would set llcp_sock->service_name  as NULL.
>
> Although bind() returns an error here, it does not affect calling
> other socket functions. sock_getname() would invoke
> llcp_sock_getname(), llcp_sock_getname copied service  name from
> llcp_sock->service_name by memcpy but llcp_sock->service_name is NULL.
>
> #Fix
> the patch for this issue:
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=4ac06a1e013c
>
> #CVE
> CVE not assigned.
>
> #Credits
> Active Defense Lab of Venustech.
>
>
>
> Regards,
>    butt3rflyh4ck.
>
> --
> Active Defense Lab of Venustech



-- 
Active Defense Lab of Venustech
