Received: (qmail 14217 invoked by uid 550); 12 Jul 2025 11:04:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3177 invoked from network); 12 Jul 2025 11:02:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=github.com; s=google; t=1752318128; x=1752922928; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5fgLAxBEwJSTgnTQUJEmJrJx8C72rea4v/VR8Y4Ni0=;
        b=TQa1G9B5zvIOZ9ouqPTDC7NxjSTf2b14POOJdwg6ksoqFOhkn7pamba0fsLDyoGkif
         s+LDtBYX3GNltqppx5Odgamb1+2D3Fc+LYYyd5zpbONfgIcpHlinb7sXLSn71YQI7H8j
         wc3ncgV/xQKm24pHu3oZCRgdkmWUEdQQAyPbHYLI0WGW17NNA6NzxXHM1b2VSugmff2t
         F8dKr4Q5KSiDLtdNgQEGEF+E7UvFt0g8fTnHGFhd6KW5opzDrr4blUod9Ubf2e2tNBmd
         B1XwX+fwfy7p8/RPWdmJux5apEwU/8X6HE91XlfAkvkGpnRDXX36CpUrmDms9IrqY6Np
         Pldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752318128; x=1752922928;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R5fgLAxBEwJSTgnTQUJEmJrJx8C72rea4v/VR8Y4Ni0=;
        b=NIGfRj2TH9juWiQDej4+4903vEBEZvHGcLpO+6lww2yV+jmEKmjB6Ef5ge8x3CQmot
         e21XQRlvtRJn79Pijb7tBZo3mxA8U0oIQiwf0x51lqHEB5WHvJr8GYRNWn7fMEyp6meb
         U+fV9jfGXIS7vttE09+X6swcI4uzAxOoM/FsYNcAFJYjADkbnrCh8DXvQRnk/naMAKFG
         eqyAZNn/XPgl7n4ePw8MB1Ax9q8JYjb8CUKo3S3bM9s1VU4ysDBrEgBGb6ab6WpTDpU8
         DFj9X9LXuPngrw3jV1cueL0gDEjfn25QIe3rPAYBN9rZR/a+1TSChKRutcQMsj4p/WkZ
         gh/A==
X-Gm-Message-State: AOJu0YyAdbGSf5KRq9Jb67x2+98Qh5uynAzhfTUeoCsFm5NvXHWXTnNU
	3ZjbCGeBxA5WdtD6t2TalAl59l9eIu3Fy2yssu9IhX10++dPw3z+40Ao3HKSH7MorURsHCQ8oSc
	de1OQbI3ijBmEMO+tNA1+zvtLxEmKnYXjCpRHnXzpCvSE1Zmpb/SfwA==
X-Gm-Gg: ASbGncu9DHcSIB5+i7rdCHRxvFnGp5uUPrt7Jrqxbv4HQNNhmI1O38oLm1F+OhSDyeT
	XPQdhzz6mJmPfWGzzvXMvBA/pvHNepbKQryWXIY3fCqh7D6spbP1YmiRuYOVV5KTzksrsBYp5hy
	Jl2VBjCg6hl0LWg5bfZMrMp+En5YlKp8X//YfENGC5b/XtyZJX+S4st+STVWsN4VqcVZHcczbEA
	kEZG37lkHCm8FHh5D+8XB6+3w1KzHmGP2JHg5MR/A==
X-Google-Smtp-Source: AGHT+IFw1/F9Gu6ja1I9qA8tbYVkZvYEF7fIT0vs9VimUaGO7ivjXqT2x+BMQCEyhUvl8C0DUJAakOuCX1x25maMeBY=
X-Received: by 2002:a17:903:2a84:b0:234:d7b2:2ab4 with SMTP id
 d9443c01a7336-23dede46994mr104271815ad.17.1752318127171; Sat, 12 Jul 2025
 04:02:07 -0700 (PDT)
MIME-Version: 1.0
References: <698574a2-82b8-4769-aef7-2569e2f6621b@oracle.com>
In-Reply-To: <698574a2-82b8-4769-aef7-2569e2f6621b@oracle.com>
From: Kevin Backhouse <kevinbackhouse@github.com>
Date: Sat, 12 Jul 2025 12:01:56 +0100
X-Gm-Features: Ac12FXz8dZnbyGLAd25LJorL5Or0O7SaHxdObCCTae5z7AKgEZQJfzAHg9ogkUE
Message-ID: <CAMmasONXdsUzxN1nCmyVcjQvw_eV-2Ys-4ZPPod_UD93t-MtgQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] GHSL-2025-054: Use After Free (UAF) in Poppler - CVE-2025-52886

Hi Alan,

Thanks for posting this one! I didn't send it to the list myself
because I don't think it's realistically exploitable: it takes too
long to trigger the integer overflow. But for anybody who's
interested, the poc is here:

https://github.com/github/securitylab/tree/main/SecurityExploits/freedeskto=
p/poppler-CVE-2025-52886

Thanks,

Kev

On Sat, Jul 12, 2025 at 12:01=E2=80=AFAM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> https://securitylab.github.com/advisories/GHSL-2025-054_poppler/ advises:
>
> > July 1, 2025
> > GHSL-2025-054: Use After Free (UAF) in Poppler - CVE-2025-52886
> > Author Kevin Backhouse
> >
> > Coordinated Disclosure Timeline
> >
> >     2025-04-03: Reported as a private issue:
> >         https://gitlab.freedesktop.org/poppler/poppler/-/issues/1581
> >     2025-06-02: Fixed by limiting the maximum number of annots:
> >         https://gitlab.freedesktop.org/poppler/poppler/-/merge_requests=
/1828
> >     2025-06-03: Issue made publicly visible:
> >         https://gitlab.freedesktop.org/poppler/poppler/-/issues/1581
> >     2025-06-03: Poppler 25.06.0 released:
> >         https://gitlab.freedesktop.org/poppler/poppler/-/tree/poppler-2=
5.06.0?ref_type=3Dtags
> >
> > Summary
> >
> > poppler uses std::atomic_int for reference counting. Because it is only=
 32 bits,
> > it is possible to overflow the reference count and trigger a use-after-=
free.
> >
> >
> > Project
> >
> > poppler
> >
> >
> > Tested Version
> >
> > 25.02.0
> >
> >
> > Details
> >
> > Use-after-free due to reference count integer overflow (GHSL-2025-054)
> >
> > poppler uses the type std::atomic_int for reference counting in four lo=
cations:
> >
> >     Annot.h
> >     Array.h
> >     Dict.h
> >     Stream.h
> >
> > Because std::atomic_int is only 32 bits, it=E2=80=99s possible to overf=
low one of these
> > reference counts, which can lead to a use-after-free memory corruption
> > vulnerability.
> >
> > We have included a proof of concept which triggers an integer overflow =
on the
> > reference count in Annot.h. The poc file is only 3.1KB in size, but con=
tains a
> > stream which decompresses to an array of annotations of size 0x1000000.=
 That
> > array is referenced by 0x100 pages, which causes the reference count on=
 the
> > annotation to be incremented 0x100000000 times, so it wraps around to z=
ero and
> > the annotation is deleted. Run the poc like this:
> >
> >     pdftohtml GHSL-2025-054_poppler_refcount.pdf
> >
> >
> > Impact
> >
> > It=E2=80=99s possible that this use-after-free bug could be exploited t=
o achieve code
> > execution in poppler. However, in our testing it took 12 hours to trigg=
er the
> > use-after-free, so in practice the risk of exploitation is low.
> >
> >
> > CWEs
> >
> >     CWE-190: =E2=80=9CInteger Overflow or Wraparound=E2=80=9D
> >     CWE-416: =E2=80=9CUse After Free=E2=80=9D
> >     CWE-911: =E2=80=9CImproper Update of Reference Count=E2=80=9D
> >
> >
> > CVE
> >
> >     CVE-2025-52886
> >
> >
> > Credit
> >
> > This issue was discovered and reported by GHSL team member @kevinbackho=
use
> > (Kevin Backhouse).
> >
> >
> > Contact
> >
> > You can contact the GHSL team at securitylab@github.com, please include=
 a
> > reference to GHSL-2025-054 in any communication regarding this issue.
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris
>
