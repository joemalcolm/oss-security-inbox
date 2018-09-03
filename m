X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4277" "Monday" "3" "September" "2018" "19:26:53" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhTNDC+Mnj9Rhg5CeTUBgXgc2v83hdMUAXjDH9Uh3g=MeA@mail.gmail.com>" "101" "Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." nil nil nil "9" "2018090309:26:53" "[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." (number mark "U       wmealing@red Sep  3  101/4277  " thread-indent "\"Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem.\"\n") "<20180828125140.GA14413@kroah.com>" ("<CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>" "<20180828125140.GA14413@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18068 invoked by uid 550); 3 Sep 2018 09:27:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18044 invoked from network); 3 Sep 2018 09:27:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=jo1TEYp6K7SMg/cMSMk63Hio+6L0ch5TkBQpuPBkawE=;
        b=lMeHT2oI7TK9kb1qk3n8d2b8TBW1xos68ZhbQ1kQId8itEn2RygvlT9ZAtSfTr8PfV
         lSWLrotPaY32xXxtfuS+wZ97zoMvqlmnNwTfX9Iw3GkJX39I2LQ7OvLyDuoTUv2W0Uos
         svEkeEvpyFm4FXUNtyd2E18TXk0ED19OQ5YtPWi0GbO58J/KOBIHtUNTkrP+c3mTyJYA
         dUJK9MVRGZk80DPKjPsA1JYAiag5Kp7YxOjW6CXDcQEg7URjGnJcu9baBZWDm7wJ3QFn
         aMX9F6theCmq0rSi/H2jBf0qTn7LFgjsdpVb78g4BhMj2BV1jh96e6tWUNreBCDX0xek
         5t9A==
X-Gm-Message-State: APzg51CjBw+ow+RoftcFZ4MWEpVPwE4t4ijJPLITjFKpzCwJ0jiLYGF2
	RaVtLSHDZMA/wEr4O3IP7v0VdonL6lKdCKpsiEIRwW0p61M=
X-Google-Smtp-Source: ANB0VdYa8HxBNH7t/s3/kVA7DGgdahfzcVUju06P0QdeMH+/LUImkVjRVMGWDwV/HiDStN2SJbyApTHmavvJ3CMDlUM=
X-Received: by 2002:a24:4703:: with SMTP id t3-v6mr4310930itb.54.1535966825454;
 Mon, 03 Sep 2018 02:27:05 -0700 (PDT)
MIME-Version: 1.0
References: <CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>
 <20180828125140.GA14413@kroah.com>
In-Reply-To: <20180828125140.GA14413@kroah.com>
From: Wade Mealing <wmealing@redhat.com>
Date: Mon, 3 Sep 2018 19:26:53 +1000
Message-ID: <CALJHwhTNDC+Mnj9Rhg5CeTUBgXgc2v83hdMUAXjDH9Uh3g=MeA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash
 (possible privesc) in kernel crypto subsystem.

> Are we seriously now going to be assigning cves to everything that
> syzbot finds?

It sure is, lets hope it drives up the quality of the code and ensures
that higher
quality code is accepted upstream. A man can dream right ?

You've had questions about why I bring up flaws regarding older code,
such as that tty
(http://seclists.org/oss-sec/2015/q2/560) exploit so I'm glad  to have
this chance to spend
some time explaining you why I work in this way.

> If not, why this specific patch?  What makes it special from the hundreds
> of other syzbot finds that have been fixed (and not fixed yet)?  This
> seems like an odd choice, given:

This flaw does crash the system, its easy for the user to do so, and
it did crash
our build-servers during testing.

So, its not necessarily _this patch_ its patches that either affect
Red Hat as a product
or customers demand. I don't get a choice in what is a security flaw
and what is not, local denial of service
is something that admins care about.  If it comes across my plate and
it fits the definition of a flaw then
it is something that I need to consider.

It would be easier for me if when patches were applied that the
developer would go through the security-flaw process
of getting a CVE number, posting to the relevant security list, etc,
maybe oss-security wont
Unfortunately its not fun, its not glorious and  I end up explaining
why I'm fixing older code to you, all
of these justifications I'm sure you're aware of.

Having those who create the patches do some of the leg-work would make my job
easier and correctly reflect the state of the developers security
posture, changing other peoples process
and asking them to do additional work of classifying a flaw/problem is
likely not going to happen,
which is why we are in the state we are in.

> If RHEL is not exposed, why does Red Hat care about this?  Who cares
> about it?  Anyone running a 4.14.y kernel has had this fixed for a very
> long time ago, and anyone not running a 4.14.y kernel is not affected.

The kernel-alt is an alternative kernel based on 4.14 which Red Hat ships for
certain architectures (See
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html-single/7.5_release_notes/index#chap-Red_Hat_Enterprise_Linux-7.5_Release_Notes-Architectures
).   Its a very similar (but not identical) build config to standard
Red Hat Enterprise
Linux based on 4.14.

While not many customers do run this kernel it is something that Red
Hat ships.  While the flaw/problem no longer affects
your kernel, that is okay! I often investigate upstream bugs that
don't affect the the Red Hat kernels and move on with my life.

These older releases though, is something that some users do care
about.  I think it is worse if I silently ignore a local DOS.
Upstream maintainers may have no obligation or interest in doing the
legwork for requesting and classifying this but it is my job.

> Again, I'm really confused why this was chosen for a CVE here.
> Care to explain it a bit better?

I'd love to see upstream classify and get CVE's for their patches, we
both gotta work within reality though ;)

The obvious technical reason is because it allows a local user to
panic the system,
when a known security fix goes into a product it requires a CVE as
part of our process.

> Is it because you have to have a CVE for every
> bugfix in the RHEL kernel-alt package (something that I would love to
> see happen for various other reasons...)

CVE's are assigned for bugs that have an security impact (DOS,
information leak or privesc).  Not every bug
is a security bug but it is clear that some bugs have a larger
financial or stability concern than others.  I  can only work
on issues that I'm made aware of, this is one of them.

Previous responses to my mails show that you dislike posts made by me
about older code
(beware as more are coming!, redirect to /dev/null if its too
upsetting), there is nothing that I can do about that.
The responsibility that I have is to customers and not to kernel
maintainers. The day that the kernel stops
having these classes of flaws is the day that I won't have a job and
you wont need to worry.

I'd be happy to talk about this further, my job requirements however
are not flexible.

Thanks,

Wade Mealing
