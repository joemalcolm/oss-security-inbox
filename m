X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2325" "Sunday" "24" "December" "2017" "09:23:15" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171224082315.GA28282@eldamar.local>" "62" "Re: [oss-security] Linux >=4.9: eBPF memory corruption bugs" "^Date:" nil nil "12" "2017122408:23:15" "[oss-security] Linux >=4.9: eBPF memory corruption bugs" (number mark "        carnil@debia Dec 24   62/2325  " thread-indent "\"Re: [oss-security] Linux >=4.9: eBPF memory corruption bugs\"\n") "<20171223081028.GA17654@lorien.valinor.li>" ("<CAG48ez35=x3BPJ_sUdxbzjoo+8GLxLGrdhz9r52Y+wqfdbqBUw@mail.gmail.com>" "<20171223081028.GA17654@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5522 invoked by uid 550); 24 Dec 2017 08:23:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5504 invoked from network); 24 Dec 2017 08:23:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nLD1a6pvVpRjLQIDhHuXQLwPEBePOyNm/1c1aNYnEJ0=;
        b=eC3fq2RSCsNJJ6bmj/pHff56EbCNuxOp+nIJC7dRkCDYtvbh2VhstQe8WGTGnz+jXE
         Q5fmJcrUhnxzDBYJoa4DzdVTVirqTmsIiEN8AOegx+cBxuEat2WfKaa3f03opHhq+J0q
         lqEOG0b8Om61OwGH/KUJV3oH5WXyzmy/9sVpeocgQLknoHnE2so+GoQJ8rHgcrstWXju
         uKW1mc3/sW5Rk4AhZmLfur6hRU54tr2jYqrEFFQTuKJgZ0+PtCgdErSnu5HjHnKEKRei
         a30L0zDjTrS1PkxyCXnD0i5CxoATrF8BdjqGAnnRLTFpJ4PDmNrO+ZNCeP8KSXd5Y5Iv
         /GQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=nLD1a6pvVpRjLQIDhHuXQLwPEBePOyNm/1c1aNYnEJ0=;
        b=KTWLuRdoPS9JZJl3naNcNVYfzQRrG1y9ESEZuOo0QV7nazSZ4mm+trpMT2FUQgBFhq
         MRy2HLiauqIwQdhj3HWnVauFZgq2JtRr3NnKGFiXglRI0Oy0nlrOOb9yuCmS7eTKchiZ
         BUtXuItTRrDGIgogUZB76v+9FSZKIQO2YYPHor55Z4heN/m2UEsO/uBeE0US8mIkv7Cw
         LBdxv3e9F04j9pKdgQex4skjjjr2LphISw/4VVuyxk+pt4xBcdyJ10Fc5J8NY/r5F/+x
         hhF3LFj0qxF3jtTQ6fevwVzDkc0UfWeWj0Q3Jhk41prxDvDNmMj5cp9ypzBt4SR3CvVk
         4Xvw==
X-Gm-Message-State: AKGB3mKyArXm2yLzJ3Pb3ImJIA7tUGwGmHC7fUdl+q8jnW0H3/2rVEa3
	nTG8JWfna96Qp8aOU6PJGv8eVg==
X-Google-Smtp-Source: ACJfBotK8/Af2eg36YtLDYhVK5l6eKu2Rs0vWEv7bf7z7PZ6iFnhoXVzHirvuSlH4tM0tN7fi7nrtA==
X-Received: by 10.223.190.12 with SMTP id n12mr11930588wrh.34.1514103798694;
        Sun, 24 Dec 2017 00:23:18 -0800 (PST)
Message-ID: <20171224082315.GA28282@eldamar.local>
References: <CAG48ez35=x3BPJ_sUdxbzjoo+8GLxLGrdhz9r52Y+wqfdbqBUw@mail.gmail.com>
 <20171223081028.GA17654@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171223081028.GA17654@lorien.valinor.li>
User-Agent: Mutt/1.9.2 (2017-12-15)
Date: Sun, 24 Dec 2017 09:23:15 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Linux >=4.9: eBPF memory corruption bugs
To: oss-security@lists.openwall.com

Hi

Debian issued an update yesterday, an while preparing the fixes three
more CVEs were requested which are related:

https://lists.debian.org/debian-security-announce/2017/msg00336.html

specifically:

CVE-2017-17862

    Alexei Starovoitov discovered that the Extended BPF verifier
    ignored unreachable code, even though it would still be processed
    by JIT compilers.  This could possibly be used by local users for
    denial of service.  It also increases the severity of bugs in
    determining unreachable code.

https://www.spinics.net/lists/stable/msg206984.html
Upstream: https://git.kernel.org/linus/c131187db2d3fa2f8bf32fdf4e9a4ef805168467

CVE-2017-17863

    Jann Horn discovered that the Extended BPF verifier did not
    correctly model pointer arithmetic on the stack frame pointer.
    A local user can use this for privilege escalation.

https://www.spinics.net/lists/stable/msg206985.html

This 'fixes' 7bca0a9702edfc8d0e7e46f984ca422ffdbe0498 (introduced in
4.9.28) which was 332270fdc8b6fba07d059a9ad44df9e1a2ad4529 (4.12-rc1) in
mainline. Quoting the message from Jann: This is a fix specifically for
the v4.9 stable tree because the mainline code looks very different at
this point."

CVE-2017-17864

    Jann Horn discovered that the Extended BPF verifier could fail to
    detect pointer leaks from conditional code.  A local user could
    use this to obtain sensitive information in order to exploit
    other vulnerabilities.

Only reference so far:

https://anonscm.debian.org/cgit/kernel/linux.git/tree/debian/patches/bugfix/all/bpf-verifier-fix-states_equal-comparison-of-pointer-and-unknown.patch?h=stretch-security

Quoting the commit/patch description:

> This was fixed differently upstream, but the code around here was
> largely rewritten in 4.14 by commit f1174f77b50c "bpf/verifier: rework
> value tracking".  The bug can be detected by the bpf/verifier sub-test
> "pointer/scalar confusion in state equality check (way 1)".

and further he stated:

https://anonscm.debian.org/cgit/kernel/linux.git/commit/?h=stretch-security&id=ad775f6ff7eebb93eedc2f592bc974260e7757b0

The upstream fix is definitely post-4.14, probably "bpf: don't prune
branches when a scalar is replaced with a pointer", but no bisect was
done to confirm, so this question is still open.

Regards,
Salvatore
