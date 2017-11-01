X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1484" "Wednesday" "1" "November" "2017" "16:29:32" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<94352367.aY5R7YHe3W@wanheda>" "89" "Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks" nil nil nil "11" "2017110115:29:32" "[oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks" (number mark "U       ago@gentoo.o Nov  1   89/1484  " thread-indent "\"Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks\"\n") "<tencent_C577451864B1690107062CD83581D6BE5708@qq.com>" ("<tencent_C577451864B1690107062CD83581D6BE5708@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21883 invoked by uid 550); 1 Nov 2017 15:29:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21865 invoked from network); 1 Nov 2017 15:29:49 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: =?utf-8?B?5pe65LuU?= <16362505@qq.com>, cve-assign <cve-assign@mitre.org>
Date: Wed, 01 Nov 2017 16:29:32 +0100
Message-ID: <94352367.aY5R7YHe3W@wanheda>
In-Reply-To: <tencent_C577451864B1690107062CD83581D6BE5708@qq.com>
References: <tencent_C577451864B1690107062CD83581D6BE5708@qq.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks

On mercoled=C3=AC 1 novembre 2017 03:26:56 CET =E6=97=BA=E4=BB=94 wrote:
> > [Suggested description]
> > In PCRE 8.41,
> > after compiling, a pcretest load test PoC produces a crash overflow
> > in the function match() in pcre_exec.c because of a self-recursive call.
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Vulnerability Type]
> > Buffer Overflow
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Vendor of Product]
> > Perl Compatible Regular Expressions
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Affected Product Code Base]
> > PCRE - 8.41
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Affected Component]
> > file:pcre_exec.c
> > function match() line 983 and line 2061
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Attack Type]
> > Local
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Impact Denial of Service]
> > true
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Attack Vectors]
> > A crash file
> >
> >
> >
> > ------------------------------------------
> >
> >
> >
> > [Discoverer]
> > ZHANG JIAWANG from cncert
>=20
>=20
> Use CVE-2017-16231.

I guess that this bug is similar or the same described here:
https://bugs.exim.org/show_bug.cgi?id=3D2047

Based on the upstream comment I'd suggest to reject the CVE.
--=20
Agostino Sarubbo
Gentoo Linux Developer
