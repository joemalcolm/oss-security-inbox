X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1525" "Tuesday" "18" "June" "2019" "01:19:11" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwSL6OWhK=1kC-q1=9thp7VnTRK5r8oNapF1q7WR_xDw-g@mail.gmail.com>" "46" "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" "^Cc:" nil nil "6" "2019061721:19:11" "[oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" (number mark "        loganaden@gm Jun 18   46/1525  " thread-indent "\"Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues\"\n") "<20190617182023.GA19768@kroah.com>" ("<84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com>" "<20190617182023.GA19768@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based remote denial of service issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16140 invoked by uid 550); 17 Jun 2019 21:26:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1951 invoked from network); 17 Jun 2019 21:19:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B8ttB2XWifWVprmIQKy36ESWU2JUxgB0l92fxK0tYEM=;
        b=GqyMc6cgUOQpMtRigQZBq6Q55PZkSoN3ZfP+EcW7Z4eaRdPuZqEyPlpDCMqLDxYvJO
         pI+mMkJY8AT/D7wHoqavzK/LXuD2X8rL4USKBhD7CJgmqTBFCkKDDThQcJAJ5ActqBoD
         ikjkR+kFJJCpPe+3gHwwjODiYtoQHaVKdoluPLDIwlKKnhs1A+1s1xQMSIWwiK7ruZd5
         etFXotn7OU3ttDVXUm9Derhm1HR+SySf2v4y4W8OHfQzkNKWEYPWelD0aViQjUB7IP/a
         ACyg8b5WjOOmQ57S/C24h2emx7QVsxKiMxrGBkuy7mlydDJQoL+aYZj18OUEHngOeu4b
         G/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B8ttB2XWifWVprmIQKy36ESWU2JUxgB0l92fxK0tYEM=;
        b=oxSBsPJ3sa5vr33lWDP/MFO5b5RmZw6lMLXLrzuVHqwUY3v7VxqtDFEbv712glTji1
         dA3wHmn1/lzkKdB1PGb1PPWc/b3iMIVzNINFM10oD/2/ZivhlgISmwLEQIePuqj1rmd9
         TIFm3L1jSAQPZjL3O65VnlnLyDs+6yfCm1Ekyx+Eza06rwWQluKnBrxfLS6tqKUqOb+S
         VxKKEqAaOrwd0Mr9VacenpBuCR02CQXqxzjboV0SFjSz1YwfPC/eJZAZENFrLlaXLVe5
         rZrZZNrwejI65j3F+sgkJUK0yMKCeVFn9h+7unp8II3ZLxTwhg2aMZrEpj/Z1VP9asGP
         DKQw==
X-Gm-Message-State: APjAAAWboR4NbpnP1RGnlVo/H83JeUnbBEzF1K0VAY3lJNaXp+No59e8
	tqv5Lw2MS/7jhZDEeIU7ingRnnKiBvPlHI8dSs1CimzVusw=
X-Google-Smtp-Source: APXvYqyRj2NOM9Cv8D2czjulzWCjTWDapKTTIfdZH+OElLfIL4dSgTR+UYBG4lJbF8CShaLVkm5xAppJ4eacDSjez1Y=
X-Received: by 2002:a6b:b206:: with SMTP id b6mr68980272iof.286.1560806362664;
 Mon, 17 Jun 2019 14:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <84db7fe5-446a-4445-96db-8445fd43395c@saasmail.netflix.com> <20190617182023.GA19768@kroah.com>
In-Reply-To: <20190617182023.GA19768@kroah.com>
Message-ID: <CAOp4FwSL6OWhK=1kC-q1=9thp7VnTRK5r8oNapF1q7WR_xDw-g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000cf5826058b8b8cd6"
Cc: Security Report <security-report@saasmail.netflix.com>, security-report@netflix.com
Date: Tue, 18 Jun 2019 01:19:11 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux and FreeBSD Kernel: Multiple TCP-based
 remote denial of service issues
To: oss-security@lists.openwall.com

--000000000000cf5826058b8b8cd6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can the netflix guys tell us if they have seen exploits in the wild ?



On Mon, Jun 17, 2019 at 10:56 PM Greg KH <greg@kroah.com> wrote:

> On Mon, Jun 17, 2019 at 10:33:38AM -0700, Security Report wrote:
> > Netflix has identified several TCP networking vulnerabilities in FreeBSD
> > and Linux kernels.
> >
> > The vulnerabilities specifically relate to the minimum segment size
> (MSS)
> > and TCP Selective Acknowledgement (SACK) capabilities. The most serious,
> > dubbed =E2=80=9CSACK Panic,=E2=80=9D allows a remotely-triggered kernel=
 panic on recent
> > Linux kernels.
> >
> > There are patches that address most of these vulnerabilities. If patches
> > can not be applied, certain mitigations will be effective. We recommend
> > that affected parties enact one of those described below, based on their
> > environment.
>
> To answer all of the paniced emails I have already started to get, all
> of these patches are now in the following Linux stable kernel releases
> that just went out a few minutes ago:
>         4.4.182
>         4.9.182
>         4.14.127
>         4.19.52
>         5.1.11
>
> Other than the 3.16.y kernel branch, all other kernel branches are
> end-of-life, and will not be getting updates for these, or any other,
> bugfixes.  I do not know when/if Ben will be doing a release for 3.16.y
> with these fixes.
>
> thanks,
>
> greg k-h
>

--000000000000cf5826058b8b8cd6--
