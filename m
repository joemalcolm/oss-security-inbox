X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["907" "Wednesday" "23" "May" "2018" "16:49:58" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" "28" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052314:49:58" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       andreyknvl@g May 23   28/907   " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4043 invoked by uid 550); 23 May 2018 14:50:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4022 invoked from network); 23 May 2018 14:50:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=qSAxzFXxY/dyvZpKF1Rx0e+5MkLSgasZFzdUgQ9zCCI=;
        b=oEc6djspFi0HOSxetEJubUkzidW2pPU4lEpxL7TvBsoCqlo5TadxDWslXMc0/qQm58
         DhjhRjUZUmYxVsyCxCH52Rm7eEZUvjaoFzR6ZEReBnURqri+uH99EzAwTdLjCKqa72BH
         0SkeyIt/enIa/KjVc4rQs4rWGoIkuho9oEQaesxqG1PThEagpYENFNHod6v3w/8ddLkl
         yoGmESkpKjjlTAFI7ItY70zzUYydG3N/vzDzZEPlmVh4U39J9D0yt960hcA63U5EiKlM
         Xqew2X66Pl4iDu2Wsx+bA06j6I7oOb9BkxlgncWAa1Cr4/5B/RDRgx3hy7riqtUXSSmc
         auKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=qSAxzFXxY/dyvZpKF1Rx0e+5MkLSgasZFzdUgQ9zCCI=;
        b=Z1Je+xdMrlBWmogMrgamZNnBBXMN/aVJz7O0m09oSXq/lqgBkvZhTZOfuYYzOQDz+/
         BlQuwlITvj905SSxpY8vE44Sv+l2xWk0QkZVz4HeXGjjbkq/0CeK3D1qrpHadAiScl+i
         LeuPsGO7uQVRv8CrsxlSbT+SNh6V27VQldfKpXBbUU0OX0EpJHjS1vkbJ4ufxJZPa5fk
         vT3ALJokciSSY5YSjR/kGAYvf/qoxV1gwafV6TRa+yv1fM4rLvY062lcvaSEQT6CmnWG
         V9s68CalP22igum+WWVqmJ3Ry9vytqGO8GURKdLvB6Qr23jM2jCzZwU98z/S79pUciBM
         iE2A==
X-Gm-Message-State: ALKqPwdep7qDEG8WAhchBmuvrRfZVYboVwgLV/VbkWbXe+4EIwcovD7C
	qlvHpDjHamqXP9bKCiMCnv+NSqGNtwjWiC3PKY+33Zns
X-Google-Smtp-Source: AB8JxZo8gOLOmg3p3tkFrhd2KsDvGGc/RfhBgsluUJFxF2UVmpTRB+IfE7dmLFZavQIcLAEj1vjTozUCB1tGn8ArPR8=
X-Received: by 2002:a2e:9101:: with SMTP id m1-v6mr2025679ljg.93.1527086999060;
 Wed, 23 May 2018 07:49:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com> <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Wed, 23 May 2018 16:49:58 +0200
Message-ID: <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
To: oss-security@lists.openwall.com, vdronov@redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

On Thu, May 10, 2018 at 2:05 PM, Vladis Dronov <vdronov@redhat.com> wrote:
> Hello,
>
> A null pointer dereference in dccp_write_xmit() function in net/dccp/output.c
> in the Linux kernel before v4.16-rc7 allows a local user to cause a denial of
> service by a number of certain crafted system calls.
>
> References:
>
> https://syzkaller.appspot.com/bug?id=833568de043e0909b2aeaef7be136db39d21ba94
>
> https://marc.info/?t=152036611500003&r=1&w=2
>
> An upstream patch:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=67f93df79aeefc3add4e4b31a752600f834236e2
>
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer

Hi Vladis,

I've been wondering, how do you choose which bugs you request CVEs
for? Syzbot reported a few hundreds of them over the last few months
and a decent fraction of them looks scarier than a null pointer
dereference.

Thanks!
