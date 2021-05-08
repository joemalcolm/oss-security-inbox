X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1426" "Saturday" "8" "May" "2021" "14:32:45" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "55" "Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug" nil nil nil "5" nil nil (number mark "U       butterflyhua May  8   55/1426  " thread-indent "\"Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18289 invoked by uid 550); 8 May 2021 06:59:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9558 invoked from network); 8 May 2021 06:33:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=tSKJboQl3IAQe781/NiDkIN6zV7VYXpyqGWbIlk1E98=;
        b=bK6WYN2/cQk9MiSahv/KChaofvNd2SPry/RxDSHCjdE49JqsvWRGShgLnNCsTwLPj+
         WObdu2FDBI+4/rFQX82CDpzcu+0VXLQdWRqDg7p5WlNimnhZtVug7eNtzHKkm52c7kfy
         +noaWYwFrazgcQFd8sApbMlGIl9Pw6TvzD0PTUEepzjQETz3acXQOMrQQiY+lHeiSYZO
         ovtBC+yxC/udNdhGNX74JstEL/CC1KQkW2HlXzRSRlAe05fxu5pNYG4ijBpVD2CVij7H
         KTgmCZPyPYaXTsBo+H2T+fnktGy0KWuS0pWQ0sbosyRNQc9efNHHeFzaEpKGtFZ2VD8E
         lyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=tSKJboQl3IAQe781/NiDkIN6zV7VYXpyqGWbIlk1E98=;
        b=fzwfNANpOUA996NltZ4vtjQmhlE+GWRSfRIXgd4iyjIQwf6UzhzV4DfTmm2SQTMWKj
         O2o2XHG0MZkmkluXpbGnWC6JD+5g2PCINnEfvFZzUJ5EGrjFAwy4g+PexC78WwsKb9Nm
         c7a+4NmBY4S6m1yrUbY+hTpAWMFgBCu6RW8l9QvQRkPIpUbyxUOyZ0zK7FAW09YxEXmb
         SGXUl/pJxriG/6g+2n/vcBOGTj08RHCYqY2o5yxluuk64LXFzZ4mHfHdTHWpVEY2FBBh
         hDA/s/2DO7GgLUy8M8i3oVAyijQSy8XizxtDE8A5D/nIML8boYcNDMqwRwc3Q0GjzlYE
         rQ1A==
X-Gm-Message-State: AOAM533apcZvdP9cNGjLnviXqb/sm6kmV21dRZmrHBQNI0GAIAzHJtXk
	qt6Ibv+EMxGpMDozY7hWSu/6lEY7lWsUshUrcp9B7WgJSpE=
X-Google-Smtp-Source: ABdhPJwq95Y9incJ08gG0T/CV9oJVEZBk4UkU48ylRaF21XjyB/dh8ggYlIhED/rtKnKTxsI8YQAufPHzegp93BYR6g=
X-Received: by 2002:a5b:ccf:: with SMTP id e15mr10922094ybr.365.1620455575313;
 Fri, 07 May 2021 23:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XO2k=X2H24tg_GTgoTQMLv=0ajAyuyeK0YKgvqiM5vPWg@mail.gmail.com>
 <CAFcO6XOOjFd7XKuMVDyGXka+jdk3=RXFAe2a11SV20_JZzYHqw@mail.gmail.com>
In-Reply-To: <CAFcO6XOOjFd7XKuMVDyGXka+jdk3=RXFAe2a11SV20_JZzYHqw@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Sat, 8 May 2021 14:32:45 +0800
Message-ID: <CAFcO6XNzAKQ2Pwxbi-KPqCtY_8Ex3UribKrFGgr28ghsnNaK=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: f2fs: out-of-bounds memory access bug

Hi, RedHat has assigned CVE-2021-3506 to this issue.

Regards,
 butt3rflyh4ck.



On Sat, May 8, 2021 at 12:24 AM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> The patch is for this issue in upstream linux:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git/commit/?h=dev&id=b862676e371715456c9dade7990c8004996d0d9e
>
> Regards,
>  butt3rflyh4ck.
>
>
> On Mon, Mar 29, 2021 at 12:00 AM butt3rflyh4ck
> <butterflyhuangxx@gmail.com> wrote:
> >
> > Hi,
> >
> > I reported an out of bounds memory access bug in get_next_net_page()
> > in fs/f2fs/node.c and reproduce in 5.12.0-rc3. Now the patch is out
> > and tested it in 5.12.0-rc4.
> >
> > Root Cause:
> >  the f2fs_flush_nat_entries()  function is called during the
> > checkpointing process,
> > when it flush dirty nats in nat entry sets, it will call
> > __flush_nat_entry_set(), but before call it,the legality of nids is
> > not correctly tested. If the nids is out of range, may access
> > out-of-bounds memory.
> >
> > Some details and Patch for this issue:
> > https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2520013.html
> > Now the patch is not available in upstream, CVE is not assigned.
> >
> > Now announced on oss-security@lists.openwl.com.
> >
> > This issue was discovered by the ADLab of venustech.
> >
> > Regards,
> >  butt3rflyh4ck.
>
>
>
> --
> Active Defense Lab of Venustech



--
Active Defense Lab of Venustech
