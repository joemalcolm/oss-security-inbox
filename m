X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3423" "Friday" "13" "November" "2020" "15:46:01" "-0500" "David A. Wheeler" "dwheeler@dwheeler.com" "<0B12AA49-1E09-4C8F-BDF4-F83DF85F9432@dwheeler.com>" "73" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111320:46:01" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       dwheeler@dwh Nov 13   73/3423  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<20201113133331.48185f9f@computer>" ("<20201113133331.48185f9f@computer>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30222 invoked by uid 550); 13 Nov 2020 20:46:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30202 invoked from network); 13 Nov 2020 20:46:17 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Fri, 13 Nov 2020 15:46:01 -0500
References: <20201113133331.48185f9f@computer>
To: oss-security@lists.openwall.com
In-Reply-To: <20201113133331.48185f9f@computer>
Message-Id: <0B12AA49-1E09-4C8F-BDF4-F83DF85F9432@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros


> On Nov 13, 2020, at 7:33 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>=20
> 3 years ago I reported a heap overflow vulnerability in raptor, an RDF
> parsing library:
> https://www.openwall.com/lists/oss-security/2017/06/07/1
>=20
> raptor has not created a new release since 2014.
>=20
> The most prominent user seems to be libreoffice. This is triggerable
> from within an ODT file. Back then I reported this to libreoffice as
> well and they patched it in their builds. However on linux systems
> libreoffice package usually use the system-provided libraptor, so if
> that's not patched it is vulnerable.
>=20
> This was unpatched for a long time in many linux distros, in some it
> still is. Debian+Ubuntu have released updates in the past few days.
>=20
> It may be interesting to discuss how this happened. From my side I feel
> I did what I should do - I reported it to the project and later
> disclosed it publicly on oss-security. Apparently it seems there is no
> reliable process to make sure publicly reported vulns eventually get
> patched in distros if there is no active upstream.
> Maybe noteworthy is that this didn't get a CVE in 2017. It seems many
> distros rely on CVEs to get a process of backporting fixes rolling.
> Given the fluctuating reliability of CVE assignments not sure this is
> wise. I have now requested a CVE (CVE-2017-18926).

I don=E2=80=99t know what you mean by =E2=80=9Cfluctuating reliability=E2=
=80=9D.
I think the #1 reason a vulnerability doesn=E2=80=99t have a CVE assignment
is that no one has reported the vulnerability to a CVE Numbering Authority =
(CNA).
If that=E2=80=99s the =E2=80=9Creliability=E2=80=9D problem, it=E2=80=99s h=
ard to blame CNAs for that.

There *is* a process to alert all affected parties; it=E2=80=99s called CVE=
 assignment.
In the case of an unmaintained package that=E2=80=99s in use it=E2=80=99s *=
especially* important to
have a CVE assigned; the project itself might never release a fix or alert,=
 so we
*need* an external system like CVEs to track those vulnerabilities.
As you noted, backports are often triggered by CVE assignments.
That=E2=80=99s not a problem, that=E2=80=99s a fact that is getting ignored.
=E2=80=9CThe standard process to trigger backports (namely CVE assignment) =
was not used and
now I=E2=80=99m unhappy that backports didn=E2=80=99t occur=E2=80=9D sounds=
 almost tautological.

As you well know, CVEs aren=E2=80=99t perfect. Far from it (let me help you=
 make that list).
CVE assignments sometimes backlog, but I think since 2017 is enough time :-=
).
The CVE process does struggle with projects that update relatively rapidly
(hi Linux kernel!), but that=E2=80=99s not the issue in this case. But whil=
e CVEs have their
shortcomings, they would trivially have solved this if the process had been=
 actually used.

I think that in addition, any project that patches an external dependency
(like LibreOffice) should also add to their automated test suite a test tha=
t verifies that the
fix is actually correctly applied.  Many system packaging systems have a way
to run a test suite as part of the packaging. The packagers should call tes=
t suites if they=E2=80=99re
present, and packagers should provide test suites. That would have prevente=
d this kind
of problem (and many others) in a general way. The reproducer .odt file you
just posted would probably be perfect for this.

--- David A. Wheeler

