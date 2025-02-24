Received: (qmail 5185 invoked by uid 550); 24 Feb 2025 17:01:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18129 invoked from network); 24 Feb 2025 16:57:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1740416247;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=V6PeCmHGVe13+IhIj1uhUIFY4qo6kGtB33XD8obP9YM=;
	b=HHrGzbKlD/rL2I9QJqbVn54vyqjF4lv+zS6kh1kSiXpYDM7X25kJrr53asPl39Ym4D3vR/
	dh1TqG+ftHcHZ6/978qsi+zrXUUkaFX4bXTeH9AxgYlmqTC4igtugkNa6TkJEqERw9Md4B
	H5M0zILN5axwfX//xmy/znH0D1aJCrA=
X-MC-Unique: 2ZNS6kPFP629s9d-ibGy8A-1
X-Mimecast-MFC-AGG-ID: 2ZNS6kPFP629s9d-ibGy8A_1740416245
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740416244; x=1741021044;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V6PeCmHGVe13+IhIj1uhUIFY4qo6kGtB33XD8obP9YM=;
        b=edTG/w9nOWztiwkeu0EMS4sIPIuyA3dcCqloYY+v975rmwZinGQ4ICm/bXlhM/Jxyz
         f9KMiyjWnVDjPHUuvUx36OZ4ipeoPdt10sOAytgVdJVhD+fnRUWaxlHYI5ItgYI25pSg
         hDvXf5FA+DMQJ3ObaS7fffb6C7fHThh6T1asCFsLE6w5g0/H+82cCKBVJxRISOHiWToh
         LyviVfHR3K3N2XV6tnwdFcF1WXDZPZfYxXGJB8bdyDL3bsdrZ7if6wuCTqSQPhcIR72B
         RHcpjh9VzUgC3zwZoWLzgsBlS4CDdY71CigdVSbS1feVSOgaqUWTBHHoNoG1/cOoyBB6
         ZJzQ==
X-Gm-Message-State: AOJu0Yz7StML8PEljA259Ig9ylIi6eeeRqyTldvLDD6LG9GPNCQxQ6Pc
	382zkh4WYtc80QPTKaZVOw7x4vcMPAQ5Lr0Upp7LWzy9ZuglrOLf2Ysa2cUqh8c6CknaPYGg1nc
	Q9oa9b4XT+T9S0qTRVOeyPywcdh6mvOVvSwwnuAwuUlOYHmJFeaE5n3dXdgQEGAyV0d31GBuUoT
	T1cJRnHzhEJbTXLis9/SCotMfDjqiRkI5pEAmfL3tV0LgautnAnqc=
X-Gm-Gg: ASbGncsDpYUOgT/DpIhPehHAFERofCgM6Zk1o3fAVCSPWCLLeH01eHzq2y3cc2PbqI6
	lt/EKW5MWwAP7bXMrzTvJ9qDQC8/wE+hTV9I/YsbvJib8GwG6fVJ2gLCeXOQDFYLpISmfug==
X-Received: by 2002:a2e:b615:0:b0:308:f01f:182d with SMTP id 38308e7fff4ca-30a80c97f05mr44951fa.27.1740416244295;
        Mon, 24 Feb 2025 08:57:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJNWht6+cYJz3SR14rN3VGD3/PVIvL8NvL0sO1N6NiCOag8abPDMbQzUgKIKL9xjA77T0DkNh2Z+ojQZx1+eo=
X-Received: by 2002:a2e:b615:0:b0:308:f01f:182d with SMTP id
 38308e7fff4ca-30a80c97f05mr44861fa.27.1740416243848; Mon, 24 Feb 2025
 08:57:23 -0800 (PST)
MIME-Version: 1.0
References: <20250218091414.GA26981@localhost.localdomain> <20250222032521.GA30890@openwall.com>
In-Reply-To: <20250222032521.GA30890@openwall.com>
From: Dmitry Belyavskiy <dbelyavs@redhat.com>
Date: Mon, 24 Feb 2025 17:57:13 +0100
X-Gm-Features: AWEUYZkyczy5XSuvgFpyFRCfv-GcVoAo7LEzwmPmgoATbciLIvJ4B1fzBBNQhgc
Message-ID: <CAOcQRVX639qNrgqbKjPFpZL0_SHEdpGrcLmbLySH15fE5p5Pwg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>, Jordy Zomer <jordy@pwning.systems>, 
	Damien Miller <djm@mindrot.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RbOy6yXImPdyqeHle923UAYbSjkAaTal98iz7bBHERk_1740416245
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000f9f5a8062ee63b65"
Subject: Re: [oss-security] MitM attack against OpenSSH's VerifyHostKeyDNS-enabled
 client

--000000000000f9f5a8062ee63b65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Alexander,
Thank you for your efforts!

On Sat, Feb 22, 2025 at 4:27=E2=80=AFAM Solar Designer <solar@openwall.com>=
 wrote:

> Hi,
>
>
> I didn't go as far as CodeQL, but I also did some semi-manual auditing:
>
> grep -A100 '[^a-z_]if.[^=3D!<>]*=3D[^=3D]' *.c | less
>
> and then search for goto.  I did this against patched OpenSSH source
> tree installed with "rpmbuild -rp openssh-8.7p1-43.el9.src.rpm" hoping
> to spot any issues there may be specific to this older base OpenSSH
> version or Red Hat's changes to it.
>
...


> I then diff'ed the output of the above grep command vs. the same for the
> openssh-8.7p1-43.el9 tree, and similarly reviewed code for all lines of
> grep output that are added for openssh-8.7p1-43.el9.
>
> With this, I also only found another uninteresting bug (see below).
>
> I wonder if such review could also be automated with CodeQL (or maybe
> even the classic Coccinelle?), or if it's beyond tools' capabilities?
>
> > 2025-02-10: Advisory and patches sent to distros@openwall.
>
> Qualys did in fact share a patch from upstream OpenSSH developers, which
> I now see is identical to changes that went into 9.9p2 (which also
> includes some other changes).  As I found this focused patch helpful for
> my code reviews and fix backporting, I also attach it here.
>
> I also attach my result of applying the patch to openssh-8.7p1-43.el9.
> I reviewed that whatever hunks did not apply were in fact inapplicable
> to this version.  I also added a fix for my uninteresting bug one:
>
> +++ openssh-8.7p1-43.el9-tree.qualys-retval/ssh-agent.c 2025-02-21
> 04:01:32.677160367 +0000
> @@ -700,6 +700,8 @@ process_add_identity(SocketEntry *e)
>         if ((r =3D sshkey_private_deserialize(e->request, &k)) !=3D 0 ||
>             k =3D=3D NULL ||
>             (r =3D sshbuf_get_cstring(e->request, &comment, NULL)) !=3D 0=
) {
> +               if (!r) /* k =3D=3D NULL */
> +                       r =3D SSH_ERR_INTERNAL_ERROR;
>                 error_fr(r, "parse");
>                 goto out;
>         }
>
> This should prevent logging a confusing "parse: success" message on
> "k =3D=3D NULL", as r could have been set to 0 on the line before.
>
> This issue is also present in upstream OpenSSH 9.9p2.
>

This is relevant, thank you!

>
> As to my uninteresting bug two, it's illustrated by this patch (also
> attached here):
>
> +++ openssh-8.7p1-43.el9-tree.krb5-ssh_asprintf_append/auth-krb5.c
> 2025-02-21 03:37:13.106465704 +0000
> @@ -309,13 +309,14 @@ ssh_asprintf_append(char **dsc, const ch
>         i =3D vasprintf(&src, fmt, ap);
>         va_end(ap);
>
> -       if (i =3D=3D -1 || src =3D=3D NULL)
> +       if (i =3D=3D -1)
>                 return -1;
>
>         old =3D *dsc;
>
>         i =3D asprintf(dsc, "%s%s", *dsc, src);
> -       if (i =3D=3D -1 || src =3D=3D NULL) {
> +       if (i =3D=3D -1) {
> +               *dsc =3D old;
>                 free(src);
>                 return -1;
>         }
>
> This is in RH-added Kerberos support code.  The issue was that if the
> second asprintf() call failed, it'd leave *dsc undefined, yet the caller
> of this function would free() memory via that pointer.  In practice,
> glibc would either leave the pointer unchanged or reset it to NULL
> (varying by glibc version and specific error condition), both of which
> are safe to free().  Yet resetting "*dsc =3D old;" should be safer, and
> should avoid the memory leak that happens if *dsc got reset to NULL.
> That memory leak shouldn't have mattered anyway because it'd only occur
> when the process already has trouble allocating more memory here.
>
> The "src =3D=3D NULL" checks are dropped because the first one shouldn't
> matter if asprintf() behaves correctly and wouldn't help if it does not
> (as src isn't initialized to NULL before the call), the second one
> is wrong (was probably meant to check *dsc, not src), and further code
> in this same source file relies on asprintf() return value anyway.
>

I'm not sure that the check for the  src =3D=3D NULL should be removed at l=
east
for the 1st branch.
Unfortunately I came across implementations that caused segfault on passing
NULL pointers to sprintf-like functions.

--=20
Dmitry Belyavskiy

--000000000000f9f5a8062ee63b65--

