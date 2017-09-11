X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4462" "Monday" "11" "September" "2017" "15:58:45" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>" "99" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Cc:" nil nil "9" "2017091119:58:45" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "U       michael@orli Sep 11   99/4462  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<87a8268ong.fsf@fifthhorseman.net>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "<87a8268ong.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21761 invoked by uid 550); 11 Sep 2017 19:59:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21739 invoked from network); 11 Sep 2017 19:59:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1505159937; bh=oCCcf2rsSFoW8h5scxg/IlAXpgtPWbHruegHWSrYWVY=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To;
	b=EuH2z4UzAwtU1pQMlspMNIcSP/SgvmVzPK81NLgzCkSTNTHXcjA5DrF1yP52pGcDd
	 /qGePXMQ5KcRyJptZ++l5G+iX87W8aBirBKi0ipkBNlhoj57Xk8aWGJnZuDEL+VIa+
	 lUAZysLZwLlI7QxXSspd9k8sm5iVeuVlSo3qaITg=
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
 <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
 <87a8268ong.fsf@fifthhorseman.net>
Message-ID: <8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <87a8268ong.fsf@fifthhorseman.net>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="AXqafdot1Spe1rpkwLIPWRmnU5rDm1TLB"
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Date: Mon, 11 Sep 2017 15:58:45 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
To: oss-security@lists.openwall.com

--AXqafdot1Spe1rpkwLIPWRmnU5rDm1TLB
Content-Type: multipart/mixed; boundary="XE8Cnbf1k3COMoNv9k5FXE6itNqBdQlqt";
 protected-headers="v1"
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Cc: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Message-ID: <8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
 <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
 <87a8268ong.fsf@fifthhorseman.net>
In-Reply-To: <87a8268ong.fsf@fifthhorseman.net>

--XE8Cnbf1k3COMoNv9k5FXE6itNqBdQlqt
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 09/07/2017 12:22 PM, Daniel Kahn Gillmor wrote:
>=20
>> I've found services that run with *two* PID files...
>=20
> sigh.  are you cataloging these somewhere?  this is really valuable
> work, and it'd be great to see a list of common failures.  Do you know
> if any of them are collected under CWE or any other widely-accepted
> taxonomy?

I collected a bunch of common problems into a pull request for OpenRC:

   https://github.com/OpenRC/openrc/pull/162

I would like to have something more comprehensive for init script
writers, but we would need to consolidate some of the existing
documentation from both OpenRC and various Gentoo sources. With OpenRC
we get to cheat a little, because we always have the option to run the
daemon in the foreground and supervise it. A comparable document for
SysV init script writers would need different workarounds for the
problems that OpenRC services solve in that manner.

The motivation for those tips can be found in the Gentoo bugs I've been
filing on bugs.gentoo.org. You can find most of them by searching for
"pid" in the summary with "mjo@gentoo.org" as the reporter (don't forget
to include resolved bugs). It's slow going because I'm trying to provide
either a complete list of suggestions, or a rewritten init script that
does things right.


> Is there any way to automate these tests, or do we need a human to read
> each initscript and look for flaws?  Are other people helping you in
> this review?  how are you tracking/coordinating your reviews?

It's just me as far as I know. I stumbled onto this by accident while
cleaning up an OpenRC init script that was shipped as part of an
upstream package. I updated it, and then noticed that my init script was
vulnerable to the PID file trick. Then I realized that everybody else
has the same problem.

You probably need a human to make the final decision on whether or not
an init script is vulnerable, but my lame heuristic so far has been
hilariously accurate: does the init script mess with file/directory
ownership? If so, it's probably vulnerable to *something*.

I've still got a list of 100 or so to investigate that change ownership
of a directory under /var/run. Very few of those will be false positives
-- it's OK to put a socket or lock file there, but not a PID file.


--XE8Cnbf1k3COMoNv9k5FXE6itNqBdQlqt--

--AXqafdot1Spe1rpkwLIPWRmnU5rDm1TLB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQKTBAEBCgB9FiEEFOnXLXsa/e/AtBwfb0jT2gXC2tsFAlm26v1fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDE0
RTlENzJEN0IxQUZERUZDMEI0MUMxRjZGNDhEM0RBMDVDMkRBREIACgkQb0jT2gXC
2tvPkw/+IIMdckqzrP1cVFWkgBlGLFUaQSvJfj41N+0BZvYUYmxZoRPIk2P2d1/R
51+P1FtrxP50WSgkHh5DP5QlAamFPnVJ+Bz1s0juyEtQ/NhiNYTc8tR2bJsXWuxm
6J8KOGCNbfw6/Pfj2VskoZXRh7rE/QuQLU/rrgzh8aVUc4k60nLPo7WTe9ad1Fxc
jF+GXtNTpEADEzpvZCy3JFZM5vDm6UcfFhLrb0S60XdEvmtGLmVgM9MFJRAfgv/Y
gdFsiiEajtJxI4rXZaml/igNjQIZE8Kmo2e65A2tsvTLbdVkfxEv+V5XuezzBQd8
xcm3Zt3nJkAlT0GFo8XtN4BsKILr/DTkQsqXy75sG7OqIidRidnAj7Mw4AP9VGmS
Ah8cBvZfSYKdY0ypLoc8frbNrvR+vjBt4G1bm4of5Puyu4fyFSW3zOvwJsioA6Gt
s3RYjCYkY5h4WGmoMNq6zBWjDsT5bZl/ZRVEO8DFrP7d4Da3K284KxsRggK5wabC
g/Vgo5Kg3hqimHgxttvAVYg6mPNeqnL/PC+OEREktiVo6fVEIyoy8KyF7O+h2/gp
4k8f+/ZkXDE2hYhTFp+fmV6rxcQaVq4by+3eTqGRqZiYKlozcTsRgsw+8DOs5wZO
tSJWrl+KxkftwycJtf3jZ2X0PnRkyeElGoReIlSOdViC7447kno=
=+14f
-----END PGP SIGNATURE-----

--AXqafdot1Spe1rpkwLIPWRmnU5rDm1TLB--
