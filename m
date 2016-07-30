X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3501" "Saturday" "30" "July" "2016" "10:27:09" "-0400" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160730102709.25d91e44@pc1>" "82" "Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" "^Cc:" nil nil "7" "2016073014:27:09" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        hanno@hboeck Jul 30   82/3501  " thread-indent "\"Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)\"\n") "<83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>" ("<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>" "<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>" "<20160729115843.386c87dc@pc1>" "<83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3477 invoked by uid 550); 30 Jul 2016 14:27:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3456 invoked from network); 30 Jul 2016 14:27:24 -0000
Message-ID: <20160730102709.25d91e44@pc1>
In-Reply-To: <83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>
References: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
	<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>
	<20160729115843.386c87dc@pc1>
	<83a44672-b86b-08c3-689e-f55675c5f6b7@gmail.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-4578-1469888834-0001-2"
Cc: oss-security@lists.openwall.com
Date: Sat, 30 Jul 2016 10:27:09 -0400
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Use after free in my_login() function of
 DBD::mysql (Perl module)
To: lazytyped <lazytyped@gmail.com>

--=_zucker.schokokeks.org-4578-1469888834-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 29 Jul 2016 20:42:03 -0700
lazytyped <lazytyped@gmail.com> wrote:

> Well, AddressSanitizer should have told you whether the access is a
> read access (as I suspect) or a write access. A bit of code
> inspection (or follow up from the code maintainer) should add to the
> picture.

It's my (maybe poor / limited) understanding that most use after free
bugs are actually reads, but still can lead to code execution, e.g. if
the read includes function pointers. This is probably not the case in
this example (but I previously had an example where I thought it's not
exploitable for similar reasons, and later got told by people who
understand this stuff much better that they disagree).

> It would be great if we could get a bit more triaging by the owner of
> the code or the submitter before declaring the bug one thing or the
> other (especially in these days of projects like yours that bring in
> a lot of reports -- and don't get me wrong, this is a very valuable
> effort).

I understand your wish here, but I am afraid it doesn't match up well
with the reality we are in.

I had similar discussions before, but I think there is a very obvious
problem here: The tools we use to find these bugs (asan+afl) are dead
simple and there are a lot of people out there using them, finding and
reporting bugs. The number of people with a detailed knowledge of
memory corruption on the other hand is small.

Generally this is a good thing, as it means more people finding bugs.
But we have a large number of people who can use the tools to find
these bug classes, but who aren't neccessarily able to judge the
severity. And that definitely includes me (although I learned a lot in
the past year, but I've been accused both in over and underplaying bugs
in the past).
My approach to this is that I simply try to choose my wording that it
matches what I know and if I can't say anything reasonable about
exploitability I simply don't.

As for CVEs, it's my impression that MITRE right now has a policy that
they give one for almost any memory safety issue and that they don't
require an explicit exploit scenario. E.g. my impression is that buffer
overreads, as long as they aren't simply in a command line tool, almost
always get CVEs.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-4578-1469888834-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXnLk9AAoJEKWIAHK7tR5C/Q0P/0xBFDIlIXhHDeVvhcTqDH9+
RU7Pq+T/qmndNao0yWw0IexwhyqudN9ymZpg6a3xSjZ7mPLUKwyPW4ZTx/zEBwsY
Jmcw23xqLbGdrMbchIxMS/4II0Z26u1uP8nze9mIgX5C9NDV8/lcmQv7UoiIdP+9
XmXiSNHxruBmAR+hQTCLF9ihW/gHL2PB7+X7TTYyB5acaf4jOKkKKHtOnJrPNp1D
dw/LsxKV2iM4enqY/5Ti5N5AZrk4Cj4n+o2YgBqmsO4VCHXoRAx0P7j1fbwMxOvf
D7Wkl/tWzSMzRbYagUjunHLhlmOI0GkQfJYauHlPTrhI+blP2vNL79KWRQY7wnXc
edZDScSmKz1V0HmSptmK1Deb/xBNMJYZFfnZJCwq/G1qbCtAME8wBRTZj+MzrbIk
e3dvb6WyhbSS8v3p9OzGhqzJPj7dFdNzkze03Njqe9fOT/yUowEHaIwtjKlAw/BO
DV3KeFZPKnYbEvQUvv3IjqA+tWOvK8iHoTOWX/rklDA3nRNDaZLYlMeBbhbqUiQD
wjBPBGrJd663El3wDSwVx95Oc9i4/6t4PsmUCH0n4vdrM4b1c3nLSc4NKSadrtW0
4jF4y+bvj9W2bc1dRPswvgRAXae79wepakZts/8RDTjoFGzY6+KPysFQuUJGPSWG
RsncymnJfPQ511RxeI6v
=R0oF
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-4578-1469888834-0001-2--
