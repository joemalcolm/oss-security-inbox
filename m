Received: (qmail 25678 invoked by uid 550); 14 Nov 2022 03:10:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25648 invoked from network); 14 Nov 2022 03:10:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ri7k7WXWJo3omD2bRpASY2lhjs/AstahPSY8h0DWnsA=;
        b=m0SKUheFM+tG1gbAuz1meYqW5qdF87dUBEP3fumpG4+fmbeDt9GuYm0i3djAQQS/+z
         OWsPCTbeieLUfdH0CfDejPWP+Ou/UoNEhang5pa93jM+WHJWyPSYzDeheB+3H//U/zC5
         +RKFYYRGWxUzaG9LMQbclwEVYdZLFf06u1ioFfekNOHNMmzmvEIhu4SDni19rGTqf+gr
         5eefqQrzaDJ9BdyjjhWg5a2gJvT4yMI1bYpv6WHOkagJlbCivN2rXaEKv7lUw/AN4wsy
         eDaySpqMRR9VrfMEPnqWEwdTSIX4W8nbFK7/UumaQHjBa4hu4P2dKroLMkQm0rwJrcfY
         1E6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ri7k7WXWJo3omD2bRpASY2lhjs/AstahPSY8h0DWnsA=;
        b=4kmozPX98v39kjSExwHKeihO+lRPufYL9gwoqg28PT6pHeKuuQ14YwPkfSM1NsG67n
         gwy0QHrwE/2uDsKUmwnxHiitSxKNbhB74fwlZFbL1O4qJdwJ1hC8poq/SZt/BpyFVbAx
         imVnnAlCccA//fNGAEgkPCQjZEcMLoZVqn8rnaaIKKxg3G7F2gWcf4kjkWIiu5ktEVv4
         WfHwATn3a7VDcQeL9RPlxi0zxT1eUe8GzKhAIuDBanwXm0SXJK024KTpf+gYjjKsx3vY
         h4sSV1/9jbOMOqC8GUidf+Ob3KdruIkxvDWr1xG6HpQ6od219lZp4Nrr6/lsGDgtO/+P
         8LhQ==
X-Gm-Message-State: ANoB5plFAR3pERLLadgG1NGRLD73lcJ5lAEoR2gmpeUvGJ/Lm40jAwxx
	TJ84jPJDhyEg5+e75yobVqNzQTl1WNf/zjXoAGFilz8+YTE=
X-Google-Smtp-Source: AA0mqf69jbsUb5ho3LayLNBJGfTPQoKNHmas0K+PvEEFcNbG+3rlFqr9Bbmk3KPtwDqN+10B6C9NqyXWukEXKQVPl7I=
X-Received: by 2002:a81:1304:0:b0:35f:a643:f200 with SMTP id
 4-20020a811304000000b0035fa643f200mr11333108ywt.70.1668395432001; Sun, 13 Nov
 2022 19:10:32 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XNdzVKWQ3GEDvUxCTuSiauJU-qZT1yMMoKWEZV-cX5S4A@mail.gmail.com>
In-Reply-To: <CAFcO6XNdzVKWQ3GEDvUxCTuSiauJU-qZT1yMMoKWEZV-cX5S4A@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Mon, 14 Nov 2022 11:10:21 +0800
Message-ID: <CAFcO6XNrZziaKNu=BGiHoKiK4sdHH4CJLKoptOyE=yQ5WWqaLQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: net: mctp: A Use-After-Free bug in
 mctp_sk_unhash in net/mctp/af_mctp.c

CVE-2022-3977 is assigned for this issue by Redhat.
https://access.redhat.com/security/cve/CVE-2022-3977


Regards,
 butt3rflyh4ck.

On Sun, Oct 23, 2022 at 1:51 PM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hi, there is a Use-After-Free bug in mctp_sk_unhash in
> net/mctp/af_mctp.c in the last Linux kernel upstream.  An unprivileged
> the user  reproduced it with new namespaces.It would cause Local Privilege
> Escalation(LPE). It was introduced in v5.18.0, commit is
> 63ed1aab3d40aa61aaa66819bdce9377ac7f40fa. It affected all the way up
> to upstream v6.0.0 and stable. Unfortunately, the mctp kernel module
> is not automatically loaded.
> I have reported to secuirty@kernel.org a month ago and Now the patch
> was opened to the public.
>
> ##Root Cause
> The bug was introduced in commit
> 63ed1aab3d40aa61aaa66819bdce9377ac7f40fa. It add
> SIOCMCTP{ALLOC,DROP}TAG ioctls for tag control.This change adds a
> couple of new ioctls for mctp sockets: SIOCMCTPALLOCTAG and
> SIOCMCTPDROPTAG.
> where a simultaneous DROPTAG ioctl and socket close may race, as we
> attempt to remove a key from lists twice, and perform an unref for
> each removal operation. This may result in a uaf when we attempt the
> second unref.
>
> ##Fix
> 1.https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3a732b46736cd8a29092e4b0b1a9ba83e672bf89
>
> ## CVE
> Now no CVE number is assigned for this issue.
>
> ##Timeline
> 2022-9-26: reported to security@kernel.org.
> 2022-9-26: bug confirmed.
> 2022-10-06: patch it.
> 2022-10-12: patch released.
> 2022-10-12: reported to secalert@redhat.com.
> 2022-10-23: Announced on oss-security lists.
>
> ## Credit
> this bus is reported by Active Defense Lab of Venustech.
>
>
>
> Regards,
>  butt3rflyh4ck.
>
>
> --
> Active Defense Lab of Venustech



-- 
Active Defense Lab of Venustech
