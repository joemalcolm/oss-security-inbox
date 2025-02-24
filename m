Received: (qmail 9419 invoked by uid 550); 24 Feb 2025 17:21:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1288 invoked from network); 24 Feb 2025 17:19:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1740417551;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=iihzL26MI4Qt6jDn4LGId4fzSrj/WTX5zxMefu6c4KI=;
	b=cIdmmrTvJtQkTbcJ1hPAAfHdsUN1yckeHlsKd5TgH3CZcEMi55fQW/nOovgEiKUIShON0L
	6x0Yxih1k2327eUjloGvrcrlxrAntFZlzhw8d9/iHncwlQAHGt1hpSppCLxG29yR2hnfZP
	JydXKPcmMzNQsXAP8y7GhTOPxFVsK+Y=
X-MC-Unique: DN8DJm4-O2y2DYdVZva0IQ-1
X-Mimecast-MFC-AGG-ID: DN8DJm4-O2y2DYdVZva0IQ_1740417548
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740417548; x=1741022348;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iihzL26MI4Qt6jDn4LGId4fzSrj/WTX5zxMefu6c4KI=;
        b=QsIgZpIuA0PMAhN+gcZDDMogUgL7lXKOD5YR08hS5r8QMH8XNYmb1mBqRHSbDMGSNC
         GW/ycOBkYwedB08ostHFv1mSdDPa8tP6KIbK+8V/69nYxfosIkzhFeHkwW6nwaq1SOcc
         LNsG2qefR8CcXSWzDKafHR2IhYvhI8x0CMSbcW8yi5zrGc5rSWDFrBEQoeXtSfJOXRBs
         5AZxYqtSDODZyMvIJSdnFYe+YbFHZL+x39nSLuJ2DwJ2vbmj2+OAEv1+v1B77LLDxg27
         JNv8bI3Xzy0klfs6pGzHExFBLd7KC1yytEL1IvNKOF5+TXPtbfY1/C/da2FYtEKgNK0u
         KCLQ==
X-Gm-Message-State: AOJu0Yy3npfQz8QaYeCrF9eHeI9OEJY2f5sJ8XE39KFXg0zO2JjXqWjx
	EAH/pX/wAtLfx0nsK2TuwJlm284VDVzpsOKvH7RwJwDMuB0hu7KyvdJzrhgZg0JcsYnAQi8KYXI
	JZrdZi2898lOSH4MrpTPbTBtPuHUlccWNP0kMbKyGJIrOSm3Ks0V1/uTD2fTD2+kaXQRdTAyikT
	kkWABIppz0iPU1qfpfzlg+71PGXT3jGYOqN51DFSOR
X-Gm-Gg: ASbGncsnjvXaB4XU4hyJyLgVeU8ix+iMWNM5NqaO8sdxuexBicamclE4xPZAULGMvVd
	kdjc0wkG1rWf2bk0hYA1KiZOd3/eEDodhu/56q5/oMnZCjczk++RJvGp9QbQ2AYpS3OZu6g==
X-Received: by 2002:a05:651c:c5:b0:309:d7f:f156 with SMTP id 38308e7fff4ca-30a59895c77mr38639201fa.13.1740417547780;
        Mon, 24 Feb 2025 09:19:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGalvhkg10NfIzQg21uWSRWbUiyHWW6UwUliDzyfzRYAGLbOeFRQ5yoKz1+/LOsegZIw0X9vK0KQ1gejFovtJs=
X-Received: by 2002:a05:651c:c5:b0:309:d7f:f156 with SMTP id
 38308e7fff4ca-30a59895c77mr38639061fa.13.1740417547345; Mon, 24 Feb 2025
 09:19:07 -0800 (PST)
MIME-Version: 1.0
References: <20250218091414.GA26981@localhost.localdomain> <20250222032521.GA30890@openwall.com>
 <CAOcQRVX639qNrgqbKjPFpZL0_SHEdpGrcLmbLySH15fE5p5Pwg@mail.gmail.com> <20250224171331.GA8720@openwall.com>
In-Reply-To: <20250224171331.GA8720@openwall.com>
From: Dmitry Belyavskiy <dbelyavs@redhat.com>
Date: Mon, 24 Feb 2025 18:18:56 +0100
X-Gm-Features: AWEUYZnQUs2PmH9gmZZ9wB_hFLBjmL2CaA1yRUJb_E5KpkuC0629_0Z70GY-RvQ
Message-ID: <CAOcQRVU_vqzL77e=QkB24P5r+1=zkjoDzbNKk=HCkAGpDduR8Q@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Qualys Security Advisory <qsa@qualys.com>, 
	Jordy Zomer <jordy@pwning.systems>, Damien Miller <djm@mindrot.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: j1kGTqp4KEHA99qlIJSIUMl3tVYfd4IsNMR6Yq83l30_1740417548
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000abc449062ee689c3"
Subject: Re: [oss-security] MitM attack against OpenSSH's VerifyHostKeyDNS-enabled
 client

--000000000000abc449062ee689c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2025 at 6:13=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> Hi Dmitry,
>
> Thank you for taking a look at this.
>
> On Mon, Feb 24, 2025 at 05:57:13PM +0100, Dmitry Belyavskiy wrote:
> > On Sat, Feb 22, 2025 at 4:27???AM Solar Designer <solar@openwall.com>
> wrote:
> > > +++ openssh-8.7p1-43.el9-tree.krb5-ssh_asprintf_append/auth-krb5.c
> > > 2025-02-21 03:37:13.106465704 +0000
> > > @@ -309,13 +309,14 @@ ssh_asprintf_append(char **dsc, const ch
> > >         i =3D vasprintf(&src, fmt, ap);
> > >         va_end(ap);
> > >
> > > -       if (i =3D=3D -1 || src =3D=3D NULL)
> > > +       if (i =3D=3D -1)
> > >                 return -1;
> > >
> > >         old =3D *dsc;
> > >
> > >         i =3D asprintf(dsc, "%s%s", *dsc, src);
> > > -       if (i =3D=3D -1 || src =3D=3D NULL) {
> > > +       if (i =3D=3D -1) {
> > > +               *dsc =3D old;
> > >                 free(src);
> > >                 return -1;
> > >         }
> > >
> > > This is in RH-added Kerberos support code.  The issue was that if the
> > > second asprintf() call failed, it'd leave *dsc undefined, yet the
> caller
> > > of this function would free() memory via that pointer.  In practice,
> > > glibc would either leave the pointer unchanged or reset it to NULL
> > > (varying by glibc version and specific error condition), both of which
> > > are safe to free().  Yet resetting "*dsc =3D old;" should be safer, a=
nd
> > > should avoid the memory leak that happens if *dsc got reset to NULL.
> > > That memory leak shouldn't have mattered anyway because it'd only occ=
ur
> > > when the process already has trouble allocating more memory here.
> > >
> > > The "src =3D=3D NULL" checks are dropped because the first one should=
n't
> > > matter if asprintf() behaves correctly and wouldn't help if it does n=
ot
> > > (as src isn't initialized to NULL before the call), the second one
> > > is wrong (was probably meant to check *dsc, not src), and further code
> > > in this same source file relies on asprintf() return value anyway.
> >
> > I'm not sure that the check for the  src =3D=3D NULL should be removed =
at
> least
> > for the 1st branch.
>
> It's OK to keep it.  This really shouldn't matter.
>
> > Unfortunately I came across implementations that caused segfault on
> passing
> > NULL pointers to sprintf-like functions.
>
> Of course, we shouldn't pass NULL pointers to sprintf-like functions.
> But if the first asprintf() call returns other than -1, the pointer is
> supposed to be non-NULL.  And if we somehow don't trust asprintf()
> return value (even though it's standardized, unlike what happens to the
> pointer on error), then the check for NULL is insufficient because the
> pointer may as well remain uninitialized (formally it's undefined), so
> you'd need to start by "src =3D NULL;" before the first asprintf() call
> for this defensive programming to make sense.  And the second "src =3D=3D
> NULL" check is redundant with the first (not reached if src is NULL).
>

Ah. Fair point, I missed that src is freshly allocated. Yes, you are
correct.


--=20
Dmitry Belyavskiy

--000000000000abc449062ee689c3--

