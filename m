X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3105" "Thursday" "7" "September" "2017" "12:22:11" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87a8268ong.fsf@fifthhorseman.net>" "70" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "9" "2017090716:22:11" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "U       dkg@fifthhor Sep  7   70/3105  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14096 invoked by uid 550); 7 Sep 2017 16:30:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14072 invoked from network); 7 Sep 2017 16:30:08 -0000
In-Reply-To: <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com> <87wp63jgxn.fsf@fifthhorseman.net> <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com> <87ingva5rf.fsf@fifthhorseman.net> <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
Message-ID: <87a8268ong.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 07 Sep 2017 12:22:11 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation
To: Michael Orlitzky <michael@orlitzky.com>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

On Thu 2017-09-07 08:38:23 -0400, Michael Orlitzky wrote:
> I've been reluctant to do this because I'm approaching these as an
> OpenRC user, and OpenRC has the ability to supervise the daemon. I
> always hate it when someone makes a suggestion (at my expense) that
> amounts to "I don't need this, so you don't need this" -- and I don't
> want to be /that/ guy.

You don't need to be /that/ guy to point out that there are multiple
possible approaches to managing services, and some service management
approaches are simply less vulnerable to this stuff than others.

You're helping to identify a class of problems here that need to be
eliminated.  I don't think we do anyone any favors by hiding the fact
that the class of problems can be completely avoided by using systemd,
openrc, runit, s6, /sbin/init, etc.

> I've found services that run with *two* PID files, one of which is
> ignored. I've found services that go out of their way to give away
> ownership of /run/foo, even though /run/foo/foo.pid is created and owned
> by root. Pretty much any way you can go wrong has made an appearance at
> least once, and all of these are for daemons that should be supervised
> -- the service scripts should be trivial.

sigh.  are you cataloging these somewhere?  this is really valuable
work, and it'd be great to see a list of common failures.  Do you know
if any of them are collected under CWE or any other widely-accepted
taxonomy?

Is there any way to automate these tests, or do we need a human to read
each initscript and look for flaws?  Are other people helping you in
this review?  how are you tracking/coordinating your reviews?

> Anyway, my point is, it may be optimistic to think that we can help
> people not do weird things in their service scripts =)

thank you for doing this review, but i disagree with your conclusion --
you're already helping people to not do weird things in their service
scripts, just by writing these reports :)

You might not be able to prevent all the bad from happening, but
establishing what a bad practice looks like will help people push back
against those practices in the future.

Regards,

         --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmxcjMACgkQFJitxsGS
MjcuUw//RAJ6qAw0LVb8YZyx/FsrqcBNPQgWD781WzzDzeJRl/WxWsBnla6/paqn
P1BPfM7oNDX46hm28arJNiSzv6E12RiSK6/AKaN/FpqdGqJCYzHLZBHmuH5iGJAV
7NnwPtH2gFiyu97VKoTW5OFl5e8+5BcExcbSTNyNXTD01yMKZe4YE8TPDxfH3Y5A
HXw/Lz8X3yHfsjmLbd93IzR0Y6X44VrPKum5qQfiUdbYuOw2JJkmVMzsWWOB8CrW
qTDDXpx+e/Q/5tVJVR/FKdrxHojc7/CRh0RHbOY2rKsvY4KQPO37RGbslZPY7pbg
CutAXiJrxTaDkFSYT417/Ui87TZJWoTdSS0R5EnkXqKyg5xb/EF6ZMoGH8s+uxWi
jgoIYwMIfFqM+CdJM6CvkzePOe4X/AelZ07EcLaxccokfAFsFubt3j14nBcH0PAx
d1LC6ILm2ISS0a96HbDpXu/MAmlOK5JeF9J2emk9SnXXbvHLbcdxbzTPfyLMxmQU
vBpG6xvSXT/onQl3pqU06vCzpNARXkjbDxfy3H4RUWl1eSkVhc/7WBCnrYEz6TR0
rH5nNBu6weYZNnBk5C6t9SsGpaeSdnIh0JXtxtYFTS2QYqTilRkdLv6CVuXIfsNt
dJqVxuBv7K1IHt9Dqeq1kevT49s+CA14y3L7WYbAGPAyC/QBkj4=
=h0Vz
-----END PGP SIGNATURE-----
--=-=-=--
