X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Friday" "8" "October" "2021" "23:27:37" "+0200" "Yann Ylavic" "ylavic.dev@gmail.com" nil "25" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       ylavic.dev@g Oct  8   25/911   " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8127 invoked by uid 550); 8 Oct 2021 21:34:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5274 invoked from network); 8 Oct 2021 21:28:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RsTRH1PVDd/7JJtR/R510GgcEOdulrNmjbUgdZ7uTzM=;
        b=l2ignmxCqtGHi7IK+TSNhA89xqLM0SxYCkphwpSkhxU27Jx8RoQC8nscDcEEoqdTKk
         rEuGF+5+TR+hqFYq4h7GDVro2BksTHXL+21U9ny7DJ/2P7fXPCfDKOKFWehoWlsL/rQw
         40CMMe1t93eMkqmRyFF13byjHVOeG0cQExS6JeuSEYGkQxMTxI+f4dqeWF0xss5BkoqC
         UU0seAZC1WLgsfJEU/6zHe51YFTIImmDg1YFcfKpz8lmJgqie33EgGru/Ejl0QGaEDP3
         7wibEmcZZK7ZrKvgyvEOVS+S9SvsQvNsAFakKU1pCvCWz8iICClF4b83ZMcW8RPeyoi2
         OMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RsTRH1PVDd/7JJtR/R510GgcEOdulrNmjbUgdZ7uTzM=;
        b=K5LtkI+LPFVdmupRNQpOdSafxJ5Va1liahKQ7Cqzav2lCGddrtrUQRLyD+KUET1jOQ
         WPWIjz3oCFRlsvSYDtb5BKKyfsCmeqVwuZ2W+5MUzCAMRAefCnN9lYbRA9Pr+YLqiaf9
         I2a113aMaq3WSfycbn2BwpmWtdUn6BlRjknetSJOzTtRZafMJ3p0D6d2zD5Fw5FE0z3r
         nfVmUbiHNYmBpz8ksxejVgxYMtDdGgtrEphsO856Zq/CnBL1Lk/Dqdla4lnvu7k02LIw
         xV0y+7wmzH41vLPERhrJ5pLYulf7dPweipmisueNyU0oHXXhsXCeAx9seWkWVWH396Mi
         xT+Q==
X-Gm-Message-State: AOAM5337fHugjO6QU4IcyGfZAYYVuKgVeIibPquCCdP7w4rgoOrIbSUk
	Lgqux6hYeW0v6jpf1j9RHhMrCuDLcI8nxZ1bOTLEBTFS5Hs=
X-Google-Smtp-Source: ABdhPJzC/xAdlM66vSQcKJuOf+lEwxbL9wARyo69Nw6loT90J3Iibou6b8MLEfh8aCG/sgXq1h8HAsLR2AfSNUCI2pg=
X-Received: by 2002:a05:6402:5114:: with SMTP id m20mr18407571edd.256.1633728468653;
 Fri, 08 Oct 2021 14:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
 <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com> <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
 <20211008210821.GA2660@openwall.com>
In-Reply-To: <20211008210821.GA2660@openwall.com>
From: Yann Ylavic <ylavic.dev@gmail.com>
Date: Fri, 8 Oct 2021 23:27:37 +0200
Message-ID: <CAKQ1sVOHOU+iVCkeK1AqFDWhHq4uM8p9Hrx+XTen=fsJ=VxQyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)

On Fri, Oct 8, 2021 at 11:10 PM Solar Designer <solar@openwall.com> wrote:
>
> On Fri, Oct 08, 2021 at 08:37:33PM +0200, Yann Ylavic wrote:
> > On Fri, Oct 8, 2021 at 8:53 AM Roman Medina-Heigl Hernandez
> > <roman@rs-labs.com> wrote:
> > >
> > > I posted RCE exploit for this (it works for both CVEs: 41773 & 42013)
> > > and some other details regarding requirements / exploitability, which
> > > you may find useful at:
> > >
> > > https://twitter.com/roman_soft/status/1446252280597078024
> >
> > Thanks, that's fair analysis.
>
> Yann is probably referring to the full tweet thread by Roman, not just
> the one tweet that Roman posted in here.  Let me correct that:

Exactly, thanks Alexander and sorry if I wasn't clear enough.

For completeness I'll add this tweet/blog from Stefan (OP) about the
vulnerability and the fixes in httpd:
https://twitter.com/icing/status/1446504661448593408

Regards;
Yann.
