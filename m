X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1940" "Thursday" "17" "September" "2015" "12:33:28" "-0430" "=?UTF-8?B?TWFudWVsIEfDs21leg==?=" "targen@gmail.com" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "45" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015091717:03:28" "[oss-security] s/party/hack like it's 1999" (number mark "        targen@gmail Sep 17   45/1940  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11427 invoked by uid 550); 17 Sep 2015 17:43:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6010 invoked from network); 17 Sep 2015 17:04:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=hUchbmCRfh09BlwUrwAgngMSGL1M1DRfi19xPLLlPt4=;
        b=mvH2hCmsUbKrAZyQIVq5cKP05eOVfEYAE4SjP/JKT4LXWGsGUMJD7TwClIpS8rO3Ir
         /5g27+Sp8tIyCg6+xO+jSAndQUI/v2/IRgTiHMIBcG6cVh5ovPK20wEMdYDpoRF26KCR
         AKMNB+GW0eYcahlyGHILrTlVQbpffJulAjKEqrOWh/mL57hQJDxqTb8xu3Q5dnCoXEnO
         qAAXwC3piKWIxQ3f5QrEjz8ThLux4fiD3kGt9ciB7cF+euyykf/N+zTi3Hj2NE+tAGbB
         UX+HMsQQZ/L7qXFf+FBflSkw2eBwVHFCuc8u5Fm+rR1AzzBR123isKnvXSoyNrJmMAQJ
         ESlQ==
X-Received: by 10.182.246.101 with SMTP id xv5mr169891obc.5.1442509447969;
 Thu, 17 Sep 2015 10:04:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
Message-ID: <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 17 Sep 2015 12:33:28 -0430
From: =?UTF-8?Q?Manuel_G=C3=B3mez?= <targen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

On Thu, Sep 17, 2015 at 11:33 AM,  <up201407890@alunos.dcc.fc.up.pt> wrote:
> Federico Bento <up201407890@alunos.dcc.fc.up.pt>
>
> [=E2=80=A6]
>
> As you can see, our beloved 'cat' cheated on us. Why?
> Because instead of displaying the character-sequence, the escape sequence
> \033[XA (being X the number of times) performed some action.
> And this action moves the cursor up X times, overwriting what is above it=
 X
> lines.
> But this doesn't affect only 'cat', it affects everything that interprets
> escape sequences.
>
> [=E2=80=A6 examples with head, tail, more, curl, wget =E2=80=A6]
>
> 'diff' also interprets escape sequences and so do the resulting patches
>
> [=E2=80=A6 examples with diff =E2=80=A6]
>
> Hint:
> 'less' doesn't interpret escape sequences unless the -r switch is used,
> so stop aliasing it to 'less -r' just because there's no colored output.

Not a single one of those programs does anything to its input that
ought to be considered any form of interpretation in the sense you
imply.  They simply produce outputs that correspond to their inputs.
If that output is later presented to a terminal emulator, *then* some
characters happen to produce effects that go beyond simply displaying
them as glyphs on a screen, one by one.

There is absolutely nothing wrong with `head`, `tail`, `more`, `curl`,
`wget` or `diff`.  They are not meant to =E2=80=9Cinterpret=E2=80=9D anythi=
ng of the
sort that is being addressed, and indeed they do not.  `less` *does*
have special processing rules active by default for input sequences
that would cause terminals to do anything special; indeed, the default
behaviour of `less`, without the `-r` option, is the only mentioned
behaviour that may be considered a form of interpretation.

> It's no secret, most of us rely on 'cat' to view files. I guess this is o=
ne
> black kitty, giving you bad luck.

Perhaps =E2=80=9Cmost of us=E2=80=9D should use `view` to view files.
