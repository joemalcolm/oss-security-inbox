X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1071" "Wednesday" "22" "March" "2017" "15:19:11" "-0700" "Dave Null" "noid23@gmail.com" "<CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>" "40" "Re: [oss-security] information about pwn2own Kernel problem" nil nil nil "3" "2017032222:19:11" "[oss-security] information about pwn2own Kernel problem" (number mark "U       noid23@gmail Mar 22   40/1071  " thread-indent "\"Re: [oss-security] information about pwn2own Kernel problem\"\n") "<d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>" ("<20170322103936.GB28849@suse.de>" "<9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>" "<d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28047 invoked by uid 550); 23 Mar 2017 11:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20477 invoked from network); 22 Mar 2017 22:19:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=sQ8KSeHuu5gbb6KpvtsDfv+QibZlU+YJ3M22aaHM60E=;
        b=teFjZmjastdKCBPc3L3fPVK49ruWNeEPFgmgXrzqSriT5TAD8FAZTRvsGpxnU+Rp+u
         uvr0qLnraLjEKaKUEmmWccKHf8DSgxWo1pVwR532beio4C46jUyh/57qmgcUPKYFlcME
         hIZnxm8KSLFyRRaoQSc4LbBKLgKjQ/mlbL7L46Ypp369wNSAHxQHI+Ijt/l7YZY1TdEU
         K119Y3L8wrk8v4pfG7ZJqGxe2b+SjhKq3zeV4fLpZqFmGoNxmWeFa44XXvzq0l4kifrx
         IX4iyZOLF00bT7FlNoKtqve8m8jAXfh5iFqIghOXeYXTNZ50Br+mhvZk/bYxE3+MWfbB
         VqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=sQ8KSeHuu5gbb6KpvtsDfv+QibZlU+YJ3M22aaHM60E=;
        b=EMhxkaSn7ECVFF7uipuWTv8j/O1Tb+yi4yRgCfPxnv7ZG/hMeAcpuQJDA7JYnHjIRS
         BfPxcXfXnchiej+cHSUMCRENInTDNgbmyNzbOIBhmJeUVvONJawRYanUySESDUrI4V7P
         OXzKy4wpXAWb6DDpP4J9hmNeI0OiA2qtry636yaVy0/FW7IlWymSL+cTKl7+9e70wKhi
         T3AgdDmL7tUdrL0Ot82ZLCeG1a+QLd3xFUrU+l0AKC4nMRpsLQtlCosdcYtnwLa+4NeB
         7m1q+pW0V9tzBYbpbhA2HLVU3OfKMrxPDkMOmGFoDgDyUKd+IedTXNq6yVCcGYKFfl9Q
         52OQ==
X-Gm-Message-State: AFeK/H0aya7C4uOFuycvYGG8yH5rd5EmBC3sIjZud45EV8K9lKGPUNlY8xo369SkCkTg4EZZjBwbKwT2qJ1MPg==
X-Received: by 10.37.42.4 with SMTP id q4mr20950639ybq.132.1490221151771; Wed,
 22 Mar 2017 15:19:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>
References: <20170322103936.GB28849@suse.de> <9c8c5edd-f95a-b39c-7a85-c39c567068d8@canonical.com>
 <d17047aa-260c-2467-9426-2e128cd7a787@hpe.com>
From: Dave Null <noid23@gmail.com>
Date: Wed, 22 Mar 2017 15:19:11 -0700
Message-ID: <CAOtQxbTJrDdJGp569WtczHGGAV+Nxas6XsNMw7Rw20koE=MXaQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11441e9a63619a054b5926b4
Subject: Re: [oss-security] information about pwn2own Kernel problem

--001a11441e9a63619a054b5926b4
Content-Type: text/plain; charset=UTF-8

I was wondering this myself. I'm not sure if ZDI does any variant
investigation when they pick up a bug. Really hoping this doesn't jump from
a distro related problem to a Linux problem.

-noid

Crypto: https://keybase.io/noid
None are more hopelessly enslaved than those who falsely believe they are
free - Goethe
--

On Wed, Mar 22, 2017 at 1:54 PM, Luedtke, Nicholas (HPE Linux Security) <
nicholas.luedtke@hpe.com> wrote:

>
> On 3/22/2017 2:21 PM, Tyler Hicks wrote:
> > ZDI disclosed the information to the Ubuntu Security team a little less
> > than 48 hours ago.
> >
> > The Ubuntu Kernel team has triaged the issue and came up with a
> > potential fix. That fix is undergoing internal review and I'll be
> > disseminating it via the usual channels once that is complete.
> >
> > Tyler
> Is this an Ubuntu specific issue? Or does it affect the upstream kernels
> as well?
>
>
> --
> Nicholas Luedtke
> HPE Linux Security, Hewlett-Packard Enterprise
>
>
>
>

--001a11441e9a63619a054b5926b4--
