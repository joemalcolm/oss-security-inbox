X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1381" "Tuesday" "7" "April" "2015" "13:35:48" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150407203548.GA15003@hunt>" "39" "Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!" nil nil nil "4" "2015040720:35:48" "[oss-security] Hanno Boeck found Heartbleed using afl + ASan!" (number mark "        seth.arnold@ Apr  7   39/1381  " thread-indent "\"Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!\"\n") "<CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>" ("<E1YfZfw-0006NA-Md@rmm6prod02.runbox.com>" "<CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32145 invoked by uid 550); 7 Apr 2015 20:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32127 invoked from network); 7 Apr 2015 20:36:03 -0000
Message-ID: <20150407203548.GA15003@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <E1YfZfw-0006NA-Md@rmm6prod02.runbox.com>
 <CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <CALx_OUBFvik8Yyvs9kj=S2JLVKHem7aD9Ttg7pw7GWSydadC9A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 7 Apr 2015 13:35:48 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Hanno Boeck found Heartbleed using afl + ASan!
To: oss-security@lists.openwall.com

--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 07, 2015 at 01:27:40PM -0700, Michal Zalewski wrote:
> this or any comparably serious find. Today, I'm asking myself the same
> question about AFL. Was it too counterintuitive to set this up? Were
> there other barriers to entry? Can I fix this now?

Hanno's trick of storing TLS packets as files is clever, but doesn't
scale far beyond testing handshakes of a handful of protocols, and that
with some effort.

If AFL could grow the ability to mangle socket-based inputs, it would
probably be more applicable to many more services, and beyond just
handshaking.

I realize it's asking for a unicorn when we've already been given a pony,
but there it is.

Thanks

--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVJD+kAAoJEPMhclmdjS6X8uAIALmw14loLimop3ACKJWKYtdN
MP4FniPbvKpHDHUSczKl0F7gaZesGXiPCFcdIfak0OyBkTo9qiVIpmxdxe/TQvEt
cZnStaH08/jBDC4a8wNcJzxdXSBZDWfXJgw8rz+cYr6Dvm3J5ikOL9+0GyK7fknD
CnPotsv4fxIwTTQG4zdh9q8Gl/nhfHkF5btUmFV9D9gIM/mJAW0E8epSMB0DvNp5
QqOjaHR/u76U8mFGd9cmX++HdTEd0XX9THBhGtpcyWdKn64V66Y0BxNc20rJ8kCe
Q3CeldMKoq6f2zF3enzHHixhM6PYvV6YYwATSylAQEYhEpJPdsY7AomdRUXYFtY=
=6Uss
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--
