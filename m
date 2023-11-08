Received: (qmail 7382 invoked by uid 550); 8 Nov 2023 22:50:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21703 invoked from network); 8 Nov 2023 20:46:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699476391; x=1700081191; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+RLhJ1lPzx9WkAdqdO2jWIg6e1EgoxXR+VS+iCHmYyQ=;
        b=I+B6qZkdojsyETNMElyZiEyafIHJKpsaQOOCMRGcGgo8L3vxvq69T3hhG+cUqDyh23
         flLcdfSHmePFBojo0EmDTAekR0L0DpWNzKIE3w3XAExHlLvQ975f4MLYvZCnVON72biO
         uS0M1LeGujGtqedhslINEeZZLM6q+W+vX16kB98mi8Dt/JYm799/WOxm65rcGQTuI/ci
         bnwbxQrT7PWrdQ1dMP1sdPhhyBe72ULbWWjdm6p3jCrIakc6ZJbFnWpOpU2Cx/dxTcXK
         jetdI+4MkWZ8xyHKIa1oIzzMsrkvRYlIR4qqcMrmzyw7pAhawAO9a6q6WV3DnWsxAiNx
         YdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699476391; x=1700081191;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+RLhJ1lPzx9WkAdqdO2jWIg6e1EgoxXR+VS+iCHmYyQ=;
        b=dNP63j5IXvKlT7QU2pVIoiTVqHe3iIS0Uqq4aldhU5Yk3Km8oKvOUkQTVmw32D/JEw
         UK+0YCZC3BHFs+d/UpLyYBGGUz0Bo1f7Oj8CuHkyzLLak7C043d9+jiyleDoQ8AXNCq8
         z+mnes8Ar2GYeQPj/vH0Dej6p6hc/iiGxKR3sZ+IARJApsof2QcStatS5C2MX1ZIuSGP
         B4bwn/2i/3bPppeRnBnjVInicNB7NHyr/xlzzrEcLkPZcRY4ZwefX1AhBJZ0HEMhbmpm
         KuUjsgO0QVkFYatItfkLA8tlrPab8lh9mLs8dQoMgNZ5EBxIoPqnUYsdB5/3pfzWnLoT
         ihVw==
X-Gm-Message-State: AOJu0YxTENjQYguGX73V60NHpdsDCvOXyOGoLapxEsHpE+4eaGzZV2Be
	CM14KK8W404odTBgd99vy2piu+RJDX5uAQFtwMu5Euln
X-Google-Smtp-Source: AGHT+IFuiRjs6drAMoZpOLri6f5vNlO/IK5oPpJDZSk5jBPD1pbIHWLHwEGgR3NhB50dNb9qu2nl7NutX0IVXr4woxc=
X-Received: by 2002:a81:7145:0:b0:59b:5696:c33 with SMTP id
 m66-20020a817145000000b0059b56960c33mr2650435ywc.46.1699476391065; Wed, 08
 Nov 2023 12:46:31 -0800 (PST)
MIME-Version: 1.0
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
 <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com> <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
In-Reply-To: <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
From: Jean Luc Picard <atari2600a@gmail.com>
Date: Wed, 8 Nov 2023 12:46:13 -0800
Message-ID: <CADxcaYWdf5tUAdLLMeBVm9pa64_LyWKZ-+GSFpx3DYyWYf3R9g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000097fd7b0609aa2e8a"
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors

--00000000000097fd7b0609aa2e8a
Content-Type: text/plain; charset="UTF-8"

I have a number of natsec-ey google reports that went nowhere didnt't get
credit or a dime out of it.  Most are nullified by the current state of
affairs struck by xAI (ie how to cook crack) but others I still feel should
be looked at by the greater community.  Is this the apprapriate aggregate
platform now?

On Wed, Nov 8, 2023, 12:35 David A. Wheeler <dwheeler@dwheeler.com> wrote:

>
> > On Nov 8, 2023, at 12:52 PM, Vegard Nossum <vegard.nossum@oracle.com>
> wrote:
> >
> > I am not a lawyer, but I'd assume you would run into some issues with
> > the naming of all this -- wasn't that the exact issue that somebody else
> > ran into when they tried to assign identifiers to bugs that MITRE
> > wouldn't acknowledge? Here's what they said back then:
> >
> > <
> https://cve.mitre.org/news/archives/2021/news.html#April022021_Message_to_DWF_from_the_CVE_Board
> >
> >
> > I somehow doubt the presence of the ! makes much of a difference.
>
> The problem in that case wasn't that someone else used "XYZ-" format ID.
> Bugtraq did that before,
> and many others do it today. The problem was that the group labeled some
> non-CVEs as "CVE-...", which
> is confusing and probably violates trademarks.
>
> The "!CVE" group isn't using "CVE", they're using "!CVE". The question is,
> is that distinct enough, or will typical users be confused by it?
> I don't know the answer to that. However, I do worry that perhaps
> "!CVE" is not distinct enough.
>
> I would *strongly* recommend that this group use "NotCVE" or "NCVE"
> instead of "!CVE".
> That would be more clearly distinct, and they already call themselves that.
> I'll also note that searching for "!CVE" and storing that prefix will also
> cause some problems.
>
> This gets into trademark law. I'm not a lawyer. However, I do talk to them
> :-). Trademark law doesn't
> prevent you from *doing* an action, it just prevents certain kinds of
> confusing *names* because
> it's helpful when names mean things. As long as the name/image/whatever is
> clearly distinct
> there's no problem. So where possible, please use clearly distinct names
> for distinct things.
> I think that's a good practice even when it's *not* legally required.
>
> --- David A. Wheeler
>
>

--00000000000097fd7b0609aa2e8a--
