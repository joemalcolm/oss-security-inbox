X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1739" "Wednesday" "16" "August" "2017" "18:17:40" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87wp63jgxn.fsf@fifthhorseman.net>" "44" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "8" "2017081622:17:40" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        dkg@fifthhor Aug 16   44/1739  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14176 invoked by uid 550); 17 Aug 2017 00:06:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14148 invoked from network); 17 Aug 2017 00:06:09 -0000
In-Reply-To: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
Message-ID: <87wp63jgxn.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 16 Aug 2017 18:17:40 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation
To: Michael Orlitzky <michael@orlitzky.com>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

On Wed 2017-08-16 12:10:09 -0400, Michael Orlitzky wrote:
> The problem is avoided by creating the PID file as root, before
> dropping privileges.

The problem can also be avoided by not using PID files at all, and
relying instead on a service manager that actually keeps track of its
children using more robust means (like wait() and SIGCHLD).

Even when a process isn't malicious, if it dies unexpectedly a different
process may spawn re-using the PID stored in the pidfile, in an
accidental collision.

At what point do we treat hacks like pidfiles as security risks more
generally?

pidfiles, self-daemonization, privilege-dropping, are all things that
are easy to get subtly wrong.  What do we need to offer to developers of
daemons to encourage them to just stop doing them?

  --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmUxIQACgkQFJitxsGS
MjeqlA//asdR/M6Q4PeI1oIw14kU706kcjbf8xGXrsjzTJwXcjdfl95sTTDzgwrz
OGdZnY3MB+pXAra2UoX68AeTta6x6RwUyVq3E7XYR7t5+t0iCe4TzJ2vDEK9Wihk
ag/VaRoj2f2OccZPMJ2GwIBhfuG+XwW9wpZEixSo6fbsQRzVRVel0vUlVCJv5+9p
sKN+Do2oKq3mrzGWNJkpEBt5NUYbvsQbwmVG7m6fntPFuEtNWQIeggtPhncH3+kg
ZGu++pvUAjcS2V05xldwDiqnSaJz2iBxgNMUz5xXAUJGpiMCqPRAWXnW9nWf6JK3
vagjFUworDUb1toDh3by03WiGJ2foRwXPQG708IJi1ykn4Qz/so2XC9zBNnGONQa
CSdpO5mOdp7x9pvxkrr9pC4EMj6lm8jzDxwjVPo834E/UEMdYX0NPB9KRcxx5feS
tZUPu04XPxwZ3Zhe3V4SOoMMdNiumZZoKBLtliheigBiaryk2VAKrNlNaTFgSSK6
ZL/jq0FOrQemYsyUpSmKCI0jD+iGOEeEmqMrjmYH50yJNqFCrQBs4l1PsWRIGUJN
NRZt4nMtui/guPDuoCJ/Syt9WvZ0pFoKFf8e3Jgzxu38fPnZ3CgPKGOIBGG+RizK
zcTxKya8pbsz6N8KSL9aPTpwQnsVxaIekvo3pMiF32POFZum1lY=
=rsS6
-----END PGP SIGNATURE-----
--=-=-=--
