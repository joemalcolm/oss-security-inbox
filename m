X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Monday" "10" "July" "2017" "18:28:37" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170711012837.GE2012@hunt>" "48" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071101:28:37" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        seth.arnold@ Jul 10   48/2025  " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17945 invoked by uid 550); 11 Jul 2017 01:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17924 invoked from network); 11 Jul 2017 01:28:51 -0000
Message-ID: <20170711012837.GE2012@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <801547.452199401-sendEmail@localhost>
 <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wchHw8dVAp53YPj8"
Content-Disposition: inline
In-Reply-To: <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 10 Jul 2017 18:28:37 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: oss-security@lists.openwall.com

--wchHw8dVAp53YPj8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 10, 2017 at 11:42:53AM +0200, Dr. Thomas Orgis wrote:
> Is this really worth a CVE, though? So far I was only able to see a
> crash triggered by the AddressSanitizer. Never from a normal build. So

It is common to assign CVEs for issues discovered via fuzzers and
sanitizers even if the consequences aren't visible without them: perhaps
the consequences aren't visible to users only by accident.

Some people only accept a vulnerability report if there's an exploit that
goes along with it but developing even a proof of concept is difficult
and error-prone. Lack of an exploit doesn't prove that an issue can safely
be ignored. (There's always someone more dedicated to writing an exploit.)

Assigning a CVE number makes downstream consumers aware of the issue and
each can prioritize a fix as they see fit based on their own threat models.

> every build of mpg123 in the wild, except for extremely hardened
> distros that build everything with GCC's sanitizers enabled for daily
> use, is not affected. Are people running binaries in production with
> the sanitizers on?

I believe the general consensus is that only the UBSAN sanitizer is safe
for 'daily use'; the others aren't themselves security hardened and in
fact have lead to exploits. This thread has more discussion:
http://www.openwall.com/lists/oss-security/2016/02/18/1

Thanks

--wchHw8dVAp53YPj8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZZCnFAAoJEPMhclmdjS6XUksIAJ4yAKLqbk8LR3+u9c4GjE6R
lFnHrp4EIev6K28YDT1qzuVyoTI89mB4Oyf3Pk++O6d2ezDTXNYqGACLq5tJ3nre
qIbqgBqT+NaQ1i8ZLPnFhxLRhz/xSeWrCgcTtbu0soUOhgKC3yl5LwCOrdbibqhD
FdKL2sfcJ/6eCJIV+KnhZG1PYbZ7BzZcnywtt/fnWRqsKTN107tkBBB9LWVPvYp9
zeI5cwAfEHqJ6C5Qc5zGaw/ApW6GKjAC1ErccN2eGRcTe9VpLpbodiRJ4SZd64ba
lUniMYTC3wHAbP4HiRQWOmTwKOqsA8fGSr5cpTzfIFyzSeUwl7lqiO4SGVxOTME=
=nR+n
-----END PGP SIGNATURE-----

--wchHw8dVAp53YPj8--
