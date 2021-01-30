X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1466" "Saturday" "30" "January" "2021" "16:46:30" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" "<CAFcO6XP+LtLLCzLakN9QFKNOcDHQhdgxyLz59OCr+5ebXxAkRg@mail.gmail.com>" "49" "[oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" nil nil nil "1" "2021013008:46:30" "[oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" (number mark "U       butterflyhua Jan 30   49/1466  " thread-indent "\"[oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq\"\n") "<CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>" ("<CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3155 invoked by uid 550); 30 Jan 2021 08:48:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1739 invoked from network); 30 Jan 2021 08:46:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1UMnsGj4g4Lteur7Vxu20uJzHP4HUgUWEJzdE4cOvC0=;
        b=lEC6hJcBYMEBm7Kds7R63cWVeRmDtiQPfqplBPhfUyLB8GTXzINWmeqVtoEiPnjCsf
         hLwfBoyoTcXiCqVECJ7Fr/YkXJXe/1pxO8hb2KsGAgbfiVWRv7GLp2Y4HorNov9spkKN
         KbLSL2tc73FSbnyuuO200vdyPwFy+8+Zqksr/qrCp96bMmlM6HvlXGvatMZEfvhOmV2q
         oi6xEvhPu2uK8RPyVeCtKU6ypDjGUfc6kJ2NYb5H3nNgZ+5iTXFerdf39FcwkzePbUMf
         XczpNXhQiKtoQamTugE/pLDw8vS+t6oI/eglzn/KcAF9M+yu9jj/2g7cseqcjQvcOBRI
         /rBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1UMnsGj4g4Lteur7Vxu20uJzHP4HUgUWEJzdE4cOvC0=;
        b=iecSL/rS9lbuj9dw/EhW5P0CJpMVAYtPxcnffOyVu1sAcj7co6/ww+IaBvsa5YBzd/
         N5UiVSncoVNeOSN6ib3/3mWKszs1m3DR+GqXZl3UAUv52mM310raTXFnUcQLTtJ8ANcv
         PxceTMnSKNc5qzmMobzIePgi5ug/dwvAWNohtZ/rBisWh3uCL0Gq+ceTUGbvRbHWG1km
         EblEc87u66ULK2hBlhUJcodUrkFF4YPitZ09w7QevWStIhcfENRfl0yBTRddYvix/JsH
         ir6ianl0Rx3ZgeKdhSyZciIx52vlnKTEyGyNfmLv5xEIhtQPC/VHv4UGSNAsL/MYhssG
         b18w==
X-Gm-Message-State: AOAM532F4N2vbvLfX+JVT7LuTAT9m8mOKMXKB1Sh0cM2+LmbEjM0Jhah
	IJgNFdNHnCl8OzdLJb7/vgCd5zVDZRXNkr0T5aanBRPw
X-Google-Smtp-Source: ABdhPJx5/BtgO80oiD3YU9wUqf9nlviw1mGw2hmHrnKhzQjRB1xuBQ8q6JXukeK2PtIy8stPEKyKzJW9UR50iK+yX08=
X-Received: by 2002:a25:768d:: with SMTP id r135mr11668291ybc.484.1611996400984;
 Sat, 30 Jan 2021 00:46:40 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>
In-Reply-To: <CAFcO6XMDdVx8uoM8-dJf=AP5t+Tva-J2sOE+gV4F11dvU99yrg@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Sat, 30 Jan 2021 16:46:30 +0800
Message-ID: <CAFcO6XP+LtLLCzLakN9QFKNOcDHQhdgxyLz59OCr+5ebXxAkRg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000dc275405ba1a28cd"
Subject: [oss-security] Re: Linux kernel: linux-block: nbd: use-after-free Read in nbd_queue_rq

--000000000000dc275405ba1a28cd
Content-Type: text/plain; charset="UTF-8"

the patch for this issue in upstream:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b98e762e3d71e893b221f871825dc64694cfb258

Regards,
 butt3rflyh4ck.


On Fri, Jan 29, 2021 at 2:10 AM butt3rflyh4ck <butterflyhuangxx@gmail.com>
wrote:

> Hi, I reported a use-after-free Read bug in ndb_queue_rq() in
> drivers/block/nbd.c and reproduced in linux-5.11.0-rc4+ too.
>
> Root Cause:
>
> There is a race condition in nbd ioctl.
> NBD_SET_SIZE_BLOCKS ioctl will call nbd_size_set(), it will change the
> block size.
> NBD_SET_SOCK ioctl will call nbd_add_socket() and it will invoke
> krealloc() to update a block, free and realloc a new one.
> But nbd_queue_rq() is in runtime. and calls nbd_handle_cmd(), there
> will use config->sock. there accesses to config->socks without any locking.
>
> Patch for this issue:
>
> https://lore.kernel.org/linux-block/24dff677353e2e30a71d8b66c4dffdbdf77c4dbd.1611595239.git.josef@toxicpanda.com/
>
> CVE assigned:
> not assigned.
>
> Timeline:
> *2021/1/25  - Vulnerability reported to security@kernel.org.
> *2020/1/26  - Vulnerability confirmed and patched.
> *2020/1/28 - Vulnerability reported to linux-distros@vs.openwall.org.
> *2021/1/29 - Opened on oss-security@lists.openwall.com.
>
> Credit:
> This issue was discovered by the ADLab of venustech.
>
>
> Regards,
>  butt3rflyh4ck.
>

--000000000000dc275405ba1a28cd--
