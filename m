Received: (qmail 22425 invoked by uid 550); 13 Oct 2023 20:26:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15497 invoked from network); 13 Oct 2023 20:21:47 -0000
X-Virus-Scanned: amavis at mail.hlrs.de
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.hlrs.de 95A555EA0878
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hlrs.de;
	s=1806FB76-797D-11E5-BCE5-7B280A126CD4; t=1697228495;
	bh=WESROYBeoTLw1uIEtN9XPzwsPMeqqhqWn9M8XjPKx2M=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=BzuLT3sWF8JViECCQ0RPxoYevPm3x3lPXf5uHXQjJ8l6kscTLMME6eDkIJTH+Qlcd
	 VeCL2U7saAYHVjWbf/9J21E69/lGqMBR1vlyRFU83ISB4QTtD5IRkuJyxgZI7mAcZ1
	 NQUmqOG+wfCaoG8TBamaxOLI5i747MbHIPSuljg4=
Date: Fri, 13 Oct 2023 22:21:35 +0200 (CEST)
From: Martin Hecht <martin.hecht@hlrs.de>
To: oss-security@lists.openwall.com
Message-ID: <956475122.7707678.1697228495449.JavaMail.zimbra@hlrs.de>
In-Reply-To: <652920e5.c80a0220.3bcf7.2251@mx.google.com>
References: <652920e5.c80a0220.3bcf7.2251@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Thread-Topic: linux-distros list membership application - CIQ Rocky Linux Security Team
Thread-Index: QJVyZ3N+V70k574mrQLIRO8LJOSelg==
Subject: Re: [oss-security] linux-distros list membership application - CIQ
 Rocky Linux Security Team

Hi,

On Fri, Oct 13, 2023 at 12:50 "Neal Gompa" <ngompa13@gmail.com> wrote:
> > The publicly verifiable track record currently consists of timely
> > rebuild and re-release of RHEL security update packages and security
> > advisories, as published here:
> >
> > https://errata.rockylinux.org
> >
> > Not currently verifiable publicly, but Gregory further tells me:
> >
> > "We've been doing LTS privately to our customers for over a year now.
> > This means we maintain security fixes for customers who need long term
> > support for point releases."
> >
> From my point of view, this does not count. Rocky's public track record
> of rebuilding RHEL updates and shipping them in a timely fashion does
> not indicate that Rocky/CIQ can respond effectively when you have a craft
> updates from scratch. Furthermore, there are public posts and articles
> indicating that Rocky Linux/CIQ has trouble with shipping updates in a
> timely fashion at all.

I'd like to give an example against this. With the recent glibc issue=20
(CVE-2023-4911) we were closely following the upcoming fixed packages.=20
While we were installing the Rocky packages in the late evening of Thu Oct =
5,=20
I had the impression that the Redhat packages became available later on Fri=
day.
It might be attributed to some hours of delay between arriving on the repo=
=20
servers vs. being announced via advisory. But, anyhow, accusing Rocky being
late in providing packages at least is not valid in general imho. At least=
=20
important ones, like this one, seem to arrive rather quickly. Without menti=
oning=20
the distros, I have seen quite some announcements even around a week later.

> > > Not be (only) downstream or a rebuild of another distro (or else we n=
eed convincing additional justification of how the list membership would en=
able you to release fixes sooner, presumably not relying on the upstream di=
stro having released their fixes first?)
> >
> > Besides being a "downstream or a rebuild of another distro", CIQ has its
> > LTS branches and Rocky Linux has its additional and replacement packages
> > via the SIGs. =C2=A0Security maintenance for these should be provided b=
y CIQ
> > and Rocky Linux.
>=20
> Special interest groups cannot count because they are intended to be
> public community projects. Unless you're saying that all Rocky Linux
> SIGs are shadows of CIQ work that can be held back for public consumption,
> that is effectively out of scope for consideration.

I think the point here is "*not only* being a rebuild of another distro".=20
So, their engagement with SIG should already be a valid add-on to be honore=
d.
Anyhow, the fact that CIQ offers LTS branches and professional support,=20
as well as their promise to provide backports of upstream fixes independent=
=20
of RHEL clearly distinguishes them from a "pure distro rebuild".

https://ciq.com/products/rocky-linux/benefits/enterprise-level-support/


> > Some security issues in upstream packages may be mitigated or fixed by
> > pushing "security override" packages via CIQ's customer-facing repos and
> > the Security SIG repos, without waiting on upstream distro's fixes and
> > for issues or point releases where no upstream fixes are expected.
> >
> > Related previously accepted membership application (precedent) is
> > CloudLinux's, which is now perhaps best known for AlmaLinux, another
> > prominent EL distribution:
> >
> > http://www.openwall.com/lists/oss-security/2017/07/02/2
>=20
> CloudLinux's membership was based on the fact that they replaced and
> maintained a very large chunk of the distribution for their own
> purpose. They used a RHEL compatible userland, but most of the server
> software stacks and the kernel were replaced with their own builds.
> They wanted access for the maintenance of that stuff, which is very
> reasonable.
>
> Rocky/CIQ has not demonstrated a similar need from my point of view.

You could take the hardened glibc version of the before mentioned SIG for t=
his

https://rockylinux.org/news/security-sig-update/

Note, this is a different story than the backport of the fix for CVE-2023-4=
911.

> Fedora is not a member because there is no mechanism in the project to
> hide anything from the community. For this reason, I have not
> considered joining as a representative of CentOS Hyperscale, Mageia,
> or Fedora (all distributions that I do participate in security
> response for).

Well, assuming there was a security team in these projects able to obey
the embargo regulations, wouldn't they have tried to join?=20
But, nevertheless, what is the relation of the organizational structure=20
of these projects with the current application of CIQ/Rocky, after all?

> While I certainly recognize you and value your contributions
> over the years, I do not feel that you alone is sufficient for
> Rocky/CIQ to be accepted onto linux-distros@.

The membership on the list is always by person, and it is always=20
on behalf of a distro. The fact that Alexander is already engaged in
the Security SIG @Rocky already makes it a reasonable next step
to represent them on the linux-distros list.

Furthermore, I would like to express my deep admiration for his=20
very professional way of working. Especially in this case, when it=20
is about his own person, he handles the application process transparently
as if it was any other distro's. Sure, that's one would expect in=20
this position, but it's just another proof in a long list that he is=20
the right person to do this job of running, maintaining, and moderating
these lists.

Not being member of any distribution, but a long-time subscriber to
oss-sec, fd, and others, I give my vote for Alexander as a representative
of CIQ Rocky Linux Security Team on linux-distros list.=20=20

Best regards,
Martin
