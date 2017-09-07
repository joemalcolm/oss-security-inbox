X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4480" "Thursday" "7" "September" "2017" "08:38:23" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "102" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Cc:" nil nil "9" "2017090712:38:23" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        michael@orli Sep  7  102/4480  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<87ingva5rf.fsf@fifthhorseman.net>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28280 invoked by uid 550); 7 Sep 2017 12:53:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19506 invoked from network); 7 Sep 2017 12:38:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1504787912; bh=Efqpixc5NskF+3hiwg/1gEjGTQO5HpMtVwp2rgPcA8A=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To;
	b=T8PRJIvDz1zrGBosRFF7jIGkbFT2q7r1FDa9Jdf6S9kCo3JTuV6Tlaj5uYzd3eZrr
	 yyMdZ34BDJamVtXPtYYlys5F6ltEioBOIJ1DI77YyqRk3TbRij9rGz+GwYBfzcRlAm
	 zuGMkTGm8ifdKj2Qp8RKx3RPKqu/JlYrELVzmXa4=
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
Message-ID: <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <87ingva5rf.fsf@fifthhorseman.net>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="MaFdin72oPkQvG8EuSV4oRdX7itULxN6g"
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Date: Thu, 7 Sep 2017 08:38:23 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
To: oss-security@lists.openwall.com

--MaFdin72oPkQvG8EuSV4oRdX7itULxN6g
Content-Type: multipart/mixed; boundary="6sfg5fqCMCa1mojmUO5LBxP9e6EO21RiJ";
 protected-headers="v1"
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Message-ID: <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
In-Reply-To: <87ingva5rf.fsf@fifthhorseman.net>

--6sfg5fqCMCa1mojmUO5LBxP9e6EO21RiJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 09/06/2017 05:15 PM, Daniel Kahn Gillmor wrote:
>=20
> But i think future reports of problems with pidfiles (e.g. your helpful
> cleanup of mimedefang -- thanks!)  should always include the suggestion
> to disable pidfiles entirely and to encourage developers who must
> implement them to ensure that they're only an extra feature, for use
> with otherwise limited service managers, and perhaps to be compile-time
> disabled.
>=20

I've been reluctant to do this because I'm approaching these as an
OpenRC user, and OpenRC has the ability to supervise the daemon. I
always hate it when someone makes a suggestion (at my expense) that
amounts to "I don't need this, so you don't need this" -- and I don't
want to be /that/ guy.

I think a compile-time option is reasonable, though. Maybe the ability
to fork into the background should also be compiled out in that case.
When I encounter more of these, I'll provide a list of possible
solutions and include "get rid of the PID file" along with its trade-offs.

Most of the PID file vulnerabilities that I've found are in the
distribution init scripts: the only ones that hit this list are the
upstream projects that make it impossible for the distro developers to
get it right. Curiously though, a lot of the problems that I've found in
the distro scripts are for daemons that run in the foreground and are
supposed to be supervised.

Basically, there are two accepted approaches. Forking,

  1. Daemon forks
  2. Daemon writes a PID file
  3. Daemon drops privileges

And supervised:

  4. Daemon runs in the foreground, and does nothing special

What I've found is that many programs choose any old subset of (1)
through (4), and implement them in any order. As a result, init script
authors haven't developed a feel for the right way to do things; they
copy/paste snippets from other init scripts until things seem to work.

I've found services that run with *two* PID files, one of which is
ignored. I've found services that go out of their way to give away
ownership of /run/foo, even though /run/foo/foo.pid is created and owned
by root. Pretty much any way you can go wrong has made an appearance at
least once, and all of these are for daemons that should be supervised
-- the service scripts should be trivial.

Anyway, my point is, it may be optimistic to think that we can help
people not do weird things in their service scripts =3D)


--6sfg5fqCMCa1mojmUO5LBxP9e6EO21RiJ--

--MaFdin72oPkQvG8EuSV4oRdX7itULxN6g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQKTBAEBCgB9FiEEFOnXLXsa/e/AtBwfb0jT2gXC2tsFAlmxPcNfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDE0
RTlENzJEN0IxQUZERUZDMEI0MUMxRjZGNDhEM0RBMDVDMkRBREIACgkQb0jT2gXC
2tt2XRAApCSnQUHh8m2BpuRycicYsnM6TT/9VYUGlRsG63jQYBPabdj/uKurgloh
qOyVW/dSVoNddL1P2iS43Jug6qMxVw+QGUDVVTZbkPNaqdZH3FKcOv2pGjomPdgi
TpXOhdpGQu0sclLDDfovXu8Qzan3HIKH1dK0i5xMlJPsqvW7BKKpD4wXaVYHuwI2
JJD/GO8LzbxO0ZeWcqveXpemkoe7+wdTLTg6OumNKirgXGJIjGYkfqgw4uzlmNc5
LbqvscrhCctsb0psEo+ymCvGlDlOUDKmvxR1rM2DqIDpA5lSaNphSSz+6i4VfRFd
lAkbXi6c0felQz7mRsHmsoW58pfJVSFxQeN/W0Blnee1YkoqB0nKUEigtOu5o2kB
CUPWvdzV4gfZlx6qfxuCULvFWFBvthl2+CY10CucQR2SdMjmVO3o5vltVAzcTGqm
533vewpaDrB46YI36kqP8pJ5ek25EG1KwFb9dr60v9yer51qAN4MWBhOfvdBxq1s
8+I+STUAPOUNvrnXnbg4m64rJ2x9HRr7piJ+meM33MJaVtfALi8etuzC1At3RHik
M1Wk1JoV0pLHQ7w/Zc7oqZIHqHHq4M/+fWGleuKwc6r1J4fR5nJaovP4sqtJfBhx
ctNs4uTTqk1cYsTFhYMcWAQvUcwru0S6YGYcoblCg8N4IH5lz9Y=
=M1KY
-----END PGP SIGNATURE-----

--MaFdin72oPkQvG8EuSV4oRdX7itULxN6g--
