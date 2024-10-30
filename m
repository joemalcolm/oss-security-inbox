Received: (qmail 4033 invoked by uid 550); 30 Oct 2024 17:40:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16216 invoked from network); 30 Oct 2024 17:32:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1730309559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=y8wsnwc00olWnm/KnW6FIId/KVgEgfp4Pz6ljyGB9D8=;
	b=cBOyIXdPGR+Xi0M18Os+vD06q6uQCh7KUO9713n11iSbFVeBj7tCeWJBWb6IR5RJxJ3bHt
	8S/ZPNSwbpxu+Skfl7yvwk2aa2lNNDvNGo3GLzgCj9qWZ75VjwmqgEE27jbHCS4Ovj8x30
	s+C3j3C29oljCvazL8QAIkkw+1oUVlzkgBme82VNUeWHk29VMM8TWPk0dcEWS5a+d9QIHP
	CYTdmdczuhKbqX6Fpv8+zWEbL06Nyjbkw3DOE7ixXLZhdJTvQ6SY7bQr3shMOKRmKbCmKs
	QP/8aGkjQDQOOdf2JiCuyum2ohrCImtbGC9QvNu6osG0c6tq71s1WfZDiW9kzg==
Date: Wed, 30 Oct 2024 18:32:37 +0100
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: <oss-security@lists.openwall.com>
Message-ID: <20241030183237.4e46db4f@plasteblaster>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-debian-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [134.100.32.91]
X-ClientProxiedBy: EX-S-MR06.uni-hamburg.de (134.100.84.89) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
Subject: [oss-security] mpg123 buffer overflow in versions before 1.32.8 (Frankenstein's
 Monster)

Dear list,

as upstream of mpg123, I recently fixed a possibly serious issue that
resulted in writing past a buffer on the heap under certain use cases.
The fixed release is 1.32.8.=20

There is no CVE for this (that I know of). If someone allocates one,
I'd be fine with that, but I am prioritizing my time in coordination
with demanding RL and focussed on getting the fix prepared. The bug
report

	https://mpg123.org/bugs/322

has always been public, so I got the fix out and decided that I do
spend a moment on this note here, seeing that distros still ship
vulnerable versions, notably Debian stable / oldstable =C2=AD=E2=80=94 desp=
ite
the unstable repo duly having picked up my new release. I guess if
there is no CVE to grep in announcements people don't notice that it's
an important security fix? My bad, then =E2=80=A6

Observing that versions 1.26.x and 1.31.x are still in the wild, I
ported the recent security fix to those release series. Please see
recent commits to

	svn://scm.orgis.org/mpg123/branches/1.26-fixes and
	svn://scm.orgis.org/mpg123/branches/1.31-fixes

Current code is also visible under

	https://scm.orgis.org/mpg123/branches/1.26-fixes/ and
	https://scm.orgis.org/mpg123/branches/1.31-fixes/

I am quoting the initial release announcement, also avaiable under

	https://mpg123.org/cgi-bin/news.cgi#2024-10-26

Releasing mpg123 version 1.32.8: Frankenstein's Monster

This is an important security update! There is possible buffer overflow
(writing of decoded PCM samples beyond allocated output buffer) for
streams that change output properties together with certain usage of
libmpg123. This needed seeking around in the stream (including scanning
it before actual decoding) to trigger. So, your usual web radio stream
as obvious attack vector is unlikely, as you won't seek around in it.
If you do work with stream dumps, usage of MPG123_NO_FRANKENSTEIN or
the --no-frankenstein option to the mpg123 application is a workaround
to avoid the formerly dangerous situation in earlier mpg123 releases.
This also means that mpg123 will not decode streams of concatenated
files with either varying format or leading Info frames past the first
track anymore.

With this release, the parser has been improved not to store certain
stream properties before actual MPEG frame data matching that property
has been stored. This avoids the inconsistency that triggered the
overflow. Also note that if you always use a fixed decoding buffer for
full stereo of the maximum of 1152 samples per frame, times two and
your choice of encoding, your application is also not susceptible.

Exploitation of this is not trivial, but I cannot rule out the
possibility of gaining code execution. Your exploit payload needs to
pass through an MPEG decoder and PCM synth before possibly reaching the
CPU. Some heap corruption can follow at the least. So update or
mitigate. If you run 1.32.x, there is no excuse not to get the the
latest bugfix release now.=20

Basically any version of mpg123 is affected by this, at least those
that explicitly support so-called Frankenstein streams.

Thanks to kkkkk123 for bringing this heir to the initial bug 322 to my
attention.


Alrighty then,

Thomas

--=20
Dr. Thomas Orgis
HPC @ Universit=C3=A4t Hamburg
