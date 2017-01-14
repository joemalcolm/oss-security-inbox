X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1481" "Saturday" "14" "January" "2017" "09:39:24" "-0800" "Thiago Macieira" "thiago@macieira.org" "<4157335.rtgyRqVO9G@tjmaciei-mobl1>" "36" "[oss-security] Re: [Security] Qt QXmlSimpleReader" "^Cc:" nil nil "1" "2017011417:39:24" "[oss-security] Re: [Security] Qt QXmlSimpleReader" (number mark "        thiago@macie Jan 14   36/1481  " thread-indent "\"[oss-security] Re: [Security] Qt QXmlSimpleReader\"\n") "<20170114164211.GA17377@openwall.com>" ("<20161224151833.GA6612@openwall.com>" "<3373460.x0yP8h7b03@tjmaciei-mobl1>" "<20170114164211.GA17377@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26444 invoked by uid 550); 14 Jan 2017 17:41:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25905 invoked from network); 14 Jan 2017 17:39:38 -0000
Message-ID: <4157335.rtgyRqVO9G@tjmaciei-mobl1>
In-Reply-To: <20170114164211.GA17377@openwall.com>
References: <20161224151833.GA6612@openwall.com> <3373460.x0yP8h7b03@tjmaciei-mobl1> <20170114164211.GA17377@openwall.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: security@qt-project.org, oss-security@lists.openwall.com
Date: Sat, 14 Jan 2017 09:39:24 -0800
From: Thiago Macieira <thiago@macieira.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [Security] Qt QXmlSimpleReader
To: Solar Designer <solar@openwall.com>

On s=E1bado, 14 de janeiro de 2017 17:42:11 PST Solar Designer wrote:
> > No, there's no such limitation, but many classes will impose 2 GB limits
> > due to array sizes. The only problem is that getting close to that limit
> > will already run into code we don't usually test. There are also some
> > problems with UB on signed overflow on Qt 4.8 and in early Qt 5 versions
> > (I think I fixed it in 5.4 or 5.5).
>=20
> In general, are applications using Qt supposed to sanity-check the sizes
> to be significantly below 2 GiB before passing such data on to Qt?

Normal applications are supposed to be designed to use the Qt containers wi=
th,=20
in the extreme, a couple hundred thousand items. If you're using them with=
=20
upwards of a billion elements, you should redesign.

If you're dealing with untrusted data, then you're supposed to sanity check=
 it=20
before passing to any container. That's true for even the Standard Library=
=20
containers: you don't ask it to allocate 6 GB just because you got that siz=
e=20
from the network or some file, because it may succeed and that would still =
be a=20
DoS due to high swap usage.

As for QXmlSimpleReader and for the whole QtXml module, it is in Done state=
.=20
We're not working on it. We will fix security issues, though, so we need to=
=20
analyse the details that you've supplied.

--=20
Thiago Macieira - thiago (AT) macieira.info - thiago (AT) kde.org
   Software Architect - Intel Open Source Technology Center

