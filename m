X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1178" "Tuesday" "17" "January" "2017" "20:25:19" "+0530" "Lokesh Ubuntu" "lokesh.ubuntu@gmail.com" "<CAFE48uTYA=5jsW09sMVMT9FOH2oBYgi86myziRPtJo0kx466KQ@mail.gmail.com>" "45" "Re: [oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm" nil nil nil "1" "2017011714:55:19" "[oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm" (number mark "U       lokesh.ubunt Jan 17   45/1178  " thread-indent "\"Re: [oss-security] CVE request -- linux kernel: crash by spawning mcrypt(alg) with incompatible algorithm\"\n") "<510000852.12772202.1484662871690.JavaMail.zimbra@redhat.com>" ("<1400209807.12771760.1484662778034.JavaMail.zimbra@redhat.com>" "<510000852.12772202.1484662871690.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32646 invoked by uid 550); 17 Jan 2017 15:45:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3432 invoked from network); 17 Jan 2017 14:55:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=uj6OREbyo/+PYjAjIJFSFvExUMoD3WDbn7FLD5CW3hk=;
        b=ie9OZE53F1+kLUT22/aNSuIXifTDOh6OEUImnjHnE9MWcYL3w1ZeP1ZV4Lf0lqo1oD
         UQS8b/VIZwLqcSCDND1Lujzzk/de7rDMToeF9SYzvguPhGF7gF+pKMdWkr133fEC4s9x
         bijQ1Sf8acPfXVhQShzOKVs6tiGRLxDBxTAfFZrAQyhNhKRuKnftGvpnpZ+T2OLLHe85
         mAUK2hDknktO7fh5iX9F3MJzu71e5aPcvW7gHdouhBPzTciwW30TM3LGp2crGeBZCOVf
         rLcd0mAlN7PlhQnu5AyymCSG+bHotKM/iXey2HJ6EFtpyKN3HqY/2mvCQeav6eAlqs9X
         K6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=uj6OREbyo/+PYjAjIJFSFvExUMoD3WDbn7FLD5CW3hk=;
        b=qlnBYMrJve//lUB/moUjcTlkCx4RWmpFS5G9kH2C32kghtj8StstL66rZyXDtIwITO
         90U3iLea2X3los5Omc1/bNy5CEG2DC2Krw67Dp6LTljOjKGaraVtPrUJysS1JUTqSiqE
         0ljKGaZWTx/9rEqaiXWeqG6YqYHjI2CI7waJMEg8T12PbVeEfncKa4LKxP7yV+iZv36f
         CJ3uZBCTYtFrC5u3EhGE/tpMUynZyvCX7zUaHsp0g1OgPacFKyGz0CQV3kdd1eSKUBQa
         NqReSc0s3HYvjsowc2cPgHQBA/usCf9GNeTx+onQd6qZ21A6q780Q3dgCVB0ql5TSYYQ
         74tA==
X-Gm-Message-State: AIkVDXLvugrsYxizPbQzrZ9cKthAfDeq0Ee46f+qnGAq8gAkgrZe/hFwVxl99kel9HW/1O+LMJDOkxCyPc6pBQ==
X-Received: by 10.159.49.11 with SMTP id m11mr21861961uab.178.1484664919873;
 Tue, 17 Jan 2017 06:55:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <510000852.12772202.1484662871690.JavaMail.zimbra@redhat.com>
References: <1400209807.12771760.1484662778034.JavaMail.zimbra@redhat.com> <510000852.12772202.1484662871690.JavaMail.zimbra@redhat.com>
From: Lokesh Ubuntu <lokesh.ubuntu@gmail.com>
Date: Tue, 17 Jan 2017 20:25:19 +0530
Message-ID: <CAFE48uTYA=5jsW09sMVMT9FOH2oBYgi86myziRPtJo0kx466KQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=f403045e257e28dc3405464b7dcd
Subject: Re: [oss-security] CVE request -- linux kernel: crash by spawning
 mcrypt(alg) with incompatible algorithm

--f403045e257e28dc3405464b7dcd
Content-Type: text/plain; charset=UTF-8

Do we have CVE for this? If not so why don't we have one? Thanks!

Regards, Lokesh

On Jan 17, 2017 19:51, "Vladis Dronov" <vdronov@redhat.com> wrote:

> Hello,
>
> Algorithms not compatible with mcryptd could be spawned by mcryptd with a
> direct
> crypto_alloc_tfm invocation using a "mcryptd(alg)" name construct. This
> causes
> mcryptd to crash the kernel if an arbitrary "alg" is incompatible and not
> intended
> to be used with mcryptd.
>
> This could be a potential attack to crash the kernel by user program using
> AF_ALG
> to request an invalid algorithm such as mcryptd(md5).
>
> Initial discussion:
>
> https://marc.info/?l=dm-devel&m=148063708010538&w=2
>
> Suggested Patch:
>
> http://marc.info/?l=linux-crypto-vger&m=148096718218312&w=2
>
> Upstream patch:
>
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/
> linux.git/commit/?id=48a992727d82cb7db076fa15d372178743b1f4cd
>
> Red Hat Product Security Bugzilla:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1404200
>
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer
>

--f403045e257e28dc3405464b7dcd--
