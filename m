X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2819" "Thursday" "7" "September" "2017" "17:08:54" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87ingu6wt5.fsf@fifthhorseman.net>" "63" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "9" "2017090721:08:54" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "U       dkg@fifthhor Sep  7   63/2819  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<20170907203811.bnzbtjq4c56cgxgw@perpetual.pseudorandom.co.uk>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "<20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>" "<877exa8oap.fsf@fifthhorseman.net>" "<20170907203811.bnzbtjq4c56cgxgw@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13502 invoked by uid 550); 7 Sep 2017 21:22:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13478 invoked from network); 7 Sep 2017 21:22:37 -0000
In-Reply-To: <20170907203811.bnzbtjq4c56cgxgw@perpetual.pseudorandom.co.uk>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com> <87wp63jgxn.fsf@fifthhorseman.net> <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com> <87ingva5rf.fsf@fifthhorseman.net> <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com> <20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk> <877exa8oap.fsf@fifthhorseman.net> <20170907203811.bnzbtjq4c56cgxgw@perpetual.pseudorandom.co.uk>
Message-ID: <87ingu6wt5.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 07 Sep 2017 17:08:54 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation
To: Simon McVittie <smcv@debian.org>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain

On Thu 2017-09-07 21:38:11 +0100, Simon McVittie wrote:
> The daemon doesn't need to be ready to actually do its work before
> forking, only ready to take responsibility for keeping clients waiting
> until it *is* ready.

yep, understood, but this is yet more subtle nuance for the daemon
developer to make sense of (and possibly get wrong).

otoh, socket-activation (or the equivalent) solves this problem nicely
by having the supervisor take this responsibility, as long as the daemon
can deal with inheriting a live socket.

socket-activated services don't need to signal readiness either, so
they're that much simpler.

> Arguably yes, but putting a minimal amount of setup before forking closes
> the race condition, and some of that setup is probably going to need
> privileges anyway (for example web servers that want to listen on port
> 80, or dbus-daemon --system which wants to listen on the root-owned
> /var/run/dbus/system_bus_socket).

Some systems might set up a daemon with CAP_NET_BIND_SERVICE so that it
doesn't need to be launched as root but can still be bound to a
low-numbered port (this is how the DNS resolver "stubby" is launched
safely as a non-priv user).  That's a good security protection in
general, but it doesn't seem to combine well with a self-generated
pidfile that is not under the control of the running process, either.
So here's another sense in which secure pidfile is actually working
against the security interests of the rest of the system.

(additionally, socket-activated services don't need these sorts of
privileged accesses at all, because they inherit the socket rather than
needing to open it themselves)

These all seem like pretty strong security/simplicity/maintainability
arguments for socket activation, and pretty clear arguments *against*
pidfiles on a maintainable and secure operating system.

          --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmxtWcACgkQFJitxsGS
Mjeexw/+IT7zuuMKxFl2wz3fbOBuLgKGpxIlLBUB1E7SUXzCPIUF7NLEFVg2JBJh
885siNlxBZxjlGrAzxXR9m4TCZ8JWJtlruH0i1/4yP9cBHyhPklDZl8HCB9u/c1b
X/IJXWbG+uTJa8wxvzwj9RzBpZcRcrx1x0ueuhwkYt7fIV3Nm4NieD9GkHr8WDVD
bM3w9OqaJ4TkJuzY+fkq/+bqH7hYbnPahlfTZUMAfu+Raaav2aJiUPYfeGNLnOTB
A5s9atY9IGYbm0Z7JPN/czTwztpdCTGNdadCdry7+XNuKsoxR2vJsvsS7nQixdZQ
MqQJks7ALqxioy09osm7YEE+n0gPvzYrwASeJBRFW7BvznbINOB2jMmzCJlOV5C+
9x9Qz77GBtIFM0cBWL9lPT1lqu6FbFPbIaz0YM6FoeMv1lLVY30vvybnZrRXJeZb
kdfC+Fnf38qQvNkhXuTYCyAy2Zyd4iMqi4bjApy98VPsO78UWzDlHohUf/NtDKBx
PDbwHzKbWFFLevQ8isogJotU3tK59Rz+CfLlGvB8cFHvJEHwBH5OOqYHfFO63yYa
/5yAHHmiCQTEqq65Kz6Cumeq85siAVLwvPbJFNoVmst1zp/qxQXZ/xhwJyqDlbAn
+XIpZCDYOzzOcaVAmavlYNSNmnTAX4HP3eQ1yK5rViYObhcFSJU=
=HpMH
-----END PGP SIGNATURE-----
--=-=-=--
