Received: (qmail 3598 invoked by uid 550); 10 May 2022 17:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21990 invoked from network); 10 May 2022 16:39:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=pM/TMcvQ8PIJCu9Uc2SKHnOMY48V9K8513IGvgeJb7A=;
        b=XWwuECSv2/+akphsI7e2zBttYFSuX+2pdHSPnNQz8MxdlBNmIVJh43i3tYlAxrWAdn
         Xfv4pzancCzT4jHZ46TNCioXia+yP18pxzBigDr8EiaEeLEfkdNZ/Xelxoza/4DKfskR
         8aaD1ddYf6zN6ocA2dDe6BI+fxMGUeXuTwsi68QECvQxAtHf/PgSSTuMJXC86qoiJaKf
         UacuuPP7bK9wXT1JvK9I/ika+NjnCVcQHFKd2j7oRD+soY1ROwV41paECxQY3vDEehq2
         dcLxYXYyylXpWTs92E3KADQJndMCI66srJtjfj/8YWKo2VVyS6VKiLy6Ke1+fA+N1mNU
         LhLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=pM/TMcvQ8PIJCu9Uc2SKHnOMY48V9K8513IGvgeJb7A=;
        b=yMLS8FoCQ1SkoB0NQk+u/BSy58Df9qisCfbF9rmJpwBPHqUpiGuMSPdTFB9IeOZQ/O
         4tWcgkG38jDngT4uOG8KEJD15o4VXRUoJ+G4uXNFuZHoEsGyvT0XYa8+LEQZpRhXlGu/
         eXb3pmGVcMAe6VBJjE9cS2BbmNwbmHoPfeLLpbCvav/pUkMRlDZuGi8PblrBgMI9E9ls
         4L2bWjvF5fU41awIPJsaSov9fYlIoz03ZqX3xxC/GXwn53smDB7I9t923rk1evQWbq25
         1Kms4Da5WrNGYLllWN0g6kiL/JwAuYYr5ZSIRUToUUERCcrfDjun1uJozdsZ+ZucR11F
         ztkw==
X-Gm-Message-State: AOAM533OcmlnoYYKWTVFfgpeYS74k2Sl4oOp0311uSgMCBDJ7T1BSRAA
	u/0X/uZKgTsI/0khYnpnqQEZqrcR4pheJz6Kybp4pzZmsVT6z/36
X-Google-Smtp-Source: ABdhPJzYrZwzV3TuxvSaR5rN0sytJ7tTKZ1I+coMyu+sYs3qjDmCmynPRvznSJ+bzqMJuASFWZWvvDxMxHSETyp205s=
X-Received: by 2002:a0d:ef84:0:b0:2f1:ac72:6e05 with SMTP id
 y126-20020a0def84000000b002f1ac726e05mr20785929ywe.241.1652200766996; Tue, 10
 May 2022 09:39:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAH5WSp5rKR6gaKDAG58nKAiOf4fkzTz-faSFCrX4mo7RNoigFQ@mail.gmail.com>
In-Reply-To: <CAH5WSp5rKR6gaKDAG58nKAiOf4fkzTz-faSFCrX4mo7RNoigFQ@mail.gmail.com>
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Wed, 11 May 2022 00:38:51 +0800
Message-ID: <CAH5WSp4ZArJaWpdDQpX8vvvYmJTD1yiWpOVVY6R2ZKHgTPU8Ow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d0854305deaaf79b"
Subject: Re: [oss-security] Linux kernel: A concurrency use-after-free in bad_flp_intr for latest kernel version

--000000000000d0854305deaaf79b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

By the way, this race issue has been assigned CVE-2022-1652 by Red Hat.

Minh Yuan <yuanmingbuaa@gmail.com> =E4=BA=8E2022=E5=B9=B45=E6=9C=8810=E6=97=
=A5=E5=91=A8=E4=BA=8C 14:59=E5=86=99=E9=81=93=EF=BC=9A

> Hi everyone,
>
> My fuzzer discovered another concurrency uaf between reset_interrupt and
> floppy_end_request in the latest kernel version (5.17.5 for now).
>
> The root cause is that after deallocating current_req in
> floppy_end_request, reset_interrupt still holds the freed
> current_req->error_count and accesses it concurrently.
>
> Here is the KASAN report:
>
> BUG: KASAN: use-after-free in bad_flp_intr+0x332/0x460
>
> Call Trace:
>  __dump_stack
>  dump_stack+0x1e9/0x30e
>  print_address_description+0x6a/0x310
>  kasan_report_error
>  kasan_report+0x1bf/0x290
>  bad_flp_intr+0x332/0x460
>  reset_interrupt+0x16e/0x1b0
>  process_one_work+0xc61/0x1530
>  worker_thread+0xa7f/0x1440
>  kthread+0x346/0x370
>  ret_from_fork+0x24/0x30
>
> Allocated by task 12590:
>  kmem_cache_alloc_node+0x200/0x390
>  alloc_request_simple+0x42/0x70
>  mempool_alloc+0x166/0x6b0
>  __get_request+0x92c/0x1c50
>  get_request+0x756/0x10e0
>  blk_queue_bio+0x523/0x12d0
> audit: type=3D1804 audit(1651287706.088:1517): pid=3D13750 uid=3D0 auid=
=3D0 ses=3D6
> subj=3D=3Dunconfined op=3Dinvalid_pcr cause=3DToMToU comm=3D"syz-executor=
.2"
> name=3D2F73797A6B616C6C65722D746573746469723539363038303737352F73797A6B61=
6C6C65722E6C56656931332F313737362F48C7C060
> dev=3D"sda" ino=3D136083 res=3D1
>  generic_make_request+0x561/0xe20
>  submit_bio+0x259/0x560
> audit: type=3D1800 audit(1651287706.088:1518): pid=3D13752 uid=3D0 auid=
=3D0 ses=3D6
> subj=3D=3Dunconfined op=3Dcollect_data cause=3Dfailed(directio)
> comm=3D"syz-executor.2" name=3D48C7C060 dev=3D"sda" ino=3D136083 res=3D0
>  __floppy_read_block_0
>  floppy_revalidate+0xa70/0xd90
>  check_disk_change+0x11e/0x1a0
>  floppy_open+0x54d/0x890
>  __blkdev_get+0x3ce/0x1ab0
>  blkdev_get+0x986/0xb20
>  do_dentry_open+0x91d/0x10a0
>  do_last
>  path_openat+0x298d/0x6de0
>  do_filp_open+0x24a/0x4c0
>  do_sys_open+0x361/0x5d0
>  do_syscall_64+0x111/0x710
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
>
> Freed by task 2856:
>  __cache_free
>  kmem_cache_free+0xc8/0x260
>  blk_free_request
>  __blk_put_request+0x4d8/0xcd0
>  __blk_end_bidi_request+0x1d4/0x260
>  floppy_end_request
>  request_done+0x701/0x950
>  floppy_shutdown+0x14a/0x2b0
>  process_one_work+0xc61/0x1530
>  worker_thread+0xa7f/0x1440
>  kthread+0x346/0x370
>  ret_from_fork+0x24/0x30
>
>
>
> Timeline:
> * 04.30.22 - Vulnerability reported to security@kernel.org.
> * 05.01.22 - Vulnerability reported to linux-distros@vs.openwall.org.
> * 05.10.22 - Vulnerability opened.
>

--000000000000d0854305deaaf79b--
