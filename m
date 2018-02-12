X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2088" "Monday" "12" "February" "2018" "17:31:47" "-0500" "Leo Famulari" "leo@famulari.name" "<20180212223147.GA16518@jasmine.lan>" "48" "Re: [oss-security] SEC Consult SA-20180207-0 :: Multiple buffer overflow vulnerabilities in InfoZip UnZip" nil nil nil "2" "2018021222:31:47" "[oss-security] SEC Consult SA-20180207-0 :: Multiple buffer overflow vulnerabilities in InfoZip UnZip" (number mark "U       leo@famulari Feb 12   48/2088  " thread-indent "\"Re: [oss-security] SEC Consult SA-20180207-0 :: Multiple buffer overflow vulnerabilities in InfoZip UnZip\"\n") "<3e9d24ce-dfc7-bea5-83f2-3e195e9ee2f8@sec-consult.com>" ("<3e9d24ce-dfc7-bea5-83f2-3e195e9ee2f8@sec-consult.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13433 invoked by uid 550); 13 Feb 2018 01:06:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29916 invoked from network); 12 Feb 2018 22:32:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	mesmtp; bh=b+UN+mUwxIEUPu9JvEdQtxSmRwEfqO94FP1wx6Zk4pE=; b=R1Z/S
	PVxvvdyKCQVWEe2gP14Jcac/0zKJNTRl14tR5Qu16qXY/C48aM6JnJl6ei1LPsWT
	UTrFJb0xz/z8MYxstIeIcFsf16GSlvdz2QGKTWe/GEg9Jf1c2NHjMo8plFpmr+Zt
	rTwAnCHz5jFat+jrTROPbUAwuPhHe10T3kb970=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=b+UN+mUwxIEUPu9JvEdQtxSmRwEfq
	O94FP1wx6Zk4pE=; b=H5WphiASdTvM+4a5FCYMudVy8+VWCYlxFBpkj7JA5L4i0
	fdlrq+zqr0JTLvvONuKz6FxZpXsagATg05fk/6NS7fUkLxCIQyXLbBmCU9L1P0iA
	RhZ9chWWch14ZZEz7jFxVAn2CAgKs/Q7IJzzMOaiZTBdmQ5lj3i2y1fv6MvTHytO
	q4EsUEb7qLpJtwmr36cx/d75pAmrYaYEVwAxklvZ+Xo/UWU8GPEsyh17uHP6vTdo
	+vEmSsaSoyG0pfBByiJe7J6ztSYB34BWxfDBrLiaVp3/kTiMJMJhZQO96iG5jNhe
	mdCnx1x4uusdU5Qcx7lM6Ll3m5CqeiM5vKzI8VHBQ==
X-ME-Sender: <xms:1RWCWoGcQarZsDuZSdau3I8iH1hl8-6b4PYern35Fm1pAmix76QqkQ>
Date: Mon, 12 Feb 2018 17:31:47 -0500
From: Leo Famulari <leo@famulari.name>
To: SEC Consult Vulnerability Lab <research@sec-consult.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20180212223147.GA16518@jasmine.lan>
References: <3e9d24ce-dfc7-bea5-83f2-3e195e9ee2f8@sec-consult.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
In-Reply-To: <3e9d24ce-dfc7-bea5-83f2-3e195e9ee2f8@sec-consult.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
Subject: Re: [oss-security] SEC Consult SA-20180207-0 :: Multiple buffer
 overflow vulnerabilities in InfoZip UnZip

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 08, 2018 at 08:19:20AM +0100, SEC Consult Vulnerability Lab wrote:
> 1) Heap-based buffer overflow in password protected ZIP archives (CVE-2018-1000035)

[...]

> As already mentioned, modern compilers replace unsafe functions with
> safe alternatives as a defense in depth mechanism.
> This feature is called BOSC (Built-in object size checking) and is part
> of the FORTIFY_SOURCE=2 protection.
> The following link shows the source code (and vulnerability) inside
> the Ubuntu package:
> http://bazaar.launchpad.net/~ubuntu-branches/ubuntu/trusty/unzip/trusty-updates/view/head:/fileio.c#L1593

If you are not sure how to pass flags to the compiler when building UnZip 6.0
(the Makefile does not respect CFLAGS), you should export them as LOCAL_UNZIP in
the build environment. Quoting 'unix/Makefile':

# LOCAL_UNZIP is an environment variable that can be used to add default C flags
# to your compile without editing the Makefile (e.g., -DDEBUG_STRUC, or -FPi87
# on PCs using Microsoft C).

It took me a little too long to figure that out...

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlqCFdAACgkQJkb6MLrK
fwgFqxAApHa1n4pN8ty2nxaVI59a3NjvJvYPHDsOkjiiwqtnbpdLjDNanGS/LwMO
Nq438wnr8NBQVj3dGTfY3jIiRJbYXmGTBaKpbo8Ti840XToMwlGLKbwMp1c4Yw0E
vOI2fgu+PbmKS7FQATzO0zTc8WRDKqt7GjyR1cicWZiK3aXtsRD4+yrs3i/l29LP
eADPjni3nQoeYA39yt9oZjFQkI0xj2qYAs0lVNRLNwQs/iM9JxjMXgRo1UXpsgo+
d/0XMtMr0eRwSKo9XhGzqcsPOsJ2YSkm8XidyqMq+DSmOjKkdxshxaQ4wMdBVsJ3
pv1lFxh2PgWQVJnvj5gzWb3vpm3aCS0aTJ6g/fW6JaSpEazAwGg/CVAxEUK4eEO8
mbYEBOFqAAlpG6E+KbwuEsLsXFvGGDj1vMEssDHAvL2hM5LpK/0PyWF/jQ963NFr
MgT8ImpmjN529rzkL26kgcuzW9szMT0WoBj+Y8SuuIR5FDYj9aC01b4F5cYRSOSW
vtFzlISajmgGKsI+7mVor6pWZu83zGCM/mfYJGuN72jnxg+aSoEFx8vNrnAv7PgW
SK8WU49+FnYBbGG8Zk5K6XwXJziFMJamwsvNW8E0WYZO1dsvpK22I4A7qxyyfAkJ
V65Ftkij+jgkoG6OOZkc3oevSzKF03Vl4uExLLb8ApcgvZsSmVU=
=/eBh
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--
