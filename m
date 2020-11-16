X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2430" "Monday" "16" "November" "2020" "19:49:01" "+0000" "Sam James" "sam@gentoo.org" "<379461F4-66C3-4EAF-A762-BB3C14B9152F@gentoo.org>" "61" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111619:49:01" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       sam@gentoo.o Nov 16   61/2430  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<87eekt9l5k.fsf@gnu.org>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" "<87eekt9l5k.fsf@gnu.org>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28430 invoked by uid 550); 16 Nov 2020 20:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26333 invoked from network); 16 Nov 2020 19:49:19 -0000
From: Sam James <sam@gentoo.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
Date: Mon, 16 Nov 2020 19:49:01 +0000
References: <20201113133331.48185f9f@computer> <20201114115850.GB5193@suse.de>
 <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com> <87eekt9l5k.fsf@gnu.org>
To: oss-security@lists.openwall.com
In-Reply-To: <87eekt9l5k.fsf@gnu.org>
Message-Id: <379461F4-66C3-4EAF-A762-BB3C14B9152F@gentoo.org>
X-Mailer: Apple Mail (2.3654.20.0.2.21)
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros



> On 16 Nov 2020, at 19:06, Marius Bakke <marius@gnu.org> wrote:
>=20
> "David A. Wheeler" <dwheeler@dwheeler.com> writes:
>=20
>> If you think that CVE assignment is still of =E2=80=9Cfluctuating reliab=
ility=E2=80=9D I=E2=80=99d like to hear that argument
>> and get it fixed. It=E2=80=99s normally better to fix the standard proce=
ss for doing something than
>> to create yet another process that runs in parallel. I=E2=80=99ve seen n=
o recent evidence of this reliability issue.
>=20
> Speaking as a co-maintainer of an understaffed GNU/Linux distribution
> who fixed this back in 2017[0], I preferred the "old days" when free
> software security problems were almost always discussed on this list.
>=20
> While there's no questioning the utility of CVEs in general (Guix can
> check the CVE list for any given package with 'guix lint -c cve PKG'),
> there are still unresolved CPE mappings, and I don't know how to get
> informed of new problems without checking specific (or all) packages.
>=20
> I tried following the CVE assignment RSS feed initially, but it was not
> suitable for human consumption.
>=20

I share the same problems.

We=E2=80=99ve taken to a mix in Gentoo:

1) Automated import of RSS feeds (but this isn=E2=80=99t that fit for human=
 consumption, especially with the large dumps of various corporate applianc=
e CVEs every so often);

2) I maintain a list of announcement mailing lists to read: https://wiki.ge=
ntoo.org/wiki/User:Sam/Security/Release_announcements. I skim announcements=
 for security-related notes. But this doesn=E2=80=99t help if upstream is i=
nactive;

3) I subscribe to *other* distros=E2=80=99 security announcement mailing li=
sts to help reduce the chance of missing anything;

4) I check the Twitter @CVENew feed ~regularly;

5) Repology (https://repology.org/) has the ability to say if it thinks a p=
ackage is vulnerable. It=E2=80=99s not 100% accurate (it can=E2=80=99t be),=
 but it helps;

6) Of course, subscribe to this list (and linux-distros);

7) Subscribe to other security-related mailing lists like fulldisclosure.

There=E2=80=99s probably some other ways that I=E2=80=99m not thinking of r=
ight now. I=E2=80=99m still relatively new to the game so any tips are real=
ly welcome too.

> How do other distros keep up with new CVE assignments?
>=20
> [0] https://git.savannah.gnu.org/cgit/guix.git/commit/?id=3D099c9fdae623e=
06e4fded8b0d4e55d9d5b56715b

