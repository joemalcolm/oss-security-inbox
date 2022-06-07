Received: (qmail 22203 invoked by uid 550); 7 Jun 2022 10:35:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13771 invoked from network); 7 Jun 2022 10:14:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nv2IFY9tx80kBQz3mxtNu7qGNznLPOP2tAx5b/WeP0o=;
        b=B9WEeTjayYTyBwyvbiXMOas6fAR8nKnzdA3JeB39+/0cXH4qYsO7XrHkp0QXNFNtdH
         zgbtuwGOZ7kLm1UyXc71BOXRc5iM3gj/oUhvRwyb+v2tWhurO1V35p6BsOV4Ebylxa3M
         v3X8QUwztCsCSsrN9DJ2wOoehyF7Ud+igpsq8ZemDXrAr0dj20j8M6BtPZBpf7U2YGn/
         QENvLwOYDE6J7VAFsxi1xICah/BJOmluSndk+Svy5k0BJkB8fRCWYo22YruzKFcLpm2h
         MBTkFUetk1GltDe8r3HJwAMnj3iay3H0X8N+Uwb7ZLYM4Dkng2ypk7YueA6rEPJJD9QG
         muhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nv2IFY9tx80kBQz3mxtNu7qGNznLPOP2tAx5b/WeP0o=;
        b=5Ujs71LjdMPY5jbIyKe6+RHR/uzembbceT+JzakaYEg6FZ87Ysw3eGrqIlNUi6mPY4
         u6zL6qvJrQMZCRzIDZeAJwxTfs4u1drk0+tpCAG0KqDHAJgzjtOKPGqiPLLquMnWANxe
         1mOHPdhyuJHQuutUsYR9CeA7hAXvHTDlpCaWqZmN0NlyPcMpAt77nk8WpVwwsnC+7KEO
         gIT0LniaH5lLVCuVQ/dW5RJYPrwIRQDBqSuSLk2rv/lHT/oOQrOUwz1GWkoUZ9vx0aTr
         gslztR7Ny9EIbrAuGBPk4hqA0tCPsPP0jlQMBvMPEAP/jgItFFxu0RZEXBFUl/BW9V0u
         VF+A==
X-Gm-Message-State: AOAM5328tHjixfrCudtArkaY49t6tVkRHiqt4LARGTRadzW0gyuloC3A
	JtOZQYrPdRZqwPNF+kc+AhyFimAY2NZFZ+8fays=
X-Google-Smtp-Source: ABdhPJy8gkt4R+Tb68ReiGOondEH8vj8Mt3WxK86o+rz2kJnSAtaGbVvfMJcomZnZv5khEFGhkdJwPC84OTf8SXKKe4=
X-Received: by 2002:a05:6871:606:b0:f5:cd73:62ec with SMTP id
 w6-20020a056871060600b000f5cd7362ecmr22280958oan.147.1654596883698; Tue, 07
 Jun 2022 03:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <CA+eGCHb3=V20Fh-dda20O6xtfBszuKmHnqSupsmrz_1Xuj3N4Q@mail.gmail.com>
 <CA+eGCHa47pnvi376PCQJE-zMaVR_y6WLTK4CyE-yKT87jDZKuA@mail.gmail.com>
 <20220601125513.GA8558@openwall.com> <20220604202219.GA25285@openwall.com>
In-Reply-To: <20220604202219.GA25285@openwall.com>
From: tr3e wang <tr3e.wang@gmail.com>
Date: Tue, 7 Jun 2022 18:14:32 +0800
Message-ID: <CA+eGCHZT2BdNnH1ZAb5u7j3=OoRbSBpXeOeZmgGj9r7J3Nj39g@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-4204: Linux Kernel eBPF Improper Input
 Validation Vulnerability

Hi,

The exploit code can be found at https://github.com/tr3ee/CVE-2021-4204

Alexander, thanks for the update and for helping me post the exploit
code, I suffered from network outage last week.

tr3e

On Sun, Jun 5, 2022 at 4:22 AM Solar Designer <solar@openwall.com> wrote:
>
> Hi,
>
> I've attached the exploit from the linux-distros thread - hopefully, the
> right one.  (I really shouldn't be the one doing it.  The exploit author
> is most qualified to do it, as required by linux-distros list policy.)
>
> Alexander
>
> On Wed, Jun 01, 2022 at 02:55:13PM +0200, Solar Designer wrote:
> > Hi,
> >
> > In context of the recent discussions on linux-distros list policies and
> > their enforcement, I looked at some of the previously handled issues,
> > and identified that the below wasn't properly handled/enforced.
> >
> > tr3e, since you had shared actual exploit code with linux-distros, you
> > were supposed to post the _code_ to oss-security within 7 days after
> > your initial public disclosure of the vulnerability.  However, you only
> > posted "the exploit overview" and promised that "Full exploit code will
> > be published on github in the near future."  Apparently, the latter
> > never happened, and it wouldn't have satisfied the requirement anyway.
> >
> > Please post the same exploit code you had shared with linux-distros to
> > this thread on oss-security ASAP.  Thank you!
> >
> > Alexander
> >
> > On Tue, Jan 18, 2022 at 09:26:43PM +0800, tr3e wang wrote:
> > > Hi all,
> > >
> > > This post is the exploit overview of CVE-2021-4202.
> > >
> > > We successfully exploited this vulnerability to obtain full root
> > > privileges on default installations of Ubuntu 20.04.
> > >
> > > *Exploit overview*
> > >
> > > 1. We create a lot of BPF ringbufs, and choose one of them as victim.
> > >    The BPF_FUNC_ringbuf_reserve allow us to have a pointer A to the
> > >    beginning of the victim ringbuf's data field.
> > >
> > > 2. We do a pointer subtraction to point back to the victim ringbuf's
> > >    mask field and overwrite it to 0x80000fff through
> > > BPF_FUNC_ringbuf_submit.
> > >    This allows us to do a limited out-of-bounds read/write. If lucky,
> > >    we can read/write all the fields of the ringbuf behind the victim.
> > >
> > > 3. With the full control over all fields of the ringbuf behind the
> > >    victim, we can manipulate the ringbuf to achieve a restricted
> > >    address read/write with side effects in the vmalloc space.
> > >
> > > 4. We spawn many child processes, and use restricted address read to
> > >    find the address of task_struct and cred in the vmalloc space.
> > >    After zeroing out the uid/gid/... , full root privileges obtained.
> > >
> > > Full exploit code will be published on github in the near future.
> > >
> > > Regards,
> > > tr3e
