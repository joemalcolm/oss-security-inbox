X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4015" "Tuesday" "29" "August" "2017" "22:02:28" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<4388229.gHBqzp8EGK@wanheda>" "92" "Re: [oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho.." nil nil nil "8" "2017082920:02:28" "[oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho.." (number mark "U       ago@gentoo.o Aug 29   92/4015  " thread-indent "\"Re: [oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho..\"\n") "<0295d4de82454ac79e4bc834c30d39b3@imshyb01.MITRE.ORG>" ("<0295d4de82454ac79e4bc834c30d39b3@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26192 invoked by uid 550); 29 Aug 2017 20:02:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26153 invoked from network); 29 Aug 2017 20:02:44 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-request@mitre.org
Date: Tue, 29 Aug 2017 22:02:28 +0200
Message-ID: <4388229.gHBqzp8EGK@wanheda>
In-Reply-To: <0295d4de82454ac79e4bc834c30d39b3@imshyb01.MITRE.ORG>
References: <0295d4de82454ac79e4bc834c30d39b3@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Re: [scr379303] A bunch of duplicate CVEs requested for?? bho..

Hello Mitre, I'm glad to see your response here.


On marted=C3=AC 29 agosto 2017 21:23:50 CEST cve-request@mitre.org wrote:
> > https://nvd.nist.gov/vuln/detail/CVE-2017-13753 duplicate of:
> > https://nvd.nist.gov/vuln/detail/CVE-2016-9396
>=20
> Yes, these are duplicates; we will reject CVE-2017-13753 and update
> CVE-2016-9396.
The problem is not about this duplicate but from some assignments in the la=
st=20
two months from people I mentioned, see the first post here from a partial=
=20
list: https://marc.info/?l=3Doss-security&m=3D150401081512049&w=3D2

> This occurred because the MITRE CVE team inadvertently populated
> CVE-2016-9396 with incorrect version information,=20
This is right

> and because the code
> changed between the two tested versions.
from https://blogs.gentoo.org/ago/2016/11/16/jasper-multiple-assertion-fail=
ure/ we have:=20
libjasper/jpc/jpc_t1cod.c:144: int JPC_NOMINALGAIN(int, int, int, int):=20
Assertion `qmfbid =3D=3D 0x01=E2=80=B2 failed.
form https://bugzilla.redhat.com/show_bug.cgi?id=3D1485272 we have:
libjasper/jpc/jpc_t1cod.c:144: int JPC_NOMINALGAIN(int, int, int, int):=20
Assertion `qmfbid =3D=3D JPC_COX_RFT' failed.

they looks to be similar.

> Specifically, CVE-2016-9396 had said "in JasPer before 1.900.12" but
> actually there was no reference stating that 1.900.12 was a fixed
> version. Also, the CVE-2017-13753 reference said "Assertion `qmfbid =3D=3D
> JPC_COX_RFT' failed" but the CVE-2016-9396 reference said "Assertion
> `qmfbid =3D=3D 0x01' failed." These happen to be the same (there's a
> "#define JPC_COX_RFT 0x01" elsewhere), but it initially looked like
> the new report was about a different assertion that was problematic in
> 1.900.12 and later versions.
>From your side looks to be correct, What I'm trying to point out is to not=
=20
trust at all cve-requests that never went under upstream eyes.


>=20
> > months later we have:
> > https://nvd.nist.gov/vuln/detail/CVE-2017-11720
> > "There is a division-by-zero vulnerability in LAME 3.99.5, caused by a
> > malformed input file."
>=20
> When we worked on your CVE ID request for the
> https://blogs.gentoo.org/ago/2017/06/17/lame-divide-by-zero-in-parse_wave=
_he
> ader-get_audio-c/ report, we had the information about the affected
> source-code pathname frontend/get_audio.c, and we had found the
> https://bugs.debian.org/777159 information about "this is all in the
> frontend code in frontend/get_audio.c:parse_wave_header() and not in
> the library." By contrast, the CVE-2017-11720 request had less
> technical detail about the source-code location, and the requester had
> checked the "Has vendor confirmed or acknowledged the vulnerability?"
This is right from your side, but looks to be false in the reality. The cve=
=20
was issued on 07/28/2017 while the first comment from upstream was on=20
08/13/2017 (https://sourceforge.net/p/lame/bugs/460/). Again do not entirel=
y=20
trust request that never went under upstream eyes.

> Yes box on our https://cveform.mitre.org web site. In general, if a
> problem is only a divide-by-zero in a command-line program, but the
> upstream vendor decided to categorize it as a vulnerability, then it
> gets a CVE. Admittedly, there was no direct proof of "decided to
> categorize it as a vulnerability" here. Also, if a CVE is already
> populated, and is about this type of valid crash report, then we do
> not retroactively reject it, even if we learn more about exploitation
> relevance. We will update CVE-2017-11720 with your reference, to help
> to show that you were the original discoverer.

As said to Henri in my previous email, the problem is not the FPE itself or=
=20
something technical.
As you can clearly see I'm trying to include the asan output on each bug I=
=20
find, to make it easily-comparable and sometimes you can easily understand =
the=20
cause/nature of the issue. Unfortunately people do not do the same and this=
=20
causes the presence of duplicates.


--=20
Agostino Sarubbo
Gentoo Linux Developer
