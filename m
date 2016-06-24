X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8774" "Friday" "24" "June" "2016" "18:53:53" "+0000" "Jesse Hertz" "Jesse.Hertz@nccgroup.trust" "<466B898A-FC0D-4106-A0AB-4DD755C3053E@nccgroup.trust>" "166" "[oss-security] Linux CVE-2016-4997 (local privilege escalation) and CVE-2016-4998 (out of bounds memory access) " nil nil nil "6" "2016062418:53:53" "[oss-security] Linux CVE-2016-4997 (local privilege escalation) and CVE-2016-4998 (out of bounds memory access)" (number mark "U       Jesse.Hertz@ Jun 24  166/8774  " thread-indent "\"[oss-security] Linux CVE-2016-4997 (local privilege escalation) and CVE-2016-4998 (out of bounds memory access) \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21919 invoked by uid 550); 24 Jun 2016 19:18:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5137 invoked from network); 24 Jun 2016 18:54:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1466794437; bh=j6HQGQlEMSj+50VTN2e1d3MAYhemksfptzE8S4XqsME=; h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=TrsHaZaTI3DvNE1d7+mF2Hk6Xq5JKqDq/MNmmGcUI5Ul9InzEL7bxzROfE6xNmw2OazCUIiAKRqn1RGfIERSdAmsXsHY5f8rC1eByIq356HZcwT4YbffJ76qohuFbiMuRXoJm45ke1gowy9E92o0UC8zBbhaUixo7mHRvYKWJoU=
X-MC-Unique: DdtO-uI6PvKEfL0hiFrcuA-1
X-PGP-Universal: processed;
	by lon1srvpgp01p.nccgroup.local on Fri, 24 Jun 2016 19:53:54 +0100
From: Jesse Hertz <Jesse.Hertz@nccgroup.trust>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Linux CVE-2016-4997 (local privilege escalation) and
 CVE-2016-4998 (out of bounds memory access) 
Thread-Index: AQHRzknABVsr92Aea0CdwE6/lyoC4w==
Date: Fri, 24 Jun 2016 18:53:53 +0000
Message-ID: <466B898A-FC0D-4106-A0AB-4DD755C3053E@nccgroup.trust>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.20.1.120]
signature: OK
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7C455BCE-5A4F-4E68-AA64-E0E18031F123";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
Subject: [oss-security] Linux CVE-2016-4997 (local privilege escalation) and CVE-2016-4998
 (out of bounds memory access) 

--Apple-Mail=_7C455BCE-5A4F-4E68-AA64-E0E18031F123
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_67D7E42F-29A6-48E3-9EAE-8D0CBBE55AB5"


--Apple-Mail=_67D7E42F-29A6-48E3-9EAE-8D0CBBE55AB5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi All,

As part of a kernel fuzzing project by myself and my colleague Tim Newsham,=
 we are disclosing two vulnerabilities which have been assigned CVEs. Full =
details of the fuzzing project (with analysis of the vulnerabilities) will =
be released next week.

These issues are fixed in the following commits

http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3Dce683e5f9d04 <http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux=
.git/commit/?id=3Dce683e5f9d04>
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D6e94e0cfb088 <http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux=
.git/commit/?id=3D6e94e0cfb088>
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3Dbdf533de6968 <http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux=
.git/commit/?id=3Dbdf533de6968>

And have now been integrated into stable kernel releases: 3.14.73, 4.4.14, =
and 4.6.3.

Theses issues occurs in the same codepaths as, but are distinct from, a sim=
ilar vulnerability: CVE-2016-3134 (https://bugs.chromium.org/p/project-zero=
/issues/detail?id=3D758 <https://bugs.chromium.org/p/project-zero/issues/de=
tail?id=3D758>).

#########

CVE-2016-4997: Corrupted offset allows for arbitrary decrements in compat I=
PT_SO_SET_REPLACE setsockopt

Risk: High

Impact: Kernel memory corruption, leading to elevation of privileges or ker=
nel code execution. This occurs in a compat_setsockopt() call that is norma=
lly restricted to root, however, Linux 3/4 kernels that support user and ne=
twork namespaces can allow an unprivileged user to trigger this functionali=
ty. This is exploitable from inside a container.

##########

CVE-2016-4998: Out of bounds reads when processing IPT_SO_SET_REPLACE setso=
ckopt

Risk: Medium

Impact: Out of bounds heap memory access, leading to a Denial of Service (o=
r possibly heap disclosure or further impact). This occurs in a setsockopt(=
) call that is normally restricted to root, however, Linux 3/4 kernels that=
 support user and network namespaces can allow an unprivileged user to trig=
ger this functionality. This is exploitable from inside a container.

##########


Best,
-jh

--Apple-Mail=_67D7E42F-29A6-48E3-9EAE-8D0CBBE55AB5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D""><div class=3D""=
>Hi All,</div><div class=3D""><br class=3D""></div><div class=3D""><span cl=
ass=3D"" style=3D"word-wrap: break-word; text-rendering: optimizelegibility=
;">As part of a kernel fuzzing project by myself and my colleague Tim Newsh=
am, we are disclosing two vulnerabilities which have been assigned CVEs. F<=
/span>ull details of the fuzzing project (with analysis of the vulnerabilit=
ies) will be released next week.&nbsp;</div><div class=3D""><span class=3D"=
" style=3D"word-wrap: break-word; text-rendering: optimizelegibility;"><br =
class=3D""></span></div><div class=3D""><span class=3D"" style=3D"word-wrap=
: break-word; text-rendering: optimizelegibility;">These issues are fixed i=
n the following commits</span></div><div class=3D""><br class=3D""></div><d=
iv class=3D""><div class=3D""><a href=3D"http://git.kernel.org/cgit/linux/k=
ernel/git/torvalds/linux.git/commit/?id=3Dce683e5f9d04" class=3D"">http://g=
it.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3Dce683e5=
f9d04</a><br class=3D""><a href=3D"http://git.kernel.org/cgit/linux/kernel/=
git/torvalds/linux.git/commit/?id=3D6e94e0cfb088" class=3D"">http://git.ker=
nel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3D6e94e0cfb088<=
/a><br class=3D""><a href=3D"http://git.kernel.org/cgit/linux/kernel/git/to=
rvalds/linux.git/commit/?id=3Dbdf533de6968" class=3D"">http://git.kernel.or=
g/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3Dbdf533de6968</a><br=
 class=3D""></div><br class=3D""></div><div class=3D""><div class=3D""><spa=
n class=3D"" style=3D"word-wrap: break-word; text-rendering: optimizelegibi=
lity;">And have now been integrated into stable kernel releases:&nbsp;</spa=
n>3.14.73, 4.4.14, and 4.6.3.&nbsp;</div><div class=3D""><br class=3D""></d=
iv></div><div class=3D"">Theses issues occurs in the same codepaths as, but=
 are distinct from, a similar vulnerability: CVE-2016-3134 (<a href=3D"http=
s://bugs.chromium.org/p/project-zero/issues/detail?id=3D758" class=3D"">htt=
ps://bugs.chromium.org/p/project-zero/issues/detail?id=3D758</a>).&nbsp;</d=
iv><div class=3D""><br class=3D""></div><div class=3D"">#########</div><div=
 class=3D""><br class=3D""></div><div class=3D""><div class=3D"">CVE-2016-4=
997: Corrupted offset allows for arbitrary decrements in compat IPT_SO_SET_=
REPLACE setsockopt<br class=3D""><br class=3D"">Risk: High</div><div class=
=3D""><br class=3D""></div><div class=3D"">Impact: Kernel memory corruption=
, leading to elevation of privileges or kernel code execution. This occurs =
in a compat_setsockopt() call that is normally restricted to root, however,=
 Linux 3/4 kernels that support user and network namespaces can allow an un=
privileged user to trigger this functionality. This is exploitable from ins=
ide a container.&nbsp;</div><div class=3D""><br class=3D""></div><div class=
=3D""><div class=3D""><div class=3D""><div class=3D""><div class=3D"" style=
=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: af=
ter-white-space;"><div class=3D""><div class=3D""><div class=3D"" style=3D"=
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-=
white-space;"><div class=3D""><div class=3D""><div class=3D"" style=3D"word=
-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-whit=
e-space;"><div class=3D""><div class=3D"">##########</div></div></div></div=
></div></div></div></div></div></div></div></div></div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">CVE-2016-4998: Out of boun=
ds reads when processing IPT_SO_SET_REPLACE setsockopt</div><div class=3D""=
><div class=3D""><div class=3D"" style=3D"word-wrap: break-word; -webkit-nb=
sp-mode: space; -webkit-line-break: after-white-space;"><div class=3D""><di=
v class=3D""><div class=3D"" style=3D"word-wrap: break-word; -webkit-nbsp-m=
ode: space; -webkit-line-break: after-white-space;"><div class=3D""><div cl=
ass=3D""><div class=3D"" style=3D"word-wrap: break-word; -webkit-nbsp-mode:=
 space; -webkit-line-break: after-white-space;"><div class=3D""><div class=
=3D""><br class=3D""></div></div></div></div><div class=3D""><div class=3D"=
" style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-br=
eak: after-white-space;"><div class=3D""><div class=3D"">Risk: Medium<br cl=
ass=3D""><br class=3D""></div><div class=3D"">Impact: Out of bounds heap me=
mory access, leading to a Denial of Service (or possibly heap disclosure or=
 further impact). This occurs in a setsockopt() call that is normally restr=
icted to root, however, Linux 3/4 kernels that support user and network nam=
espaces can allow an unprivileged user to trigger this functionality. This =
is exploitable from inside a container.&nbsp;</div><div class=3D""><br clas=
s=3D""></div><div class=3D"">##########</div></div></div></div></div></div>=
</div></div></div></div></div></div><div class=3D""><br class=3D""></div><d=
iv class=3D""><br class=3D""></div><div class=3D"">Best,</div><div class=3D=
"">-jh</div></div></body></html>=

--Apple-Mail=_67D7E42F-29A6-48E3-9EAE-8D0CBBE55AB5--

--Apple-Mail=_7C455BCE-5A4F-4E68-AA64-E0E18031F123
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXbYHAAAoJEPhkPVYKhDWbkdAIAJlN7g3F7vQ75EhBTzTpa6pd
ikSRoId4MGrVI99dlxgJOzzqUGkaQrtJndYIigUfEyZY8wrMfshaAZv3Mi6btari
R52R5ib0c3qS2hBl31MU4ZLOilMmoPUsPDN+kc+hptZugSkyZYhISfC8jQSmoSru
naqTqeCsl+sxI4zJA8Z8NEYJKRem9VsO7iJ1Xcp6l2flJytI9O0JTqMtucPpPzPO
lGzcYgEBrmw5d0YFS9K//cUxHOTqiyKj/RpZyWvEmSqSNcRhHb0bTUiPmLFHFzxJ
WaUyIvv+eXqvbGV1m9bMPv+HG4U7kfonG7YGIxf/P+t4uCDI9zKzu2i2mfjE4o0=
=yPlh
-----END PGP SIGNATURE-----

--Apple-Mail=_7C455BCE-5A4F-4E68-AA64-E0E18031F123--

