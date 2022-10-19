Received: (qmail 12040 invoked by uid 550); 19 Oct 2022 19:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19676 invoked from network); 19 Oct 2022 18:10:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bng+4grGFk21eMhly90uB5r0j07T29grPGcEXMeWZRY=;
        b=bGIRyHfvsvbvVDcHg9tWB8KNaVWBKc/mnj94WoWxo5gAtOPQSyCoPgFXsjj3fUdFRT
         MvWhoX7NlqZeOJ2h5XNK5u/N0v43RH/SEWd12Y3iLgrG5SWow7ziy5h2SZ9YujAPC7gp
         cL+kbixoblBshxifAfvg2HiX2b9reupzul/BxoZwDhAtuLbiuUO+a7iytUaw5dbyxtDG
         JPkC879LNWdX6/NUm+oBKzXtNH2AX81jmvXEHK4cOCYgtvLiVqH4Kc7GcDxysngCkNNf
         MmTqvVVNSV5th1oipq8zcQGxQNVxFDvwsZpS15l34ytSOKE2aGv0qMpxNGEpG+8DMj19
         6B1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bng+4grGFk21eMhly90uB5r0j07T29grPGcEXMeWZRY=;
        b=tZX/8YilpR6stSIhZf0UUBaoud4SXVcOQ/KlAreZ5w3LQQxCYHGLdmubpUHiFNbi6D
         +raMjTuWl3QSIOdRyQwG8yAHnIZsWOdyjjIhWlJCmg1sqKGLHaLXGoGxZHCpEIavCEux
         sG0j+9MeO9aIZX3eytVM99reqeofGKYY+rsRs/s8HKAc8ZuIdQIGvccUPsFoSZww9SLC
         9VKhjW8Z641Ftd+HiUyQYL1MAT9Gn9IZasew9zhsrN93SP4jH9/1EvbZaQ2ccVmkaOKi
         eMNCw6mdFAgtJwujLMGhXZnC+JXGMQXPovgLH1hCLwwvxWcW6cgYrxPnivqw3tcP8H/u
         +bLw==
X-Gm-Message-State: ACrzQf0IXgWPKg19hlAp7MxpbIbONN415nsL5Qw483QiTm8s6VVXuuEk
	z31AM0+jTmVDkFwgLtVm5ymiXqUT7nxGIftx9/AncLDF
X-Google-Smtp-Source: AMsMyM7sP73FIaJLB6bWZzbIvN1+BGDctMo8ceV1a1J4n754DqFlXtp/e0WHB6RLrzt6ywLCuTM2IfdJVM8q6V674H8=
X-Received: by 2002:ac2:5a0b:0:b0:4a2:1502:1603 with SMTP id
 q11-20020ac25a0b000000b004a215021603mr3167388lfn.90.1666203023529; Wed, 19
 Oct 2022 11:10:23 -0700 (PDT)
MIME-Version: 1.0
References: <Y07bhw5Um02VYKvl@quatroqueijos.cascardo.eti.br>
In-Reply-To: <Y07bhw5Um02VYKvl@quatroqueijos.cascardo.eti.br>
From: David Bouman <dbouman03@gmail.com>
Date: Wed, 19 Oct 2022 20:10:13 +0200
Message-ID: <CA+rf83oV8rxuEmDKmFjsR7Nst7HEu+0_j-hOm=ygQgjpcAUE8Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000575ae705eb671f0b"
Subject: Re: [oss-security] CVE-2022-2602 - Linux kernel io_uring UAF

--000000000000575ae705eb671f0b
Content-Type: text/plain; charset="UTF-8"

Hey,

I found this vulnerability independently of ZDI, and reported it to the
maintainers (this email address is stated in the patch).

I can verify that this issue is exploitable on 5.10 as well, the stated
patch does not prevent the issue.

Regards,

David


On Tue, 18 Oct 2022, 19:28 Thadeu Lima de Souza Cascardo <
cascardo@canonical.com> wrote:

> A local privilege escalation vulnerabilty involving Unix socket Garbage
> Collection and io_uring was reported and fixed as:
>
> 0091bfc81741b8d3aeb3b7ab8636f911b2de6e80 ("io_uring/af_unix: defer
> registered files gc to io_uring release")
>
> The vulnerability is a use-after-free that happens when an io_uring request
> is being processed on a registered file and the Unix GC runs and frees the
> io_uring fd and all the registered fds. The order at which the Unix GC
> processes the inflight fds may lead to registered fds be freed before the
> io_uring is released and has the chance to unregister and wait for such
> requests to finish.
>
> One way to trigger this race condition is to use userfaultfd and other
> similar strategies that cause the request to be held waiting for the
> attacker to trigger the free.
>
> This issue was reported as ZDI-CAN-17428 and has been assigned
> CVE-2022-2602.
>
> It affects upstream stable 5.4.y, 5.15.y and later versions. 5.10.y may be
> mitigated by the fact that commit 0f2122045b946241a9e549c2a76cea54fa58a7ff
> ("io_uring: don't rely on weak ->files references") is present, but it is
> safer to apply the fixes.
>
> A PoC will be posted in 7 days, on October 25th.
>
> Cascardo.
>

--000000000000575ae705eb671f0b--
