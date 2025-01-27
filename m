Received: (qmail 28508 invoked by uid 550); 27 Jan 2025 23:20:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24555 invoked from network); 27 Jan 2025 23:02:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738018969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BZ3ZWhpPWiYUUL/MR+7iD0Db9H2BSB3xx/OU4eju2oM=;
	b=dzqhSTsejEdAmQTMN4O5oldwlYsQ3Kn2R75aHoKcwBlO+35e+rT1vXD5dB3VtWCa2hS7c3
	QOEJhOsBFR1vObRf2Xa0pruBRWYoWw+7vM8WDtvo8m1O9TXuIh1Kvg+/yCW9PgbNxbg+Yq
	39b965Rd3VE5VNWxFuVVrHiyxXjb7Jg=
X-MC-Unique: 168fnoWdMMar-BsjrVybCQ-1
X-Mimecast-MFC-AGG-ID: 168fnoWdMMar-BsjrVybCQ
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738018967; x=1738623767;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZ3ZWhpPWiYUUL/MR+7iD0Db9H2BSB3xx/OU4eju2oM=;
        b=w8gruHLlXc+8Vr+vGc87P07YIv7vZ3vH1SeGONIIRn+erRJbfPno1t9EYOonbvMPEK
         s8Al5e2U1B7HJ7MMOGMmNY25qdLN92YEWtMPpn8Sm2frZRr3aXC3fW658K9GWgi6VnzT
         +Rm7J+IIflB2NvrE1knPh2R4nHVzEZFQ7MD++z3Txqrlq/hXQgdZ4LX9p2v/fhPSoTDu
         KaBUxnfrXCO7ZLuai94SdUuCnjYBi2u1HEU43+q66hjwrinJ1Ketok75jkCoq32/I+Dy
         9+FU4hDCuLOFQsRtU0QaDOX6tTa0eG/aJp/AHWrpTosmxvODYNA4hmhxK4VDWeIrlgnR
         43+g==
X-Gm-Message-State: AOJu0YwEPLr2KrF/auXv/49pxOju8uY3kYDb4wO9hNn58cWoYZiOgWXJ
	L69Dlg3CUYltyTH8ud5FZrmbOLOIkRann+kcItAHLYG/I80C82eVK3QeiNFyhwLg3EjsEt64Sca
	j9+GkI95O8S5VDcOx6lzOhgIY1And0hqE0nDb/R7yHxvYGV1llfVzJXpfE1pNN2EFYTvg0l9pqm
	VSDtP/fBm+jc47rlp9CBB74qzv/2gUokSh/2iU5enK
X-Gm-Gg: ASbGncvG2V7SSTswZYKLsHNzadPNPvHiIRp0mcNeHRgwTryC5ycWUlN+NK1jtv87h2A
	FRpkzqGWDKQUID20WnZvNN7qWsejzdaV9dbzNynkf013MCz3LmSunX50YFwiSP1s=
X-Received: by 2002:a05:6871:a58b:b0:295:ed0a:8061 with SMTP id 586e51a60fabf-2b1c0bbdeb0mr20855987fac.39.1738018967380;
        Mon, 27 Jan 2025 15:02:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnjhGRMb3oEv6FPVbhnE97XaWn+/H/z3dCywM5EZawlxOSnl6ZY2ub3BtkHAurP6Mm/KMpSki8m9JagYM/Dkk=
X-Received: by 2002:a05:6871:a58b:b0:295:ed0a:8061 with SMTP id
 586e51a60fabf-2b1c0bbdeb0mr20855974fac.39.1738018966987; Mon, 27 Jan 2025
 15:02:46 -0800 (PST)
MIME-Version: 1.0
References: <Z4__rJ3_SmmtEIsG@netmeister.org> <0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
 <2025012512-likely-strainer-4e6d@gregkh> <CAEFCzXX4sU9ps3PLcgjOS84+bKAb1qXy_koJdGNMqKokEsDbgg@mail.gmail.com>
 <87bjvssr2k.fsf@oldenburg3.str.redhat.com>
In-Reply-To: <87bjvssr2k.fsf@oldenburg3.str.redhat.com>
From: Pete Allor <pallor@redhat.com>
Date: Mon, 27 Jan 2025 18:02:35 -0500
X-Gm-Features: AWEUYZlYA2X7V3-AeSolNw0pX4SdoI69LmAqlQlQE-O8ZvZq8aLBCJ2nAcaGIR8
Message-ID: <CAEFCzXXNvs6vLnqv+1y4Ob9=j9CHms5LMYHkXBQhcOcwd_0T-w@mail.gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zC-XVyo_6NYbsWBomgIoDmF9oXxdz_FW0UKAKFBqnZg_1738018967
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000240f2e062cb8130e"
Subject: Re: [oss-security] Node.js EOL CVEs: CVE-2025-23087, CVE-2025-23088, CVE-2025-23089

--000000000000240f2e062cb8130e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Florian,
The question is about who is scoring and a level of their knowledge and
understanding.   Assuming that each is using CVSS v3.1 then the question is
does the scoring entity look at how the component is built and used or are
they scoring for every eventuality and device across all time (and in turn
introducing 'temporal' scoring into that 'base' score).   We often see that
broad interpretation and the creeping in of temporal scoring to "elevate"
the CVSS.

It is why I would advocate for a CVSS review (as we do at Red Hat) and then
assign a 'Severity Rating' as that now involves how the component is used
within our software which changes HOW a customer/downstream/user should
actually view that CVE.

So I will state that the way some aggregators of CVEs assign CVSS is the
problem.   Consider that overreach and then the reliance by regulators
and/or internal audit make a broad rule and everyone is bringing down the
house.

So the issue of identifying the 'component' becomes truly important (CPE
does not cover OSS and hence the new drive to incorporate PURL to better
identify CVEs and essentially get to your fork construct.

Pete

On Mon, Jan 27, 2025 at 1:34=E2=80=AFAM Florian Weimer <fweimer@redhat.com>=
 wrote:

> * Pete Allor:
>
> > I do agree with Greg K-H that open source projects should become CNAs.
> > But do want to note that missing elements of the CVE when submitting
> > allows CISA-ADP to 'vulnrich' your data.  Here is where
> > misinterpretation and/or lack of understanding by CISA confuses
> > downstream users and once you gain that 'critical' stigma in the
> > system, you have to be persistent to get that changed.
> >
> > Is that a problem?  I think so and so do a number of PSIRTs so now we
> > have to contend with CISA-ADP and NVD to adjust their scores when the
> > CNA is 'the authoritative source' within the CVE Program.
>
> The larger problem is that component scoring tends to be higher than
> whole-system scoring.  If a security component fails in its security
> function, it certainly deserves an impact rating that reflects that it's
> totally broken due to the vulnerability.  But if this component is
> integrated into a larger system, impact is often lower and might even be
> insignificant due to the way the component is used.
>
> The current system does not really reflect that.  One way to deal with
> it could be to treat everything as a fork, but not to decouple from
> upstream changes, but to make it clear that the upstream impact ratings
> do not apply.
>
> Thanks,
> Florian
>
>

--000000000000240f2e062cb8130e--

