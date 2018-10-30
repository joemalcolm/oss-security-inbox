X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1842" "Tuesday" "30" "October" "2018" "16:24:54" "+0100" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZd4OdWkWzh6e9t67MJysyQi=qXY2PQsDwczobS1U5Ln-g@mail.gmail.com>" "39" "[oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the timer subsystem" nil nil nil "10" "2018103015:24:54" "[oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the timer subsystem" (number mark "U       andreyknvl@g Oct 30   39/1842  " thread-indent "\"[oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the timer subsystem\"\n") "<CA+fCnZcE=6dyUeU9CazgUR_yHTerNYXiK0gQNzjFSwjG=G-1uQ@mail.gmail.com>" ("<CA+fCnZcE=6dyUeU9CazgUR_yHTerNYXiK0gQNzjFSwjG=G-1uQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28162 invoked by uid 550); 30 Oct 2018 15:25:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28144 invoked from network); 30 Oct 2018 15:25:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iVNB198ZhiW3uIuId76CiSYYBYxHCKOcaWVsPTvDjmk=;
        b=a6amX7MELtXq/2qcT+n0PPWw490ZegeR/y3A5g1MWR3EXy4OQ+qHliNPaVLzQFP4iz
         dznPzKEUoDuQJopwLTZp5Xd/LrDxT6uN7MQtR3cIUeIRdmdwobkaveRpY5Y8Ju/GyJK7
         TnYdJWP29Kji89YZMlk+7316uSHYzMp/75qWmXDcjNMZu8GKanqWgILSnyzM2ydasXNT
         B/v/NIYC+g+4LYLfCRaQxIMoldm2XH9N7006509OiurGS69QtvOFq+1wZWURU3LaVFV+
         oKevLGCZjXOEkdwSxXkGvIsi7x0P59JeQQM4ai7uasu4r/o9pID3l4ZlDJXuzVpG3sdb
         DoBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iVNB198ZhiW3uIuId76CiSYYBYxHCKOcaWVsPTvDjmk=;
        b=ZvlfVYJsPDfp9WgjFI5DqbC2Y7C3tNJUp0FxTSQ7R+OUjax1P/r7VA16OEvX0UKzyP
         ma7EiGVRc4QV9Pvy358Ka2cWqzUsk2aAXdKqC7BbnrHCJMC/ZisNXiyZitxAYp1FUTos
         TsnIzM4YZkoZNdBAymtLji0hLYYwXJtUvVUPL+NsTRITqkse+ZP0ein+2Wzt3I6ZwgfV
         Sx75qoTVxUQXBHn+7i+Rzg05nBAYN+uODyJhUp/SJtvQk4fExC6bNcOUPbnJ+cm/lg1R
         q6H6IE5c1vFgUOLgcJa0myDuUv6L+PVCMPUwBIjbTAZbgRcDeDVoJoRTDBxlq8t44oXw
         ViQA==
X-Gm-Message-State: AGRZ1gLeMpCG1k8ZH3gX94ulO1J65K8jW/J4cihUfu9bei0BqpfgoIkJ
	mMMm8TDEDcWmmYHapqdLUY4kZ/F3bAfHoocLdQha+LuU
X-Google-Smtp-Source: AJdET5cWs0NwDXbfv3ahHTQ2AhfOmTlxGrxSuLo1CHmMv5LcPn9S3rM2Y7hGyK2o6LG8XxVyYN42ZWDPgmYkCKsccS8=
X-Received: by 2002:a19:48d0:: with SMTP id v199mr2301224lfa.104.1540913105242;
 Tue, 30 Oct 2018 08:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+fCnZcE=6dyUeU9CazgUR_yHTerNYXiK0gQNzjFSwjG=G-1uQ@mail.gmail.com>
In-Reply-To: <CA+fCnZcE=6dyUeU9CazgUR_yHTerNYXiK0gQNzjFSwjG=G-1uQ@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Tue, 30 Oct 2018 16:24:54 +0100
Message-ID: <CA+fCnZd4OdWkWzh6e9t67MJysyQi=qXY2PQsDwczobS1U5Ln-g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Kostya Serebryany <kcc@google.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Kees Cook <keescook@google.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the
 timer subsystem

On Thu, Aug 2, 2018 at 8:57 PM Andrey Konovalov <andreyknvl@gmail.com> wrote:
>
> Hi!
>
> Syzkaller/syzbot found a global-out-of-bounds bug in the timer
> subsystem of the Linux kernel [1], that is exploitable and can be used
> to gain an arbitrary-read primitive. This allows to access kernel
> memory and leak keys, credentials or other sensitive information that
> is stored there (so the bug has a similar impact to Meltdown). I'll
> share a PoC exploit in a week.
>
> The bug was introduced in commit 57b8015e ("posix-timers: Show
> sigevent info in proc file") [2] in 3.10 and fixed by commit cef31d9a
> ("posix-timer: Properly check sigevent->sigev_notify") [3] in
> 4.15-rc4. The bug only affects kernels that have CONFIG_POSIX_TIMERS
> and CONFIG_CHECKPOINT_RESTORE enabled, which is done by a lot of
> modern distros.
>
> This bug has been fixed in Ubuntu 16.04 [7], but still affects at
> least CentOS 7 at this moment (at least 3.10.0-862.9.1.el7.x86_64 that
> I've checked). I haven't checked the other distros.

[...]

> Then I decided to take a look at the CentOS kernel. I was quite
> surprised to find out that this bug hasn't been fixed there at all. I
> was under the impression that most Linux distros either follow stable
> kernel branches or monitor upstream commits for security related fixes
> themselves. It seems that this is not the case. Perhaps this fix was
> missed because CentOS 7 kernel is based on the 3.10 kernel version,
> and the 3.10 stable kernel release stopped being supported in November
> 2017.

This bug has finally been fixed in the Red Hat kernels [1] (so it's
probably fixed in CentOS as well, do they use the same kernel?), which
took another 3 months since my announcement on oss-security and 11
months since the initial syzbot bug report.

[1] https://access.redhat.com/errata/RHSA-2018:3083
