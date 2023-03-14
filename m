Received: (qmail 30156 invoked by uid 550); 14 Mar 2023 08:38:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28102 invoked from network); 14 Mar 2023 01:34:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yonsei-ac-kr.20210112.gappssmtp.com; s=20210112; t=1678757686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mghZEIc+MACtsSsk1CPsE4YYu5QZ3pDUoQ9524E8wyc=;
        b=CWod+Wi+YyXxhEOmOwhIv7P9MCfM+PECg/kYKfJ7znCVCE6JuEVzNi7d28guiizDGY
         Fadh0fxxVaLdfYnKOMnkZ15JuFzCf6ZdnupRXv9t3fKUQ5l6tt0295JZBmeh1N8zBs0f
         IN0QiYsCl3FdWKomqxhqWRAFCmKna3HXqr9Q+dmXrU2LQ4NxOv8BQs1qZ3xytsC+v7tk
         VqyBvHeMOKaDKM8evXPL5YsC/YDBG3gyphgy+/n6SZJcOPauHOtAOs7cQcOTE09IkGbh
         KRwxQmHftOGwMEhJUhudcwrVyxqBl9ziTvpuihMOf3NO4AjQBO2wGx97Unriwn0CY0Bx
         tArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678757686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mghZEIc+MACtsSsk1CPsE4YYu5QZ3pDUoQ9524E8wyc=;
        b=MRmv3CTnNzvc78si+BV5Q8PmyqYylzCmesdF8h+zAJwo90h5RAt5mbpWRhPGQYZLuu
         VeKBtcjbIx5wM/IM9Mr3cZ1SaqbrkfBqb1+D2CIh9+04CVB/K/AUyR6VJdJQPhOta3qk
         ZEiVJmJSlu7L9mkAYqKCAdb19XPDP7B5mfZ8V9wgeetWk0EVOaOMMcfPpCmDdsqv5WOv
         BkLN8KclO9ZTVN+CmcC79JH9rYppACyOfRMXlTdJQU8WVhA0o5sW2fBJk20a9mJ0j7Jy
         ldZdptG1chw8U0g0L1PkKLRRMcDDhQU0oUZN6QWXPfr+eBO7FvCl1Seaky0DJh9t9SHt
         qGWA==
X-Gm-Message-State: AO0yUKVkGQirV6zDElOGSTySgpuVa3CJ+vxnhOh6AitI94jHGa01xhhQ
	JSwKJhxRrVVe5CiPMwdnEYFzTqx8j6KykL0Dsaw8+tKkfiwWYYpAmEA1
X-Google-Smtp-Source: AK7set9tiP8qiSKCFzNOSxBcFbsag2iv43tPc+/cxHR7CvxCPE4vvjxPj0binP8XJmdFi1gXsEHHP3Epgj8DIZY5qEg=
X-Received: by 2002:a81:a946:0:b0:52b:fd10:4809 with SMTP id
 g67-20020a81a946000000b0052bfd104809mr24526783ywh.0.1678757686602; Mon, 13
 Mar 2023 18:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <CABz=zMLL=m9dgAThaqT5i89TpArTO6o+4v=YQAHCzegm0MubQQ@mail.gmail.com>
In-Reply-To: <CABz=zMLL=m9dgAThaqT5i89TpArTO6o+4v=YQAHCzegm0MubQQ@mail.gmail.com>
From: Jisoo Jang <jisoo.jang@yonsei.ac.kr>
Date: Tue, 14 Mar 2023 10:34:35 +0900
Message-ID: <CABz=zMLEVKD8pED=fGH8hzVzMscZPsvKT9Tb-5oQSeerV-pLTQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Dokyung Song <dokyungs@yonsei.ac.kr>, Minsuk Kang <linuxlovemin@yonsei.ac.kr>
Content-Type: multipart/alternative; boundary="0000000000009306e505f6d23bc9"
Subject: [oss-security] Re: A USB-accessible slab-out-of-bounds read in Linux kernel driver

--0000000000009306e505f6d23bc9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This bug was assigned CVE-2023-1380.Best,
Jisoo

On Mon, Mar 13, 2023 at 8:10=E2=80=AFPM Jisoo Jang <jisoo.jang@yonsei.ac.kr=
> wrote:

> =3D=3D=3D Description =3D=3D=3D
>
> A slab-out-of-bounds read bug was found in the Broadcom Full MAC Wi-Fi
> driver (e.g., brcmfmac.ko in the linux-modules-extra package in Ubuntu),
>
> The bug occurs in kmemdup() called from brcmf_get_assoc_ies(), when
> assoc_info->req_len, data from a URB provided by a USB device, is bigger
> than the size of buffer which is defined as WL_EXTRA_BUF_MAX.
>
> The driver duplicates the data of cfg->extra_buf to conn_info->req_ie as
> much as assoc_info->req_le, which could exceed the size of the buffer.
>
> The data passes through cfg80211_connect_done(),
> __cfg80211_connect_result(); in the end, it reaches
> nl80211_send_connect_result() that will form netlink messages with the da=
ta
> read outside the bounds of the buffer.
>
> This data, which may contain sensitive information in the kernel, could be
> sent to a userspace socket by __netlink_sendskb() during this multicasting
> process.
>
> =3D=3D=3D Fix =3D=3D=3D
>
> A patch was reported to the linux wireless mailing list and successfully
> reviewed by the maintainer.
>
> (
> https://lore.kernel.org/linux-wireless/20230309104457.22628-1-jisoo.jang@=
yonsei.ac.kr/T/#u
> )
>

--0000000000009306e505f6d23bc9--
