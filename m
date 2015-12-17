X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2308" "Friday" "18" "December" "2015" "00:07:19" "+0100" "Jann Horn" "jann@thejh.net" "<20151217230719.GA2943@pc.thejh.net>" "56" "[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" "^Cc:" nil nil "12" "2015121723:07:19" "[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        jann@thejh.n Dec 18   56/2308  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<567339BE.3090404@canonical.com>" ("<567339BE.3090404@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12267 invoked by uid 550); 17 Dec 2015 23:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12183 invoked from network); 17 Dec 2015 23:06:32 -0000
Message-ID: <20151217230719.GA2943@pc.thejh.net>
References: <567339BE.3090404@canonical.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
In-Reply-To: <567339BE.3090404@canonical.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Fri, 18 Dec 2015 00:07:19 +0100
From: Jann Horn <jann@thejh.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel: privilege escalation in user
 namespaces
To: John Johansen <john.johansen@canonical.com>

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 17, 2015 at 02:39:58PM -0800, John Johansen wrote:
> I haven't seen CVE request for this one yet so,
>=20
> Jann Horn reported a privilege escalation in user namespaces to the
> lkml mailing list
>=20
> https://lkml.org/lkml/2015/12/12/259
>=20
> if a root-owned process wants to enter a user
> namespace for some reason without knowing who owns it and
> therefore can't change to the namespace owner's uid and gid
> before entering, as soon as it has entered the namespace,
> the namespace owner can attach to it via ptrace and thereby
> gain access to its uid and gid.

I'm not sure whether this is CVE-worthy - the user_namespaces
manpage says "the process has full privileges for operations
inside the user namespace, but is unprivileged for operations
outside the namespace". ptrace()ing a process in the
namespace can reasonably be considered an "operation inside
the user namespace", and therefore the manpage kinda implies
the old behavior. (Yes, more detailed documentation would be
nicer, I might submit man-pages patches once my patches are
in a kernel release.)

In my opinion, this patch is somewhere between hardening and
a security feature, but I wouldn't really call it a vuln fix.

--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWc0AnAAoJED4KNFJOeCOoRJ0P/3d13yc9/al3oVtYb5vZlO+f
AO1ywN/NanVM+RAojU4uSOdbuSG2Bju/M+o5CJiSuUeSRuGRalZiTu4875NEeeOH
V8xmy49MLXZjPdocJMCr2vfMMml8rVoa4EGrMwr7W2mK0VuQfRdgTgoDMNPj3oEi
7PtLK1LqCI335DIvJYSLTtq7ltaDd7xP0wAyd2x4DU0H5Z6qQNb1ZuzgdY5b0373
sgiDrtP5sEomaQeigyopXGbmXJPovoYNksyNfQKETW4VmPSN9UH86UOVUZGKpVa5
6ckDyzTz3l8UHGNDFahgDrBntPsWpqyDAIHEtPc9xBsN2/CiePxJdN3CI3t5L/ly
dvnVH770LdWa9pu9ZfFC8itNaOrqmj9BMZmJEIhuLfc357+tGHwnmS2edeM17Mmp
Af52xk0ZVw7d/4PwH1xlX8BuCLCbntGsL1LxvW3MhHNGCYdZGbRBMfK+DoYh9an8
k0WQtdDCVOLQhu2ez+Y62Nba7ZFrcd8da+l+Wx4LXAfsmvmi6x33nYPmyEcv2A07
ZeeYAO6iSj7hhWXWir4cTi2oquNA6SQO9YI22hh6TCtISBGQDC8jgbr+3xLAU2rB
uOYlUUu6ZZJbT0yMl8e34EJBJ09pd+kmy/nYnWmzOuBfwbPUs36qvy696K4tt1Hr
uX9c5Da6MBWIAdgfjD0L
=dV1b
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
