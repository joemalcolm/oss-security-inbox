Received: (qmail 5602 invoked by uid 550); 29 Mar 2024 17:06:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5554 invoked from network); 29 Mar 2024 17:06:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711732252; x=1712337052; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yN/u3ZvnGwdCNLZtM60PzJrPMnatOZURjXypcAmDMow=;
        b=cgS8i2kn1LWeI87c/xc+xlvqlglhYzFGM0/K2RAO3L93NcUjwk4XxcjILPoOkgaI9Y
         0YbJG8OnTFgbN6ZtYDlTx/+iS0W3CGd+uacOM3jTAEyIyQFhOoLGHFi3clbDJdyusdAR
         TPMVkdRIVHxR/cqKtYNva5UhxXrlM/uACTqoXQz9F546BlOMjkTXDe4QYHXbrIh00NyO
         5PhFO0WYMkKRWkVxmLhxqA8jz3G07LytgLCNMJmK3WGKQOJ98RSGxpmdUfL5I+w+0ypK
         xwVmXmhfAnh6SX2HaFsJd58U08Z05pW8bsWSj6O46GnhhnXRz82aTfNIUbW51UFfAXb5
         ZnCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711732252; x=1712337052;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yN/u3ZvnGwdCNLZtM60PzJrPMnatOZURjXypcAmDMow=;
        b=eBp7rF0t5S2IBIY7pzcq+aq9G4xKtkoovi+uZjO4gb10VYNbrG+adjdlufPQSjFqI9
         EfLUsC/71RT8syRfh6+u03OeO71x1Kmkkh8UnF8q+B+dCPc6ukhOdwHYTyxWnvff+VBR
         Fm6GXJo4/oA/sShhHy5l2gs6h2+pTkH9vPDrIApyfwgOFfOVRSEu6d10mo4BXaVPrrKe
         KyH5EldVGTR8QhXRtgHMO4Tce+aMfH+WqEDT+SC4bq+/J19Qu+O2J/+VlfAQi/QRsQeU
         sWs9DN+hKM4m7N2hrqZ4vyLmcTFMGAQm+ZSUxeWYvkV4SAD/CssEUgMAhQ/rypZBQ+lf
         2EmA==
X-Gm-Message-State: AOJu0Yw5HOQ85i7LoUfKnwWK3t3hsPD8Lf/JhoTua8w7y1yIRgWjWicH
	yf4wOTIz/YzQLFt0Lw/BkzA2yD6PRJwcqSHJS0zXcetdPa55Ka5qf+yhH8rje5KL9EwBHsFgyBt
	wvRZlCIK76klWGVdiRQU5pjN+IcDO7RoJ
X-Google-Smtp-Source: AGHT+IE6BOlvx/shGwHolu54yS2AhXsq0EKcPvGG+8j7//mpM9XE6sFjXTmreWZcUUdEYTx3F/HyTra5UIgsUlumN5s=
X-Received: by 2002:a25:ba4a:0:b0:dcd:c3ba:d788 with SMTP id
 z10-20020a25ba4a000000b00dcdc3bad788mr2718074ybj.47.1711732252007; Fri, 29
 Mar 2024 10:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UB4p9JHzq_PdibFUHvZdyjF-65Bj2kGuy5ZpG8JtOrNg@mail.gmail.com>
 <20240329170729.27sconsbpz55xo47@awork3.anarazel.de>
In-Reply-To: <20240329170729.27sconsbpz55xo47@awork3.anarazel.de>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 29 Mar 2024 13:10:40 -0400
Message-ID: <CAFRnB2WJ0GAmW0FeNVOnFoWQnS5wfc9qchKC54xao4=oP9R-Xw@mail.gmail.com>
To: Andres Freund <andres@anarazel.de>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On Fri, Mar 29, 2024 at 1:07=E2=80=AFPM Andres Freund <andres@anarazel.de> =
wrote:
>
> Hi Alex,
>
> (I was not subscribed to oss-security and not CCed, so I only got your em=
ail
> from the archive, not sure if I got the In-Reply-To etc right. Subscribed
> now.)

Your email came through.

>
> > Thanks for writing this up. Just to make sure I understand the action
> > item here: folks who are building their own xz, should switch to a
> > release prior to 5.6.0, as those are the only ones known to be
> > unaffected?
>
> If you are building your own xz you might not be affected, due to either =
the
> debian/ directory needing to exist, or $RPM_ARCH needing to be
> set. Furthermore, if you build from git, rather than the distributed tarb=
alls,
> the backdoor code won't be injected into the build, even if present in the
> repository. Similar if you build with cmake, I think.
>
> However, I personally would still downgrade, even if likely not affected =
due
> to the above.
>
> Greetings,
>
> Andres Freund

Thanks for confirming, and indeed I'm taking a better safe than sorry appro=
ach.

Alex

--=20
All that is necessary for evil to succeed is for good people to do nothing.
