Received: (qmail 30585 invoked by uid 550); 2 Feb 2024 17:18:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30564 invoked from network); 2 Feb 2024 17:18:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1706894434; x=1707499234; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dXbOosx8RvJ1KTJngkcZbFd0Ry+MyNS5FYeU5EU8PDE=;
        b=eDRsgbb5x0oKGYNo/b5+yEk+uZuV8MHtBB6xMqzCFT8LKiWsQHb1f0GEk51VPItTE2
         p5vgOAmy+psjruWwY7cB9a+2oFZoYeJ3ciTooZSLWRiDsVK/R6aUCfUeBvXapcBmcy4u
         qsk5BzuntJhZLsVJUKF5AEqf3e1qtxfLtnqUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706894434; x=1707499234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dXbOosx8RvJ1KTJngkcZbFd0Ry+MyNS5FYeU5EU8PDE=;
        b=kFQZAPISEpscd5vt0cbZzbaRcBWpQl2/q4EKjl1X4oTxNEkFYFO/lg9IXEUHE2msbv
         EaHapTh85wKU9B1Ne4Peu0DkTMhcDjwy8nOBndI/m4TpphM9fPkgdoprfBXOHnsuiILZ
         RwT+qNj2lXVSw7x8eEdys8kLqlXolCKVIU3djMiHIRK1MaW4mxswmsUHj2PTj17AmUCt
         OOJ9iJRcET99/NNjJSXdxAvUSHDA3MJoO+xmovqch97WuFnGdK38qs2iz+fzdIGeuTQ7
         Ed562Mi2tPagrz06KTOGwQehuepyoVCtJ0HnTdSWUcHo1XgaGsG2v7/2xR8ny266j3XD
         ACaA==
X-Gm-Message-State: AOJu0YyovZm7NZv+qhRwAQx361vQkWolHKqdR3PousClC7gma7ua3Uq1
	iRVvi6kUDihBi3Eoq6uMu8CHe29v5z5oaMlvK+uZVsZ+8On+pH9GN5VlReHLoaJbKvOH4knCT9h
	QQTcW6xC5GA25y0jECoqidPsZFlJqsAVH8BRCCzdwlEV+Gf6J
X-Google-Smtp-Source: AGHT+IGeL7oUwyRif38M8Vo+3O/jnvWvnFEK0GwCT5ayEFWxiaHSLgeIVFvytJjQX4MIKsOzTAGuV9WPa/uPBsomYfY=
X-Received: by 2002:a5d:64e3:0:b0:33a:f798:bfa with SMTP id
 g3-20020a5d64e3000000b0033af7980bfamr2224422wri.64.1706894434163; Fri, 02 Feb
 2024 09:20:34 -0800 (PST)
MIME-Version: 1.0
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com>
In-Reply-To: <20240130142524.GA21216@openwall.com>
From: Armin Kuster <akuster@mvista.com>
Date: Fri, 2 Feb 2024 12:20:22 -0500
Message-ID: <CAKLnGtRy+t5pOtcMrOGppDW4=uUOFZq1ucboRTrzDxDG1_Xcfg@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006af38e061069545d"
Subject: Re: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 & CVE-2021-33631

--0000000000006af38e061069545d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 30, 2024 at 9:25=E2=80=AFAM Solar Designer <solar@openwall.com>=
 wrote:

> Hi,
>
> On Tue, Jan 30, 2024 at 08:46:56AM -0500, Armin Kuster wrote:
> > Not sure if this is the appropriate mailing list to share this
> information.
>
> Since the issues are not specific to one downstream distro, yes, it is
> appropriate and desirable to have this information in here.  Thank you!
>
> However, two things can be done better on further occasions: actual
> vulnerability information should be included in the message body (not
> only links) and the Subject line should explicitly say Linux when
> referring to the Linux kernel (since this list isn't only about Linux).
>
> > I noticed these two openEuler CVEs were assigned two weeks ago affecting
> > some K.O stable branches.
> >
> > https://nvd.nist.gov/vuln/detail/CVE-2021-33630
>
> This says:
>
> "NULL Pointer Dereference vulnerability in openEuler kernel on Linux
> (network modules) allows Pointer Manipulation. This vulnerability is
> associated with program files net/sched/sch_cbs.C. This issue affects
> openEuler kernel: from 4.19.90 before 4.19.90-2401.3."
>
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D3e8b9bfa110896f95d602d8c98d5f9d67e41d78c
>
> This mainline commit is from 2019, "net/sched: cbs: Fix not adding cbs
> instance to list".
>
> > https://nvd.nist.gov/vuln/detail/CVE-2021-33631
>
> This says:
>
> "Integer Overflow or Wraparound vulnerability in openEuler kernel on
> Linux (filesystem modules) allows Forced Integer Overflow.This issue
> affects openEuler kernel: from 4.19.90 before 4.19.90-2401.3, from
> 5.10.0-60.18.0 before 5.10.0-183.0.0."
>
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D5c099c4fdc438014d5893629e70a8ba934433ee8
>
> 2022, "ext4: fix kernel BUG in 'ext4_write_inline_data_end()'"
>
> So the concern is that upstream longterm 4.19.y and 5.10.y (and perhaps
> some others) may still be affected.
>
> The above links don't say anything about attack vectors and required
> access - I guess CAP_NET_ADMIN and raw block device write (e.g., to a
> USB flash drive on another computer), respectively, are the
> prerequisites?  The CVSS scores look exaggerated, especially NVD's score
> of 7.8 for CVE-2021-33631.
>

Thanks for taking the time to explain. Hope to do better next time.

Armin

>
> Alexander
>

--0000000000006af38e061069545d--
