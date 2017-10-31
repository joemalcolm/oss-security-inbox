X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1043" "Tuesday" "31" "October" "2017" "10:41:48" "-0400" "Adam Shannon" "adamkshannon@gmail.com" "<CAONXncapSQ4ZT2ffu3jOwefoeyRTO9p_xpUrhrXjOXNaAc1gYg@mail.gmail.com>" "30" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103114:41:48" "[oss-security] Fw: Security risk of vim swap files" (number mark "        adamkshannon Oct 31   30/1043  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031135005.GA12455@openwall.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031133559.7aqu2z45atxudb7c@jwilk.net>" "<20171031135005.GA12455@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8063 invoked by uid 550); 31 Oct 2017 15:17:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6008 invoked from network); 31 Oct 2017 14:42:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=dZZ3jDlqT4/LKN1Yji9878FeklGzlenxnI32uwBh6s0=;
        b=ts4YvFVcTyO/i5MAMkalVilIBGZ8XzFEzn/PRyA9pITfExPReLLG7/iKEpqbOnQjQk
         VNJG5TYfvcJQ1EErABpbAXLzyY20Cg+V+5cmAVoi7J2hgToJeI07YWhnaw9ec7yn/86m
         EFuiJDCh+E6wP0fEKw7Y93itK27Q32v4H3uT6j5YI2dmgbuLd7pV8fIBhoazv7faxO9Y
         /Hg1e0574CqRuxPUUsFicQjDkMW2NEWyHPNoIWmCtsqVlW0rBK+P34UQdeMXJz2YY/S/
         t8xR9k4WFx8VHH4BbuWTgvM2cXYJU6RtvyaEC63UtVNJybcrpXY4EjA1Ea12SKPwpf0k
         J9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dZZ3jDlqT4/LKN1Yji9878FeklGzlenxnI32uwBh6s0=;
        b=ibX41PexwsBoWa2faHgAJ8ZqUDhQPTteP5IM9Hp01VN56yat44Fcc9fP4nIaj8jTuh
         YuCRsPxbcHGePwG9Gj9RNWbWKDB9TzgpSy2zOIMEQl+5wlUdS6uz6TH+oM5pgSLUgdXJ
         0ZFgJoLT3q3tuGqo1FtbqleYGJsHXzAMqtsBLbjt1iVIA9ZSs1Oyc4L7DNotskYK2Slb
         k3jUu9FMHvnl8tTe0R2cdqUyI0aq4r6zMf+yBPInRu2qpph7GRTtMpAGlfMbj27/EduL
         krm2qA9IoOeEU+VMYCgfG7fy3Xt0/LyZ7OpIxam3OHIkO89HX7z3uysty2lYrZnAZtnH
         1zrw==
X-Gm-Message-State: AMCzsaWOm69FUOb+lQvhaX+JelZaDAVm0isa1x1iQEgpcQ67sZJNLExP
	XowSAPXdZjvHKrt513v+IdQA8S3H4rYekGsbvflWxQ==
X-Google-Smtp-Source: ABhQp+TgTqFe0vALSj00gBFnz09f87fnWrSGhRBX9nwysCgFMbjLQmJ3Z3id9vOYljBPHfV7hBadLwcDf7Kz4W0o1WY=
X-Received: by 10.37.186.9 with SMTP id t9mr1462241ybg.307.1509460928608; Tue,
 31 Oct 2017 07:42:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171031135005.GA12455@openwall.com>
References: <20171031132352.2df6d2ad@pc1> <20171031133559.7aqu2z45atxudb7c@jwilk.net>
 <20171031135005.GA12455@openwall.com>
Message-ID: <CAONXncapSQ4ZT2ffu3jOwefoeyRTO9p_xpUrhrXjOXNaAc1gYg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403043e8a3c73c2b3055cd8c262"
Date: Tue, 31 Oct 2017 10:41:48 -0400
From: Adam Shannon <adamkshannon@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--f403043e8a3c73c2b3055cd8c262
Content-Type: text/plain; charset="UTF-8"

metasploit has had such a check available for a while now.

https://github.com/rapid7/metasploit-framework/blob/master/modules/auxiliary/scanner/http/backup_file.rb

On Tue, Oct 31, 2017 at 9:50 AM, Solar Designer <solar@openwall.com> wrote:

> On Tue, Oct 31, 2017 at 02:35:59PM +0100, Jakub Wilk wrote:
> > There's another problem with vim swapfiles.
> >
> > If you edit a file directly in /tmp, vim will happily read a swapfile
> > that were planted there by somebody else. Local users could exploit this
> > for denial of service (or maybe worse if there are any swapfile parsing
> > bugs...).
> >
> > Is that a bug in vim? Or is it a user error to edit file directly in
> > /tmp?
>
> Almost all manual uses of /tmp are user errors, yet we could want to
> harden programs to make such misuses less risky.
>
> > In the latter case, we should fix at least vipe(1) and vidir(1) from
> > moreutils; and run-mailcap(1).
>
> Alexander
>

--f403043e8a3c73c2b3055cd8c262--
