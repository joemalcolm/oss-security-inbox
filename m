X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1019" "Tuesday" "2" "November" "2021" "11:23:50" "-0500" "Josh Bressers" "josh@bress.net" nil "30" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       josh@bress.n Nov  2   30/1019  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15880 invoked by uid 550); 2 Nov 2021 16:24:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15862 invoked from network); 2 Nov 2021 16:24:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bress.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Rm6HDAaWmed0UfAq5bBL3yIOTIa/LK3r+YRG2vcvERk=;
        b=T/uF8mSEE213gwmJH0pQNO5KLrbf161CB4bmj+IqFnFLKmEK+8wby+SMDccQnzuCts
         K5581E/edJ87UZZjUqXWjBT5gcUNEOGHjdm8wyD2MVtaxm8fF9XVP5VuOAqmtDmz4g9t
         Ze9BfqWlMTgV0Fdpc2xSh6P837JgU4tBjTlIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Rm6HDAaWmed0UfAq5bBL3yIOTIa/LK3r+YRG2vcvERk=;
        b=VBmCkGIL43v7w8o/Ei+sFssKuud7Gx11xbu1tVRZCH/8iWzvKR/+CJ5/n917cxaA2P
         chN6BKc/zLciDiYD15TT584Q2B/lw7JvljsyLIRj7lwTj6FTGZJSGqfRKe4kTDujbvwF
         U2r/KuqThS0GFF9swRqfGUYVF8zBaVJnR3To+pIvHcOtlv2zWLlg9L/3kRVBoaLUZMOz
         xvaN+zFidlonrPk/yQpczYxJ4z+Wv8fH3J/9IopEn6TDIQQj0oTldC5zxETmFdo0M3dO
         cfQ+viQa6OgP18PKFBE6rCxMLclHMfsb+1d67VcUq4NW6RnKDoZCUbspsymxbNjJ1Snl
         DITw==
X-Gm-Message-State: AOAM532kyYdjz20/aUctKTCve9HxvoS0+dx4fL11SXhHkCkcJkNJxmMi
	fdFh6i5DlihXhLM4zwnDMPBPXyiun8Oqs0y66fvz19waLBEoJD0C
X-Google-Smtp-Source: ABdhPJyhvv1YOgYPlTLxio4ZhrLVgaslwd1Mjlr3gTlld/RPtib1r6R0EW+ah+n0PK3jv7IjbQdnoweb8WLSC1zRtNA=
X-Received: by 2002:a5d:9b86:: with SMTP id r6mr27536902iom.50.1635870241191;
 Tue, 02 Nov 2021 09:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk> <D57DA3B6-A316-4E54-8DFC-AD70D0D08AC4@dwheeler.com>
In-Reply-To: <D57DA3B6-A316-4E54-8DFC-AD70D0D08AC4@dwheeler.com>
From: Josh Bressers <josh@bress.net>
Date: Tue, 2 Nov 2021 11:23:50 -0500
Message-ID: <CAKoP-y8CEv=h4a-ckLe+_p4WJk-CwzuXVCbBXTd8HrG+TSNmTw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a00a9105cfd0b8b8"
Subject: Re: [oss-security] Trojan Source Attacks

--000000000000a00a9105cfd0b8b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 2, 2021 at 10:56 AM David A. Wheeler <dwheeler@dwheeler.com>
wrote:

>
> However, I think it=E2=80=99s important to realize this is a special case=
 of
> =E2=80=9Cunderhanded code=E2=80=9D aka =E2=80=9Cunderhanded source code=
=E2=80=9D aka =E2=80=9Cmaliciously
> misleading code=E2=80=9D. Underhanded code is source code crafted so that=
 the
> source code looks like it does one thing to human reviewers, but it
> actually does something else. Homoglyphs are a common mechanism of attack
> (e.g., 1/l or O/0), as are misleading indentation, etc.
>
> The first reference I can find to underhanded code is the 2004 Obfuscated
> V Contest (http://graphics.stanford.edu/~danielh/vote/vote.html) created
> by Daniel Horn.
>
>
You could argue the obfuscated C contest is related, that goes back to 1984.
https://www.ioccc.org/years.html#1984

--=20
     Josh

--000000000000a00a9105cfd0b8b8--
