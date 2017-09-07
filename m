X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2403" "Thursday" "7" "September" "2017" "12:29:50" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<877exa8oap.fsf@fifthhorseman.net>" "61" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "9" "2017090716:29:50" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        dkg@fifthhor Sep  7   61/2403  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "<20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14118 invoked by uid 550); 7 Sep 2017 16:30:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14073 invoked from network); 7 Sep 2017 16:30:08 -0000
In-Reply-To: <20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com> <87wp63jgxn.fsf@fifthhorseman.net> <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com> <87ingva5rf.fsf@fifthhorseman.net> <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com> <20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>
Message-ID: <877exa8oap.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 07 Sep 2017 12:29:50 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation
To: Simon McVittie <smcv@debian.org>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

On Thu 2017-09-07 16:27:25 +0100, Simon McVittie wrote:
> Ideally, the sequence of events would be something that ensures that
> the pid file already exists by the time readiness has been announced,
> like this pseudocode:
>
>     have the necessary privileges to write a pid file
>     fork
>     if (parent) {
>         write child pid to pid file
>         exit    /* tells supervisor we are ready */
>     }
>     else /* child */ {
>         drop privileges
>         while (1) { process request }
>     }

Is there a potential race condition here?  for example, if dropping
privileges takes some amount of time, or if there is additional setup
that ought to be done as non-root (building tables, pre-processing a
dataset from the filesystem, initializing a PRNG), then this pattern is
actually pretty hard to get right as a notification.

the options seem to be:

 0) if dropping privs is known to be fast, then move any lengthy
    initialization/setup into the root/pre-fork side.  this is a
    violation of the principle of least privilege.

 1) establish a communication channel between the child and the parent,
    and have the child explicitly signal to the parent that it is ready
    so that the parent can exit() appropriately.

but (1) is at least as much work as any of the other forms of explicit
notification to the service manager directly, so it's not clear that
forking is a great way to provide such notification.

        --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmxc/4ACgkQFJitxsGS
MjfugxAAvTlVZFfT+r9t1KmgsqcbUrBtJm2wnq1QhHQ3eZ/sM8Nxpc+6W00h1zNk
Xe0gtXPA+49S3oHZomrqXgU6vwvQQ/+pI9VI2cPcQ80UykB43+A4tTvMAOeU7W+b
Rohvv3V7DUmyMTdOBf70CtGfc9Sp+ZwWr0VGs8qqODQ8l6xw/+/Z8MThSqYnR9rz
pAzmVC96d+fBe3QWqTooIKJPl/LDmeiUhnylY9/IVhFjprCc5IM/gcn72f63zel8
OW2om9DVD+NBAgqs22RJq7zcZir3jjhM4TURvr14jOk5j077E0oOxdzM4G7tuDpG
iu/od0fG07GjXMRTF/DEbqSacZskIEDChs3HaZ3Q80xs3jIR5vE8X/92cngAom7l
ljS5QCrgrGiGoBevqwcbT99HJ5bpkvjL6HdyDov3bJKlwFqF6w0bYn7L4l7nFr+m
AuwlLylSkw8ra8B/ebUagNUwygY9uyIhpLwSnder6Eh6/KTgvoERVsDyHBgxk1bF
GwIPKINNCAbqxrhRIUYEx6lKvIFSYcP4/gVOoYNt3dkIs1LPYLXjuvpsRrKWujuZ
Nh6/MnYn1kak2BXYcR9DtUdM8XeLdVGKcVRKvQf4jYsvGQHseDdPnkYTPDvwjC0f
dti0DWibFg4fFx8a3OSgv6vb+XuzRC+BSH/2QQoaRa/gA1ErWAQ=
=MfAa
-----END PGP SIGNATURE-----
--=-=-=--
