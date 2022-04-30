Received: (qmail 3150 invoked by uid 550); 30 Apr 2022 21:04:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3126 invoked from network); 30 Apr 2022 21:03:59 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Sat, 30 Apr 2022 17:03:37 -0400
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
 <20220428201003.GA1260523@millbarge>
 <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
 <2D37FD38-B910-4D66-A5B3-0E58DA3B87C1@akamai.com>
 <ffd2934f-4e65-88ca-e3db-5204c2eb1127@greenbone.net>
 <Ym1X82gykRQqVzd7@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <Ym1X82gykRQqVzd7@gentoo.org>
Message-Id: <CCD51EB4-A0CF-457D-B1B5-4516779AE4C8@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
Subject: Re: [oss-security] CVE-2022-21449 and version reporting



> On Apr 30, 2022, at 11:38 AM, John Helmert III <ajak@gentoo.org> wrote:
>=20
> On Sat, Apr 30, 2022 at 01:24:36PM +0200, Christian Fischer wrote:
>>> It=E2=80=99s not that they didn=E2=80=99t/can=E2=80=99t verify, it=E2=
=80=99s already verified,=20
>> they=E2=80=99re claiming those versions no longer being officially suppo=
rted=20
>> means they can seemingly omit them from CVE reporting.
>>>=20
>>> Which is dangerous, misleading, and nonsensical.
>>=20
>> While i fully agree with this be aware that CVE entries could generally=
=20
>> contain incomplete information:...

CVEs are practically *guaranteed* to have incomplete information,
no one knows all & time is limited even if something *can* be found.
No one should be *required* to determine if some
unsupported versions are vulnerable to a reported vulnerability.

HOWEVER: if important information is *already known* then it should
be incorporated into the CVE data (either originally, or added to the
relevant databases later when that becomes known). That way
the database represents a common basis for what *is* known.
That's how I interpret the quoted CNA rules:

> "8.2.1 MUST provide enough information for a reader to have a
> reasonable understanding of what products are affected. If the
> affected products are not explicitly listed in the description, then
> the CNA MUST provide a reference that points to the known affected
> products."
> [1] https://www.cve.org/ResourcesSupport/AllResources/CNARules#section_8-=
2_cve_record_prose_description_requirements

I read that as saying that if a version is *known* then it should be includ=
ed.

Of course, if Java implementations 7, 8, and 11 didn't have this
vulnerability then it shouldn't be listed (maybe it's not).
But I think it's important to note that CVE information should have
the "best information available at this time & is subject to improvement".

I don't think we need to record vulnerabilities in MS-DOS 1.0, because
I expect that to have a small deployed base. But if an old unsupported vers=
ion
has a non-trivial installed base, then including known information about
them *should* be provided. If nothing else, it incentivizes organizations
to update - and we *often* have trouble getting organizations to update.


On Thu, 28 Apr 2022, Seaman, Chad wrote:
> In what universe exactly are versions omitted from vulnerability reportin=
g because a vendor =E2=80=9Cno longer supports that version=E2=80=9D=E2=80=
=A6 this non-supported version is still vulnerable?

On Apr 28, 2022, at 10:40 AM, Brian Behlendorf <brian@behlendorf.com> repli=
ed:
> If that universe were consistent, it'd be one where vendors and open sour=
ce projects issued pre-emptive CVEs when release branches are no longer pro=
vided with security fixes.

I'm skeptical that CVEs *specifically* are the best mechanism for reporting
"support has ended". But I *completely* agree with you that there
should be an automated mechanism for capturing
what is or isn't still a current/supported version, to make it easy to
answer "which components are no longer supported?". For some components
"only the latest version is supported", but that's not true for
many others. Components that will no longer receive security fixes
are a ticking time bomb.

--- David A. Wheeler

