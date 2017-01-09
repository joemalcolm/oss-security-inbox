X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3347" "Monday" "9" "January" "2017" "09:24:51" "-0800" "Thiago Macieira" "thiago@macieira.org" "<3373460.x0yP8h7b03@tjmaciei-mobl1>" "81" "[oss-security] Re: [Security] Qt QXmlSimpleReader" "^Cc:" nil nil "1" "2017010917:24:51" "[oss-security] Re: [Security] Qt QXmlSimpleReader" (number mark "        thiago@macie Jan  9   81/3347  " thread-indent "\"[oss-security] Re: [Security] Qt QXmlSimpleReader\"\n") "<20161224151833.GA6612@openwall.com>" ("<20161224151833.GA6612@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9527 invoked by uid 550); 9 Jan 2017 17:39:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32378 invoked from network); 9 Jan 2017 17:25:06 -0000
Message-ID: <3373460.x0yP8h7b03@tjmaciei-mobl1>
In-Reply-To: <20161224151833.GA6612@openwall.com>
References: <20161224151833.GA6612@openwall.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Date: Mon, 09 Jan 2017 09:24:51 -0800
From: Thiago Macieira <thiago@macieira.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [Security] Qt QXmlSimpleReader
To: security@qt-project.org

On s=E1bado, 24 de dezembro de 2016 16:18:33 PST Solar Designer wrote:
> Hi,
>=20
> To what extent has Qt's QXmlSimpleReader class been reviewed for
> vulnerabilities?  I found only Florian Weimer's CVE-2013-4549
> "XML entity expansion denial of service", which Red Hat somehow chose
> not to fix (no intent to parse untrusted XML?) even though they got
> upstream to fix it.

It has not been at all reviewed. That class is deprecated and we have zero=
=20
resources paying attention to it.

> https://bugzilla.redhat.com/show_bug.cgi?id=3D955375
> http://lists.qt-project.org/pipermail/announce/2013-December/000036.html
> https://codereview.qt-project.org/#/c/71010/
> http://blog.qt.io/blog/2014/04/24/qt-4-8-6-released/
>=20
> Is high memory consumption for large XML files/inputs expected by users
> of this library, or is there an expectation that there would be some
> safety limits in place in the library?  In my testing, for very long tag
> names or element contents, memory consumption is 4x their size - e.g.,
> about 8 GB for an almost 2 GB tag or element.

Unknown. We don't have anyone who knows the source code anymore, so we simp=
ly=20
can't tell you how much it may or may not cache.

The only recommended class for reading XML is QXmlStreamReader. Using any o=
f=20
the classes from the QtXml library should only happen with trusted sources.

> I guess CVE-2013-4549 was worse than that?  Did it result in recursive
> expansion, meaning that even a tiny input would exhaust all memory?
> (I didn't try triggering it specifically.)

Yes, exponential increase in memory usage was caused by recursive expansion.

> Then there's value.resize(), which also accepts a signed int (so the
> above code's use of signed int may have been justified, after all):
>=20
> http://doc.qt.io/qt-4.8/qstring.html#resize
>=20
> "If size is greater than the current size, the string is extended to
> make it size characters long with the extra characters added to the end.
> The new characters are uninitialized.
>=20
> If size is less than the current size, characters are removed from the en=
d."
>=20
> No clear explanation on what will happen on a negative size, and besides
> it might also be possible to exceed 4 GB and get to positive values again.

Negative sizes are the same as zero. You can't exceed 4 GB with a signed in=
t=20
in QString.

> Is there anything at higher layers, yet applicable to all published Qt's
> APIs, consistenly limiting XML inputs to below 2 GB?  If so, this may be
> OK (but a comment would be nice).  If not, we have a problem.

No, there's no such limitation, but many classes will impose 2 GB limits du=
e=20
to array sizes. The only problem is that getting close to that limit will=20
already run into code we don't usually test. There are also some problems w=
ith=20
UB on signed overflow on Qt 4.8 and in early Qt 5 versions (I think I fixed=
 it=20
in 5.4 or 5.5).=20

> I'd appreciate any comments, especially from Florian and from upstream.
>=20
> I am Bcc'ing this to the address given at
> https://wiki.qt.io/Qt_Project_Security_Policy so that they have this
> message with the Message-ID for replies to the same thread, and I will
> also notify them separately.

--=20
Thiago Macieira - thiago (AT) macieira.info - thiago (AT) kde.org
   Software Architect - Intel Open Source Technology Center

