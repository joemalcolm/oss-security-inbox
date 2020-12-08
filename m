X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2206" "Tuesday" "8" "December" "2020" "17:18:04" "-0500" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>" "56" "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil "12" "2020120822:18:04" "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" (number mark "U       robertcwatso Dec  8   56/2206  " thread-indent "\"Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?\"\n") "<X8/iqSaDQqige53U@gmail.com>" ("<CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>" "<X8/iqSaDQqige53U@gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3787 invoked by uid 550); 8 Dec 2020 22:20:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1860 invoked from network); 8 Dec 2020 22:18:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=khSXPr+aKXvdZVZtyfR5Qg4kc2Awu0SsMP7XMtZfINA=;
        b=M0XvKK1BUczCu8v98K4AbX2MfEsIU6q3CL8nTkBmwvCtmthO7BTrLPL2SjxZse3vA/
         trbd2O9GPkHniDAs6Jr6GQ+rUWlHLroSv8wA6X09Ujlzmudi1SKrVkKps1uJr5Ugpq8P
         CCCyW4dgu9AeYGAd4llPehIqLYIG4D7e7f4oHU38A0OYb8YY9PLLhbPBOkDpO6RMF1LC
         r56ocAjIFEO/27qqYhOC7DWiIj6BPX461IE9PHqT3ly2OveHnkpoMDF9FGIfUIhYlZ0n
         n89mJLG0bQ9hy2/n8O83vkF7Tl6LW4x3foiFIimi1LT8LElctf4fSN0kS+h8ieGMSHK6
         I6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=khSXPr+aKXvdZVZtyfR5Qg4kc2Awu0SsMP7XMtZfINA=;
        b=GIpi5NOyuxYWpyaUi1wQi2ZuDwkZWh6e1ilNUJUWTDufxoZU8mHCNVCzn46FVhJIkI
         0Fy81YcrmBJgSBFL8EdaoWJFd8m9CR1VsY5AEeg4Q3tnCERPXPGxuzX2rvkR/0kjRtAe
         8siwohSxV/IMS+ggWdkjx5ItVH8SmqdXpw/BEv9X5NPfEju/GkN8ACM8tJub8TMo+o8F
         fNGOFiuHkugEAqc8Yy7YUQo5eTLuolA+kDMuR49k/KV/PNBsoqocOPwT7KWWLg04HQDL
         zTwhTIKbUmp9tX4Cj9BGMFZrb5xD0s3pM5HJkQCrG/uGddPwCbiPxQBpNo3ajElyCoB0
         UdzA==
X-Gm-Message-State: AOAM533NVnJOwP07dvKX366kmlU6YGzvTaN7R9NhAlOkF19DuYClw1xa
	5O5mzFfFPhud8uzubwxqajFHLOOIGkVDfXfMoVua9+GLifQ=
X-Google-Smtp-Source: ABdhPJzAs+2n3DHiMUw8QpjKsWfltzziynztHeOKiRGjFeDDTXg0n5RWed32Nvn5ZJ3qjLLOaNDgyeGJW4dbE0ZVR1U=
X-Received: by 2002:a0c:aa0e:: with SMTP id d14mr30254699qvb.26.1607465894859;
 Tue, 08 Dec 2020 14:18:14 -0800 (PST)
MIME-Version: 1.0
References: <CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>
 <X8/iqSaDQqige53U@gmail.com>
In-Reply-To: <X8/iqSaDQqige53U@gmail.com>
From: Robert Watson <robertcwatson1@gmail.com>
Date: Tue, 8 Dec 2020 17:18:04 -0500
Message-ID: <CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a6d99a05b5fb51eb"
Subject: Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or
 too low impact for CVE?

--000000000000a6d99a05b5fb51eb
Content-Type: text/plain; charset="UTF-8"

Question from a retired programmer but security novice... Since fuzzing is
used to find bugs in other programs, doesn't it need to be held to a bit
higher standard in order to maintain credibility?

On Tue, Dec 8, 2020, 16:12 Eric Biggers <ebiggers@kernel.org> wrote:

> On Tue, Dec 08, 2020 at 08:01:14PM +0100, yersinia wrote:
> > At this link, multiple security bugs of various kinds are highlighted in
> > very widespread basic cryptographic applications, which have then been
> > corrected. I haven't done a deep analysis on all of them but I haven't
> > found any associated CVEs of some of them. Do I have to assume that they
> > weren't all that important or that the process of reporting them was
> > missing? Thanks
> >
> > https://github.com/guidovranken/cryptofuzz
>
> Fuzzing can easily find large numbers of bugs, and it's usually unclear
> what the
> security impact of them is.  So if people want CVEs, someone has to
> actually put
> the effort into analyzing each bug and (if applicable) filing for a CVE.
> Presumably just no one has done that for the above bugs.
>
> Something similar happened when I added fuzz tests to the Linux kernel's
> crypto
> API last year.  In less than a year they had resulted in over 100 bug
> fixes.
> Most didn't *seem* too concerning, e.g. most were bugs in crypto drivers
> that
> seemed to be rarely used, or crypto algorithms that seemed to be rarely
> used, or
> edge cases in the crypto API that seemed to be rarely or never encountered.
>
> The bugs in userspace libraries found by cryptofuzz look somewhat
> similar.  They
> include some of the same kinds of bugs, like mishandling zero-length
> inputs,
> mishandling data passed in specific chunk sizes, or bugs in weird
> algorithms.
>
> However, in both cases it isn't possible to be certain of the impact and
> applicability for a CVE of each bug without analyzing each bug in detail,
> which
> would be very time-consuming, and in general it's no one's job to do that.
>
> Likewise, syzkaller has found thousands of Linux kernel bugs and most
> haven't
> had CVEs filed.
>
> - Eric
>

--000000000000a6d99a05b5fb51eb--
