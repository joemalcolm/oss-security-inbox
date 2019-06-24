X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4946" "Monday" "24" "June" "2019" "15:01:08" "+0200" "Dmitry Vyukov" "dvyukov@google.com" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "140" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062413:01:08" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "U       dvyukov@goog Jun 24  140/4946  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190617113203.GH15432@suse.de>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21519 invoked by uid 550); 24 Jun 2019 13:43:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15549 invoked from network); 24 Jun 2019 13:01:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=VOt6/SJk0QdLnI2REK7OLag//gvg+F8Fzs4J9AcJwgY=;
        b=uNCrvWZ+J0ZhEb71FI+MEcGcbKCVmK06ueuFqj4niaV+/tNhWPZBm8wW4uRdD3HWgM
         /LLoWArV4El9QGuR/RdumI8ec6b/tkqeaQELXXMNiBR3J/OHawFOSoSEoUJQmNYuIjpF
         Eja1liaguuL6SJuv/FHD+9901wEKtxV8MqcsPwXtrmOKO5MRW3bm/bgI9jY2xtRDE6bZ
         JO8MxbS1zB6K0SKsW78HF0xSoSaolLbPWTwDX3/92NhFVGwMF/+3IRCGH9FGnOH58V0y
         kasBGhrnmEcG7QE5/eBeSRnROzAOMRjFAKOGBaAWhdsx4jm5oUf2AZRPIgBD9uDivz1F
         gusA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=VOt6/SJk0QdLnI2REK7OLag//gvg+F8Fzs4J9AcJwgY=;
        b=S5wgfUGU2WiBw67IWyryPyZY4r9EI6w3UOvn7bW6lPE994a36+BUwhNC3Y1dfeXogv
         KPr1GmDqRtOACQbQSShI8x2+RY13EvtjTnbX27TQ3JrShbgaoTzgXBLATZ8JmEfppdPT
         WNF2od/WVrmajdNpCDkt3a7vfekNqiB3oT8K1zpmefvasd+0e2ZRtRYE9YyPuaqSLAwo
         d/zcAc0KwCtP6IslqEIgqfBof2CKl1XHLkKwLGAz8sRcqm5Bk2SzF8yZOiMTbcMH76pk
         vsWbH0aK+MRrfoS/nInObG/hEvEneI2wdFSX6iqjK96XaUMPgc+++I8Kf46988W6nlmV
         fPyA==
X-Gm-Message-State: APjAAAWlexSQ2slMV+u0ttVZxPZ+W45Bj/V08qr33M40XIywDVldHHCA
	PlQGi0Tp2o1nyh4lisNkBSSDUxKDnqB+MsDK8S/4c6rADtY=
X-Google-Smtp-Source: APXvYqy8L7sHOWYgHsPCtTHg4F8q4Ns2LMrGztuFZJockvJEfvMU/XZtlemV0l37HoEt0X15dCsfDdnnkTq3iAv5PZI=
X-Received: by 2002:a6b:641a:: with SMTP id t26mr11142097iog.3.1561381279957;
 Mon, 24 Jun 2019 06:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
In-Reply-To: <20190617113203.GH15432@suse.de>
Message-ID: <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 24 Jun 2019 15:01:08 +0200
From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, Jun 17, 2019 at 1:32 PM Marcus Meissner <meissner@suse.de> wrote:
>
> Hi,
>
>
> On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> > Hi everyone,
> >
> > OSS-Fuzz is Google's project to provide continious large-scale fuzzing.
> > Since it launched in 2016, it's found just shy of 3000 things it counts as
> > security bugs [0][1]. I'm not a developer of OSS-Fuzz (at Google), but I've
> > helped several projects integrate with it.
> >
> > You can see that it's had some amazing success across a variety of projects
> > -- I've written previously to this list about the things I thought made it
> > particularly effective working with ImageMagick and GraphicsMagick [2].
> >
> > Today I'd like to highlight what I see as a tremendous issue: very few of
> > these security bugs ever has a CVE issued for it. This is probably due to a
> > few factors, a) the relative difficulty of obtaining a CVE, b) the lack of
> > a human reporter who is interested in obtaining one for "credit" purposes,
> > c) the sheer number of bugs that we're talking about.
> >
> > CVEs are not important for their own sake. The true value is in all of the
> > downstream processing that uses them as input: the Linux distributions that
> > use them to figure out what fixes to backport, the docker security scanners
> > that look for vulnerable code on the system, the corporate
> > threat-intelligence feeds, etc.
> >
> > A test of a random ImageMagick vulnerability against Ubuntu Xenial shows
> > that it, indeed, continues to reproduce.
> >
> > This is in addition to the >100 security bugs OSS-Fuzz found and publicly
> > disclosed due to hitting their disclosure deadline, and which still have
> > not been fixed [3].
> >
> > I haven't analyzed any of these vulnerabilities for exploitability, and I
> > doubt anyone else has either.
> >
> > I do not have a solution to this problem. I wanted to raise awareness of
> > it, in the hope that it would start a discussion which might come to a
> > solution.
>
> So as this was not yet discussed, lets have it closer look at the gaps
> in the workflow.
>
> (I am not going into the orthogonal approaches, like surface reduction,
> mitigations, replacement etc.)
>
> "topic" vs "automation state"
>
>
> Bugfinding:
>
> - Is manual to fully automated these days, and improving.
>
>   The fully automated bugfinding is a significant contributor to amount of bugs.
>
> Bugfixing:
>
> - Largely manual. Some research in automation by DARPA et.al.
>
>
>   This is a significant gap of the scale issues, automated bugfinding
>   can easily overload opensource projects.
>
>
> Security IR Tracking:
>
> CVE Allocation:
>
> - Mostly manual, some tool help at most.
>
>   Significant gap here (as you wrote).
>
>   This seems to be low hanging fruit... There is nothing stopping to
>
>   - allocate big CVE blocks to "automation sub-CNA"s
>   - have a OSS-Fuzz / Syzkaller / whatever CNA doing automated CVE assignments out of this block

Hi,

I see syzkaller come up already. Yes, syzbot (automated continuous
kernel fuzzing) has the same problem: thousands of crashes, most don't
have any security assessment (too expensive):
https://syzkaller.appspot.com/upstream
Besides the update problem, there is also bug fixing problem: loud
CVEs attract lots of attention and gets fixed quickly, but require up
to months of manual labor (per bug). "Just a use-after-free" may not
get any attention, while being more harmful in the end. Even a WARNING
(Linux kernel term for a non-fatal assertion) may be a VM info leak in
the end.

So what are community thoughts on automatic CVE assignment?
That would definitely get some attention to these bugs by vendors
(because that's open CVEs in their products then). And this should be
implementable because both OSS-Fuzz and syzbot are automated enough
already. However I afraid that these CVEs may be as automatically
sorted into a trashcan then :)




> Rating:
>
> - largely manual / partially automated, done by NVD and distributions seperately.
>
>   Could be automated by "type" by the fuzzer, similar to above.
>
>
> Structured Vulnerability information storing:
>
> - Not really existing right now.
>
> - On top of CVE:
>   - referencing reproducers
>   - affected versions
>   - ratings
>   - referencing patches
>
>   These could be supplied / attached by automatisms in a automation CNA.
>
>
> Distribution tracking / update preparation / packaging / QA :
>
> - done by distributions, largely manual to semi automatic.
>
>   With better structured upstream vulnerability information storage its automation
>   could be improved.
>
>   Some thoughts are going betweenm distributions on sharing information / load, but as this
>   is a competition issue this might be hard.
>
> So main gaps I personally see:
>
> - bugfixing automation or help at least
>
> - (better) structured storage in a global database, either CVE or something entirely new.
>
> Ciao, Marcus
