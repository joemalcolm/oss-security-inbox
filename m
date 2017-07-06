X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1667" "Friday" "7" "July" "2017" "00:34:01" "+0200" "Martin Steigerwald" "martin@lichtvoll.de" "<4674075.e61U45ziGm@merkaba>" "45" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070622:34:01" "[oss-security] systemd fails to parse user that should run service" (number mark "        martin@licht Jul  7   45/1667  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170706211258.gkd5rhnsononht6f@perpetual.pseudorandom.co.uk>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170706192753.GA9945@takahe.colorado.edu>" "<20170706211258.gkd5rhnsononht6f@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11433 invoked by uid 550); 6 Jul 2017 22:37:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8033 invoked from network); 6 Jul 2017 22:34:15 -0000
Message-ID: <4674075.e61U45ziGm@merkaba>
User-Agent: KMail/5.2.3 (Linux/4.10.17-tp520-btrfstrim+; KDE/5.28.0; x86_64; ; )
In-Reply-To: <20170706211258.gkd5rhnsononht6f@perpetual.pseudorandom.co.uk>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com> <20170706192753.GA9945@takahe.colorado.edu> <20170706211258.gkd5rhnsononht6f@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 07 Jul 2017 00:34:01 +0200
From: Martin Steigerwald <martin@lichtvoll.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run service
To: oss-security@lists.openwall.com

Simon McVittie - 06.07.17, 22:12:
> In general the same is true for the *values* of directives: systemd needs
> to choose something to do about known directives with values that it
> cannot understand, and in general they are ignored with a warning on
> the assumption that the new value is something that might have been
> understood by a newer version of systemd. That isn't appropriate for
> all directives, hence <https://github.com/systemd/systemd/pull/6300>.

Finally. Thanks.

Now: Instead of closing the original issue as *not a bug*, it would have be=
en=20
an approbiate reaction to fix the issue and then close the bug. This is wha=
t=20
upsets me most: Upstream developer behavior regarding the original github=20
issue was inapprobiate.

Taking the issue seriously from the beginning would additionally have avoid=
ed=20
all of the discussion here and elsewhere. What triggered the discussion was=
=20
that upstream developers basically explained "this is not a bug, go away" a=
nd=20
this=E2=80=A6 in my perception in an arrogant "we know better than you tone=
".

My hope is that some day the upstream developers of Systemd who handled the=
=20
original github issue the way they did, wake up=E2=80=A6 and reconsider whe=
ther their=20
behavior is approbiate and if not=E2=80=A6 change it. Cause from what I saw=
 in the=20
last years, there is a pattern to handle bugs by quickly closing them as no=
t a=20
bug. A pattern that even Linus himself criticized=E2=80=A6 rightfully so=E2=
=80=A6 in clear=20
words.

There is a social, a behavorial issue here=E2=80=A6 which IMHO is even more=
 important=20
than the technical one.

Thank you.
--=20
Martin
