Received: (qmail 3655 invoked by uid 550); 2 Jun 2025 18:10:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21629 invoked from network); 2 Jun 2025 17:23:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748884981; x=1749489781; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+mI0hIfvB0Q8e9GpYLt9VQNE173Jydjpglp0fqRqYE=;
        b=ZNhN4+9VNorltLenkQIdGniX1lxufD13tBXMZBfOQihfcRsL5piQFmsrLM179uL/Iw
         9rSZVGWIlksJp5ceTxjM6pV2Mnqbb2b+cgTVdNL2Wg/Mtwr0u7ikidSEnBOCL2K/yyLf
         CPtfmM4d3f5xDnm0qWqFWyXmcbKtLv3y/idifFgqKVM1iwrEbdg0d4cVrETBpIaaXqff
         JPsM6Hy4sEE2ewjX+7t4QvOtid+Q0+iRvzQb/wXpQ299Ol1ubU8/TgjYE6HmP2VJ2XAn
         Wdqz8I5eeUTRRwwe8Q2Tps71dHsmSuZqg1EJLNLAiyYWU7y7VJ4e7wPTQgulyzdrrYLK
         UfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748884981; x=1749489781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C+mI0hIfvB0Q8e9GpYLt9VQNE173Jydjpglp0fqRqYE=;
        b=PfNozeKY7YpsuFfcHLB1+xP5xJwzZAwxSLHv4HBXzZdJ3xKSgRpgbl4g7Me+hNE+Wd
         GnbsfaF5IdlKzq5TEMm66ncjIA5VbVTg+3f4aElbo8WxRfJVHkrsIAY8tesifWJhV51M
         VacnL2VnMWej4kw2rdPeGAEXw0rpul+JBLcE8Mz533il/GiFr5IWVTBAlZLuRfROAKQu
         zlBamR8qO2OE4WBOoBsKAwyetix4opBEjJUJhKRfkg7/nNDAMoY7Q5mVVO2KlXNpmfZh
         JGZQzmxer8cyg9GbSi7PvtGV9cCdoONUlOwpyfgR+D0CTZ/KlnSWRz8ZciwWABa36HaW
         RbFw==
X-Forwarded-Encrypted: i=1; AJvYcCWbLzS9FY9L1soxLVInXlkRdkrLDM1+Vz6ofL2U6QtdAh4Ixh3GErznEiKLw85snyS5xefMO3EoVp3p3lc=@lists.openwall.com
X-Gm-Message-State: AOJu0YwKYa4zYj4bTdjVmqEUdbOjjfiq0Wmh/zhUlKgDwyEAAtvw1CAo
	Y63OVMCit+0wgwquaicdzEpnl37Y/fWAuFabUJ/JkfiqXtIYNz2jIg/zNpV03OF5xauJuXSZ1zS
	6Gsj5XXrdibrW2m+SL/oELZDxFNM/fuI=
X-Gm-Gg: ASbGncs7mIU+KQAUS9k8QjtBqT5RYkTQy9TN5CJTk3G95huE4l3p0MbhIsuV+dDRcB+
	y6Xu8JVskeJn0KSLDmXd6iDd1dKxn2nKrhlxyyD3M1FKuk7WDy9Lp9M6l5yr8aQT6PZZmRXIuos
	lQAJs5NFc1mCaWdB86lAM1yh2hd6VYc+ASEEijf0mwI6Lr/SgjGJAUKtHgUyz5iqXSh2Srf6F9R
	j3Jzy1Sv98=
X-Google-Smtp-Source: AGHT+IFFpLLfpR+k6HE+I7D54lF4VNZXhrSvyPpp5JM6tQD7IelBojXCKB5kcV6/UFWYYn8ZstUDgu+nZQDbav9xjgU=
X-Received: by 2002:a05:690c:6c11:b0:70f:6ec6:62b5 with SMTP id
 00721157ae682-71097e6ffb0mr121011907b3.38.1748884981034; Mon, 02 Jun 2025
 10:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <omnnpezilawlern5txh6xnng26fmenimxl7ijy6oykuxlurfbg@yo2pvsq3q6v6> <87y0uaeeod.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87y0uaeeod.fsf@oldenburg.str.redhat.com>
From: Leon Timmermans <fawaka@gmail.com>
Date: Mon, 2 Jun 2025 19:22:49 +0200
X-Gm-Features: AX0GCFvHi482SYjxGN0RVO6MO8HVwe8fJY60KGQ_NrRFkE-stWJAwjwH1L-BGhE
Message-ID: <CAHhgV8hQR51pP=ioqw8Q2YFCcTZUOs7JaQv8Wq1gW=r2PyKP-A@mail.gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: Stig Palmquist <stig@stig.io>, perl5-porters@perl.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CVE-2025-40909: Perl threads have a working directory race
 condition where file operations may target unintended paths

On Mon, Jun 2, 2025 at 10:22=E2=80=AFAM Florian Weimer via perl5-porters
<perl5-porters@perl.org> wrote:
>
> * Stig Palmquist:
>
> > References
> > ----------
> > https://github.com/Perl/perl5/commit/918bfff86ca8d6d4e4ec5b30994451e0bd=
74aba9.patch
>
> Is this fix really correct?
>
> +    ret =3D fdopendir(dup(my_dirfd(dp)));
>
> This does not create a separate open file description, only a second
> descriptor that shares the read position of the directory stream with
> the original directory stream.  I think you have to use something like
> this:
>
>      ret =3D fdopendir(openat(my_dirfd(dp), ".", O_DIRECTORY | O_CLOEXEC)=
);

Our thread cloning in general is a terribly awkward business, where
"what is the correct behavior" isn't always well defined or possible;
I can see the arguments for both to be honest.

For file descriptors we don't create new file descriptions either (we
don't even create new file descriptors, we refcount them), so why
should we do so for directory handles? I'm not sure that expectation
makes sense in that context.

And if we did go the openat way, I don't think that seekdir on the new
handle with the telldir of the old one is necessarily valid if the
directory has been changed (I mean even a rewinddir can invalidate
telldir's return value). I don't think we can do a fully correct copy
here.

> (The original dup approach failed to set the O_CLOEXEC flag, potentially
> causing the descriptor to leak to subprocesses.)

You're correct, I should have used PerlLIO_dup_cloexec there.

> Futhermore, if there is error reporting using errno in the Perl code (I
> haven't checked), it makes sense not to pass a -1 failure indicator from
> openat to fdopendir because that unconditionally results in EBADF
> instead of more precise error codes such as ENFILE or EMFILE.

Yeah that makes sense.

Leon
