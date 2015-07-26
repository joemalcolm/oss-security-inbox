X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4036" "Sunday" "26" "July" "2015" "11:43:16" "-0700" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150726114316.4664271b@pc1>" "89" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072618:43:16" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        hanno@hboeck Jul 26   89/4036  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<87wpxo9ck7.fsf@lysator.liu.se>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>" "<871tfxdgzw.fsf@lysator.liu.se>" "<55B22C72.4020706@tillo.ch>" "<874mktb7xv.fsf@lysator.liu.se>" "<875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>" "<87wpxo9ck7.fsf@lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22481 invoked by uid 550); 26 Jul 2015 18:43:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22446 invoked from network); 26 Jul 2015 18:43:25 -0000
Message-ID: <20150726114316.4664271b@pc1>
In-Reply-To: <87wpxo9ck7.fsf@lysator.liu.se>
References: <20150723170954.GA17931@localhost.localdomain>
	<87h9oud89s.fsf@lysator.liu.se>
	<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
	<871tfxdgzw.fsf@lysator.liu.se>
	<55B22C72.4020706@tillo.ch>
	<874mktb7xv.fsf@lysator.liu.se>
	<875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>
	<87wpxo9ck7.fsf@lysator.liu.se>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-28463-1437936193-0001-2"
Date: Sun, 26 Jul 2015 11:43:16 -0700
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245
 userhelper - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-28463-1437936193-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 25 Jul 2015 23:01:28 +0200
Leif Nixon <nixon@lysator.liu.se> wrote:

> Frankly, over the years I have seen pretty few people on the side of
> the angels complain that "But *why* didn't you include a weaponized
> exploit with your advisory? I feel so cheated!".

There were several occasions where I disliked that people didn't
release their poc code in the past. Maybe I haven't complained enough
about it publicly. (examples I can remember right away include BERserk
- were now someone else created a poc - and zip password encryption
flaws)

Now there is sometimes a difference between a weaponized exploit and a
testable one, but not always.
I agree that it's not nice to release an exploit right away, but I
greatly apprechiate if people release poc code at all. I think some
best practice would be "release an advisory and pre-announce poc exploit
with specified date, wait some time (maybe a week), release exploit".

> In these situations, where an exploit for a new local root
> vulnerability turned up without prior warning, we typically started
> seeing root-level incidents within 24 hours. Have you ever tried to
> get big organizations, made up of a zillion independent entities, to
> apply security patches within a timescale of hours?

Now here I think your arguments get into a dangerous direction. Because
it could be understood as that you'd take the lack of an exploit as an
excuse not to patch fast.

I think it's a crucial thing that can be learned from many of the high
profile vulns we saw in the past years - patching time matters more and
more. Just remember the drupalgeddon issue where it was later said
that everyone who hasn't patched within 7 hours should be considered
exploited. And I don't think there's any way to stop that.

What we need to keep in mind I think is this: Basically there is no
agreed procedure how to do "proper responsible disclosure". There are
many opinions out there and as much as you may dislike it, you just
have to be prepared for things happening. Some people will think
releasing exploits right away is ok. If the bug finder doesn't,
maybe someone else will release a working exploit within hours.
Sometimes agreed upon embargo timelines will break because some PR
person broke the embargo (yeah, qualys again). And you can't exclude
the possibility that people will do even less nice things like
releasing a working binary exploit without a patch and just let the IT
sec community figure the bug out. (I'm actually surprised that these
things don't happen more often.)

None of that is desirable in my opinion, but it has happened and
it will happen again. You have to be prepared for that. If you run
important IT infrastructure make sure you have a plan to patch fast.
And "fast" is hours these days.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-28463-1437936193-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVtSpEAAoJEKWIAHK7tR5CmwgP/074SfhPbByqO81e7hkDRpeo
GrYA707ggapY1t4G+31VJiCzvVVQ2FGOgxlN08pHxmdnySMtJrzhIiDq4uFF4jX3
QtyF7oVrjKB0wolSeWO8xsJsb7caOBXn7m94LDvrHRDyYbbLkppWahxDC15OtayN
ptBffgn2l8aHEL3CweRMXRdIcnE7kTUQ9vfa2180lN2QAREbyqFAi7YCCm+fFTvv
7N9OChk6+sGTkwYqdFiJM40iazEr2i0RSvdShL/Z8FwhjscMtzPlmbCrXrt/P0YN
+BwKJpG97CG8HpxiNDNt35mJBBHNuXGtAuWvwNe1Gzr41btNMI9fXqsx4411Aoip
TC38WHww2Gsr8Vj5BcGDOdlo/q9717JdiudIntFZanbBqcBlesbUvuTH7jdaMnxe
29zJEP6iExEsg/7T+rCu1y3oTeG4imC8pB5pPpbHegCYMPgMYF++1xwJX7Pf+g1H
Nb5jAq0PKTwrXZ5jtjChQKWg/Gq4WjVhMyWPovh7Z0439gXNEue2YVK6uaiax+hC
4ZirkAMtXsCFGDVlwafVNrHts0oGogBa4UaFEKdf5RVRZHwABObxTMvLJwyCqXyR
6NBH9ETAAnsTq986UaLVWF28O4ja5kMDr1R3cUekLCLYeXcR9SYiZvMyF8Qxy5fA
+j+gg5dJG4hXieXzKTC7
=4IPs
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-28463-1437936193-0001-2--
