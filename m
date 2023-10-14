Received: (qmail 28136 invoked by uid 550); 14 Oct 2023 10:33:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1590 invoked from network); 14 Oct 2023 03:20:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697253596; x=1697858396; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iPyIskCjPeY+ccXUKbNz2ts8NMVBJfEHQikxEnlh/48=;
        b=MKulBtDi2RkyGbA+FIEzKQrRReJrEKftQSGPfYdY8YBkXmHKV/7zCy/P0JZMr/PIen
         0AAJDJ3GDty36UpIuZIUubXLQKNFWQoPxgNUU7JGslsrcoXS8fIUwGsFcLfGnIalsWl6
         k5lFdk+aLcY+v88gWPG3BlNK8MpKcmvmbpgxgkCq5L3c5ZxvErLO9L00fgIXhtz410cV
         JfWGHP4CSNBn+bQ/NKSj5sTBL2Dz1xEizX8SdXmF5vsUlk9RRtRodmINMTkQgJDMl4iX
         X/sIvGSGPfmOEAkCi2X0RC+x56JjrTVqyotasxaZi1rg1OayXe8hXPd5GdHzHwfIXVcr
         6r7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697253596; x=1697858396;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iPyIskCjPeY+ccXUKbNz2ts8NMVBJfEHQikxEnlh/48=;
        b=N0W6eQ8gqcZyaw9yLj87N1YmE/EHMbtQWobIvvlJQl7AFYAoAQVLSxjrMn214hbxPN
         7hJV80qFzRmd4kahAyPCiECVQ4tpOr3Kv4J7x0kcnJHp/bTVFHmcSlXLCC5N3ze6+NWa
         pmJPwVzds9KzKR2cDxo3f2gp8f9WBrgmJpC+QikHhWo0wXzUozsQ1Rg7Wwc+nSl/a9kT
         JL5OFuzuasFHCa6tEOevUdpRwIZFU4iQZf7/VQxyD422tS9e0cq5aXu90KvB1Hc84h6y
         WzG/A0I5+K8j2fSv3bamrKdo2wqo1p0QA7GRjTr4UDFa2/eZMqY8xU79RUHHGFcdPair
         Np6g==
X-Gm-Message-State: AOJu0YyavLKklHDk9pxyKKRSRwmfeda82X3EiqRMGAxbgTd4kmla1FxW
	pzlaKEl5lRJ8ynTPXGuyRvVzkBmXjhGQkoN2i7sYm6LdGck=
X-Google-Smtp-Source: AGHT+IFRp6FvojofbZGwh2SGMe06Tz46g515QmBGxF0vhhXRDx8Ndd60PKHf4WKxpuWAiE4VQ8rnUcsb2WYCQFeqTWQ=
X-Received: by 2002:a17:907:7213:b0:9ae:64b4:18b3 with SMTP id
 dr19-20020a170907721300b009ae64b418b3mr31620973ejc.37.1697253596435; Fri, 13
 Oct 2023 20:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <652920e5.c80a0220.3bcf7.2251@mx.google.com> <956475122.7707678.1697228495449.JavaMail.zimbra@hlrs.de>
In-Reply-To: <956475122.7707678.1697228495449.JavaMail.zimbra@hlrs.de>
From: Neal Gompa <ngompa13@gmail.com>
Date: Fri, 13 Oct 2023 23:19:18 -0400
Message-ID: <CAEg-Je-uxMbiYDADX=+eyTQF+xnjAYA0u1HoygqDa+G=Y=4f-Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] linux-distros list membership application - CIQ
 Rocky Linux Security Team

On Fri, Oct 13, 2023 at 8:07=E2=80=AFPM Martin Hecht <martin.hecht@hlrs.de>=
 wrote:
>
> Hi,
>
> On Fri, Oct 13, 2023 at 12:50 "Neal Gompa" <ngompa13@gmail.com> wrote:
> > > The publicly verifiable track record currently consists of timely
> > > rebuild and re-release of RHEL security update packages and security
> > > advisories, as published here:
> > >
> > > https://errata.rockylinux.org
> > >
> > > Not currently verifiable publicly, but Gregory further tells me:
> > >
> > > "We've been doing LTS privately to our customers for over a year now.
> > > This means we maintain security fixes for customers who need long term
> > > support for point releases."
> > >
> > From my point of view, this does not count. Rocky's public track record
> > of rebuilding RHEL updates and shipping them in a timely fashion does
> > not indicate that Rocky/CIQ can respond effectively when you have a cra=
ft
> > updates from scratch. Furthermore, there are public posts and articles
> > indicating that Rocky Linux/CIQ has trouble with shipping updates in a
> > timely fashion at all.
>
> I'd like to give an example against this. With the recent glibc issue
> (CVE-2023-4911) we were closely following the upcoming fixed packages.
> While we were installing the Rocky packages in the late evening of Thu Oc=
t 5,
> I had the impression that the Redhat packages became available later on F=
riday.
> It might be attributed to some hours of delay between arriving on the repo
> servers vs. being announced via advisory. But, anyhow, accusing Rocky bei=
ng
> late in providing packages at least is not valid in general imho. At least
> important ones, like this one, seem to arrive rather quickly. Without men=
tioning
> the distros, I have seen quite some announcements even around a week late=
r.
>

The fix for Rocky 8 and Rocky 9 are purely imports from RHEL:

* R8: https://git.rockylinux.org/staging/rpms/glibc/-/commit/6433675bfaab39=
2b362993d8ff8d576335e6bcd4
* R9: https://git.rockylinux.org/staging/rpms/glibc/-/commit/610a8a6829e1e6=
04ff018daccf6bf63620edd19d

I did see that Louis Abel attempted to do something for Rocky 8, but
it was not shipped. I have also not seen much in terms of upstream
engagement indicating the bidirectional relationship expected for
members of linux-distros@.

> > > > Not be (only) downstream or a rebuild of another distro (or else we=
 need convincing additional justification of how the list membership would =
enable you to release fixes sooner, presumably not relying on the upstream =
distro having released their fixes first?)
> > >
> > > Besides being a "downstream or a rebuild of another distro", CIQ has =
its
> > > LTS branches and Rocky Linux has its additional and replacement packa=
ges
> > > via the SIGs.  Security maintenance for these should be provided by C=
IQ
> > > and Rocky Linux.
> >
> > Special interest groups cannot count because they are intended to be
> > public community projects. Unless you're saying that all Rocky Linux
> > SIGs are shadows of CIQ work that can be held back for public consumpti=
on,
> > that is effectively out of scope for consideration.
>
> I think the point here is "*not only* being a rebuild of another distro".
> So, their engagement with SIG should already be a valid add-on to be hono=
red.
> Anyhow, the fact that CIQ offers LTS branches and professional support,
> as well as their promise to provide backports of upstream fixes independe=
nt
> of RHEL clearly distinguishes them from a "pure distro rebuild".
>
> https://ciq.com/products/rocky-linux/benefits/enterprise-level-support/
>
>
> > > Some security issues in upstream packages may be mitigated or fixed by
> > > pushing "security override" packages via CIQ's customer-facing repos =
and
> > > the Security SIG repos, without waiting on upstream distro's fixes and
> > > for issues or point releases where no upstream fixes are expected.
> > >
> > > Related previously accepted membership application (precedent) is
> > > CloudLinux's, which is now perhaps best known for AlmaLinux, another
> > > prominent EL distribution:
> > >
> > > http://www.openwall.com/lists/oss-security/2017/07/02/2
> >
> > CloudLinux's membership was based on the fact that they replaced and
> > maintained a very large chunk of the distribution for their own
> > purpose. They used a RHEL compatible userland, but most of the server
> > software stacks and the kernel were replaced with their own builds.
> > They wanted access for the maintenance of that stuff, which is very
> > reasonable.
> >
> > Rocky/CIQ has not demonstrated a similar need from my point of view.
>
> You could take the hardened glibc version of the before mentioned SIG for=
 this
>
> https://rockylinux.org/news/security-sig-update/
>
> Note, this is a different story than the backport of the fix for CVE-2023=
-4911.
>
> > Fedora is not a member because there is no mechanism in the project to
> > hide anything from the community. For this reason, I have not
> > considered joining as a representative of CentOS Hyperscale, Mageia,
> > or Fedora (all distributions that I do participate in security
> > response for).
>
> Well, assuming there was a security team in these projects able to obey
> the embargo regulations, wouldn't they have tried to join?
> But, nevertheless, what is the relation of the organizational structure
> of these projects with the current application of CIQ/Rocky, after all?
>

The point I'm making is that SIGs do not count because they cannot
obey embargo regulations. No open project or community project can do
that without having some mechanism for private controls, which is
antithetical to the community process. They fundamentally are
ineligible to join because they cannot keep anything secret.




--
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!
