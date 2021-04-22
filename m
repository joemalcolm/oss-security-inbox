X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4092" "Friday" "23" "April" "2021" "01:46:15" "+0800" "r00t4dm" "r00t4dm@gmail.com" nil "106" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       r00t4dm@gmai Apr 23  106/4092  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12171 invoked by uid 550); 22 Apr 2021 17:54:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8155 invoked from network); 22 Apr 2021 17:46:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=6lDbcERVt7v3/ClqKvbJv4FRl2Dp4HfYHjH5dvzG2c0=;
        b=rEUPnvl3i1EbYxiCLtLC8RKCrqTRGt3uXgv3q4Ms6yGbl1gwhMGYSVpW10xkdgQ5NO
         p7ybmgyHbNKwKS2nI31ugfERsP4ZsWsFD2WaO5eaOkST/7jCgpneHpREy0mJVYqa1Pf0
         wOD+ULsl/8jOxlskbRiKS6TKbhu1ame80zl9HTjKxWicxGt0nesGUAFqKaI25bLd6kM8
         Hl61EFnmg27lONYgXqXT/DFYBXrZ7A+GzUWL0y6OLnvkcGlTAGJi5rdiC+8BX6yNOx26
         unYw7OYzcInRN3vtF9uWkzhxk3RsixDs492Of/4yE/YvYtpOV52vQyYZepoXxAeCKg8m
         6Gsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=6lDbcERVt7v3/ClqKvbJv4FRl2Dp4HfYHjH5dvzG2c0=;
        b=j+UoT6LKYaPTJ9SPT1ftf2Yqyjwr70RzbM8/c+UUu6zQ+/wO/R07raz93vigsMO8fQ
         lpqlQJFj43c4Yo5sNLvTKvWyWMDHzsodLfVIp4DNWYhnWHpzhVWjBzFh0asOKkcksL8B
         BF3QbZVbM8U+KABELQo5tetTIX/Hwnb3B86d8wiNKZeb5yp5zu29TooBvttIeo9eVDdL
         MXRtCIhM7YY293Yu09t5kqzMnPK3vIEIkQBEH6aTeacMq8K0SnwLC1rJYfWOd8vhCyQB
         +QciLIWnS5pLu5zU2nGtpvZZvKNr/NWert3DAo0A4g/uqEyQBH+6WIjfdiVwmG5CLS5i
         YbUQ==
X-Gm-Message-State: AOAM533Lluf60bIEuc67D2OBdZcxzrcUdiococcNHIwsONXJDFe9MbWm
	pppVM29f0+LMJK+5Wd89udB+/nZUFSLyGDcjUefp8dPFLMOBqw==
X-Google-Smtp-Source: ABdhPJz/a5NBf5KH+PXO4ZXEzKr2PC1Dgt8prC7cCx+bAxsZQ8SGhqMqtlu5zQp0o4cr0HDP0ESGGD9niy729gU2QHw=
X-Received: by 2002:a17:906:8812:: with SMTP id zh18mr4624364ejb.342.1619113598826;
 Thu, 22 Apr 2021 10:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210422065959.GI13079@scully.more-magic.net> <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
 <20210422095945.GA2495@scully.more-magic.net> <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
 <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
In-Reply-To: <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
From: r00t4dm <r00t4dm@gmail.com>
Date: Fri, 23 Apr 2021 01:46:15 +0800
Message-ID: <CANfkquBFg9cU6YncwaEhFW_OcgV=NNJwpxf2WGq3r=Ax27kG4g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e8ba9205c0934216"
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

--000000000000e8ba9205c0934216
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

This case demonstrates that the possibility of a supply chain attack is
very high.
If the supply chain attack is sophisticated enough, this case may succeed.
e.g:

One day I committed some code, This code is a normal function.
After Five days, I committed some code, This code also is a normal function.

...

After three month, I committed it dozens of times,  But These committed
code together to form a vulnerability.
I don't know how to better guard against this kind of attack method,  Just
only rely on Human code review?

r00t4dm

Cloud-Penetrating Arrow Lab of Meituan Corp Information Security Department


Ariadne Conill <ariadne@dereferenced.org> =E4=BA=8E2021=E5=B9=B44=E6=9C=882=
3=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8A=E5=8D=881:23=E5=86=99=E9=81=93=EF=BC=
=9A

> Hello,
>
> On Thu, 22 Apr 2021, David A. Wheeler wrote:
>
> > Peter Bex:
> >> The university of Minnesota has been banned from making any commits to
> >> the Linux kernel after it was found out they'd been submitting bogus
> >> patches to the LKML to knowingly introduce security issues:
> >> https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/
> >
> > I support research, but I personally think this work goes way beyond any
> ethical boundaries.
> > While I don=E2=80=99t know if it=E2=80=99s *illegal* (I=E2=80=99m not a=
 lawyer!), it seems clear
> to me that these
> > U of MN researchers were conducting experiments on people without their
> prior consent.
> > In the US, experiments on people without their consent is generally
> forbidden.
> > These researchers did their experiment *before* even consulting their
> Institutional Review Board (IRB),
> > a *huge* no-no, and then their IRB approved the non-consensual
> experiment anyway (!!!).
> >
> > GregKH=E2=80=99s response to this attack from the U of MN here:
> > https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/
> > which reads in part:
> >> Our community welcomes developers who wish to help and enhance Linux.
> >> That is NOT what you are attempting to do here...
> >> Our community does not appreciate being experimented on...
> >
> > More discussion: https://news.ycombinator.com/item?id=3D26887670
> >
> > Peter Bex:
> >> I don't know the scope of this research, but it could involve other OSS
> >> projects, now or in the future, as well.  Hence this e-mail.  If you
> feel
> >> it's spam or needless drama, feel free to ignore.
> >
> > Since the researchers failed to get prior consent from the people
> > being experimented on, I don=E2=80=99t think we can presume ethical beh=
avior.
> > I have no faith that these researchers limited their attacks.
> > I hope they did, but I think we can take more proactive measures.
> >
> > I used the following shell command to search for potentially-concerning
> commits in git:
> >
> > git shortlog --summary --numbered --email | grep -E '(wu000273|kjlu|@
> umn.edu)'
> >
> > I recommend other OSS projects do something similar, just in case, unle=
ss
> > we can have better verification that no other OSS projects were attacke=
d.
> > I welcome improved methods to find concerning proposals or patches;
> > this is just a quick attempt to detect potential damage.
>
> The paper says that they used throwaway Gmail accounts to submit the
> patches.  Frustratingly, they have not identified which patches they
> succeeded in landing in that paper.
>
> However, the paper also claims that they generated these "hypocrite"
> commits using an LLVM-based static analysis tool.
>
> Which means the work introduced by Aditya is likely directly related to
> this experiment, since it has the same "feel" to it.
>
> By mining the LKML archive, it may be possible to find the original set of
> patch submissions by searching for similar keywords as the messages from
> Aditya.  If somebody can do that, then we would be able to determine at
> least some of the emails likely to have originated the patches.
>
> Ariadne

--000000000000e8ba9205c0934216--
