Received: (qmail 20283 invoked by uid 550); 25 Dec 2022 16:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14290 invoked from network); 25 Dec 2022 16:45:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rfc/97XAxZet0kSO2ffKwWbV3yY1UXe/9PtHdqWaAc=;
        b=EQHeMInvMRHUFP5L+OEVd8wgHekAQVPQwqQMYot+ObfpABAxwRQvs9SuJS7eQQ6xoe
         dMlKgX8/iE/B349TH8q8vRpIDyc3HcX7Rq2MhXHtcImBHWoTQnP06E7JOhoTNdShZ6Mg
         4l/fMJott9QH2pgwaZlfcc0LwD+XKCBYBOexhQWPwlZKBx+bv3YbWzroTJff2rZqrCK0
         hrBcNaAZ8PmLoPtz2oOHUhGDFtjP+DvFfg3pa4xIxl7KJxQQzwxSO5xiPAMPmmf1AeUU
         0DqDsFduTAH2FUA52zDgJkpRSOQ7sspSnCzd0jhPq8tiLhAfa2EY1T6HWlqnHUu0aaiD
         VXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rfc/97XAxZet0kSO2ffKwWbV3yY1UXe/9PtHdqWaAc=;
        b=sBlx78i0MnE5IbWIPs5RHWtoy9/9+u6gBS90wFaQsLJb6hhky9f+ek9Lzu4k/WQtHn
         W1UE3/yKwgwXJKe0HZ+6uc/Cl6o8W4loYyyQ0roh0ANWC++xycxCa3DvViHqNqcnPEmh
         rtHNrcPqB4pmVyFNK7+HwxG8QdWrGn2cuhmtauoGLKUUz7lB2gzoWs0eROXfStaj8FJC
         6wrQP2d6qpyaBY7XnYROprNfb4TwCTKow5uxQefJUyYj2QyinRqmXDkk01Ke/7LesWP+
         VexjNZps2EnOogvR8g594//lUZcrN9X23yEihlDUdlj1G8kCgoNSTlVkoKBHNnv5lraj
         f3Yg==
X-Gm-Message-State: AFqh2kq6flVCRJoZzCAagOErAK+N4Pn2ciC116t8azQ5ldq3nX7T0MhO
	kVg3DXTa+tDYVZ+Y8sCkMM0EH9Qz4K4yCCOCfUSuJSET
X-Google-Smtp-Source: AMrXdXuBhsa0LKrxbcdupoBVwL9PW/BhlXz+k++bjtX+CCRH/XSBfhwrMy+Xy7gR1PYGvOBREL4sMondHYG9pdAJskM=
X-Received: by 2002:a17:906:c794:b0:7c0:f9eb:61fd with SMTP id
 cw20-20020a170906c79400b007c0f9eb61fdmr1191874ejb.562.1671986727001; Sun, 25
 Dec 2022 08:45:27 -0800 (PST)
MIME-Version: 1.0
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
 <20221222144445.i6z7fifqily6uej5@jwilk.net> <20221222150448.5wyrhot7ikhp75j7@mutt-hbsd>
 <Y6XcJ+tcf1Cg1jkZ@momentum.pseudorandom.co.uk>
In-Reply-To: <Y6XcJ+tcf1Cg1jkZ@momentum.pseudorandom.co.uk>
From: Dominik Czarnota <dominik.b.czarnota@gmail.com>
Date: Sun, 25 Dec 2022 17:44:50 +0100
Message-ID: <CABEVAa1OxWqS9UAMZCLH7-9oLgHurv+bfRG1gsvYikuZv6CAXQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

> To me this seems like a parsing problem, not a VFS problem. (...)

Indeed, it is a parsing problem, but if you have to split by ')'
or/and read data from the end of file in order to parse it properly,
that's not the best design.

It is probably the lack of proper documentation and examples that
causes devs to make those mistakes since it is hard to think or account
for all edge cases. Escaping the rendered output or using a standard
format like json/xml would probably cause less mistakes like this.

> Others have a simple and well-defined format
> (like /proc/self/environ and /proc/self/cmdline, which are sequences of
> \0-terminated bytestrings), and those also seem fine.

The format may seem to be well-defined, but it isn't. Nothing stops a
process from changing what is rendered in their /proc/$pid/cmdline and
/proc/$pid/environ files.
The data in those files is rendered from mm->arg_start and
mm->env_start user-space pointers respectively [0][1] and it can be
changed either by:
1) modifying the underlying data, e.g. overwriting the memory under
argv[n] envp[n] in main
2) changing those pointers with the prctl syscall with
PR_SET_MM_ARG_{START,END} and PR_SET_MM_ENV_{START,END} flags [2]
3) or by the setproctitle (3bsd) function [3]

The `man procfs` page mentions that the `environ` file content may
change, but it doesn't do so for the `cmdline` file:

```
   /proc/[pid]/cmdline
      This read-only file holds the complete command line for the
process, unless the process is a zom=E2=80=90
      bie.  In the latter case, there is nothing in this file: that
is, a read on this file will return
      0  characters.   The  command-line arguments appear in this file
as a set of strings separated by
      null bytes ('\0'), with a further null byte after the last string.
```

I understand we may not want to change what is already there to not
break existing applications. But adding new files with well-defined
formats and extending existing man pages sounds like a reasonable
solution.

[0] get_mm_cmdline -
https://elixir.bootlin.com/linux/v6.1.1/source/fs/proc/base.c#L255
[1] environ_read -
https://elixir.bootlin.com/linux/v6.1.1/source/fs/proc/base.c#L941
[2] https://man7.org/linux/man-pages/man2/prctl.2.html#:~:text=3Dsince%20Li=
nux%203.5.-,PR_SET_MM_ARG_START,-Set%20the%20address
[3] https://www.freebsd.org/cgi/man.cgi?query=3Dsetproctitle&sektion=3D3

Best regards,
Dominik 'Disconnect3d' Czarnota



On Fri, 23 Dec 2022 at 17:50, Simon McVittie <smcv@debian.org> wrote:
>
> On Thu, 22 Dec 2022 at 10:04:48 -0500, Shawn Webb wrote:
> > We knew way back then the dangers of VFS-based wizardry. Did we lose
> > that knowledge somehow?
>
> To me this seems like a parsing problem, not a VFS problem. Some
> pseudo-files in Linux /proc are one file per item (/proc/self/oom_adj,
> /proc/self/sessionid, most of /proc/sys) and those are fine[1]: the
> structure is implicit in the filesystem layout, and the file contents
> are trivial to "parse". Others have a simple and well-defined format
> (like /proc/self/environ and /proc/self/cmdline, which are sequences of
> \0-terminated bytestrings), and those also seem fine.
>
> It's the pseudo-files that contain more than one item, particularly
> those with a semi-consistent format that aims for human-readability, that
> can easily get into escaping and parsing issues. If those pseudo-files
> made *more* use of the VFS (one new file in /proc/self for each field
> in the current /proc/self/stat?) then they would suffer from different
> issues instead, like inability to read all fields atomically and maybe
> performance issues for heavy users, but parsing would become a non-issue.
>
>     smcv
>
> [1] or when they're not fine, the issues are around things like how to
>     separate an AppArmor enforcement mode from the label, which again is
>     a matter of parsing a human-readable format with structure
