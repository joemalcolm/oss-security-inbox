X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11564" "Tuesday" "28" "February" "2017" "14:39:18" "+0100" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<02cb8961-7fc2-7f7f-4924-40c5c8f61829@x41-dsec.de>" "403" "[oss-security] Advisory X41-2017-001: Multiple Vulnerabilities in X.org" nil nil nil "2" "2017022813:39:18" "[oss-security] Advisory X41-2017-001: Multiple Vulnerabilities in X.org" (number mark "U       advisories@x Feb 28  403/11564 " thread-indent "\"[oss-security] Advisory X41-2017-001: Multiple Vulnerabilities in X.org\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3364 invoked by uid 550); 28 Feb 2017 14:42:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21787 invoked from network); 28 Feb 2017 13:40:26 -0000
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Organization: X41 D-Sec GmbH
Message-ID: <02cb8961-7fc2-7f7f-4924-40c5c8f61829@x41-dsec.de>
Date: Tue, 28 Feb 2017 14:39:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="P488IXKThARUQ7UXHFPxWoKQssl8Hnfa3"
Subject: [oss-security] Advisory X41-2017-001: Multiple Vulnerabilities in X.org

--P488IXKThARUQ7UXHFPxWoKQssl8Hnfa3
Content-Type: multipart/mixed; boundary="kKd3qf2pCPpG1pJgWjORI8kKiklTjp0mQ";
 protected-headers="v1"
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <02cb8961-7fc2-7f7f-4924-40c5c8f61829@x41-dsec.de>
Subject: Advisory X41-2017-001: Multiple Vulnerabilities in X.org

--kKd3qf2pCPpG1pJgWjORI8kKiklTjp0mQ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


X41 D-Sec GmbH Security Advisory: X41-2017-001

Multiple Vulnerabilities in X.org
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

Overview
--------
Vendor: X.org/Freedesktop.org
Vendor URL: https://www.x.org/wiki/
Credit: X41 D-Sec GmbH, Eric Sesterhenn
Advisory-URL: https://www.x41-dsec.de/lab/advisories/x41-2017-001-xorg/
Status: Public


Timing attack against MIT Cookie
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: Other
Affected Products: Xorg Server
Attack Type: Local
Impact: Escalation of Privileges=09
Severity Rating: low
Confirmed Affected Version: 1.19.0 and lower
Confirmed Patched Version: -
Vector: local
CVE: CVE-2017-2624
CVSS Score: 5.9
CVSS Vector: CVSS:3.0/AV:L/AC:H/PR:N/UI:N/S:C/C:H/I:N/A:N


Summary and Impact
------------------
The xorg-server uses memcmp() to check the received MIT cookie against a
series of valid cookies. If the cookie is correct, it is allowed to
attach to the Xorg session:

	XID
	MitCheckCookie(unsigned short data_length,
	               const char *data, ClientPtr client, const char **reason)
	{
	    struct auth *auth;
=09
	    for (auth =3D mit_auth; auth; auth =3D auth->next) {
	        if (data_length =3D=3D auth->len &&
	            memcmp(data, auth->data, (int) data_length) =3D=3D 0)
	            return auth->id;
	    }
	    *reason =3D "Invalid MIT-MAGIC-COOKIE-1 key";
	    return (XID) -1;
	}

Since most memcmp() implementations return after an invalid byte is
seen, this causes a time difference between a valid and invalid byte,
which in theory could allow an efficient brute force attack[1].

Analysis
--------
X41 was not able to measure a significant difference using the optimised
memcmp() version of a standard Linux system, but for a naive
implementation consisting of a loop comparing the bytes. Since timing
attacks against memcmp() have been successful in the past [2] and fixed
elsewhere [3][4] X41 would consider this an issue. If this would be
exploited, it would allow a local attacker to run code in the Xorg
session of another user.

In order to prevent this, MIT-COOKIES should be removed or a memcmp()
similar to timingsafe_memcmp()[5] used. Other projects (e.g. openssl)
use timing safe memcmp() implementations to compare cookies retrieved
via the network[6].

Workaround
----------

None

References
----------

[1]
https://cryptocoding.net/index.php/Coding_rules#Compare_secret_strings_in_c=
onstant_time
[2]
http://de.slideshare.net/cisoplatform7/defcon-22paulmcmillanattackingtheiot=
usingtimingattac
[3] http://seb.dbzteam.org/crypto/python-oauth-timing-hmac.pdf
[4] https://bugs.ruby-lang.org/issues/10098
[5]
http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/lib/libc/string/timingsafe_mem=
cmp.c
[6] https://github.com/openssl/openssl/blob/master/ssl/t1_lib.c#L1249





Potential Use after Free in Xorg Server
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: Other
Affected Products: Xorg Server
Attack Type: Local
Impact: -=09
Severity Rating: none
Confirmed Affected Version: 1.19.0 and lower
Confirmed Patched Version:
Vector: local
CVE: -
CVSS Score: -
CVSS Vector: -

Summary and Impact
------------------

In XDM is a (currently non security) issue, regarding a potential use
after free.

The ToID() function in os/auth.c is not used anywhere, just defined in
the struct and filled by the protocols, but there are no users.

    AuthToIDFunc ToID;          /* convert cookie to ID */

X41 noticed that, XdmToID() frees the cookie argument in case it can
resolve the ID or on failure, but not if it can't allocate memory for plain:

	XdmToID(unsigned short cookie_length, char *cookie)
	{
	    XdmAuthorizationPtr auth;
	    XdmClientAuthPtr client;
	    unsigned char *plain;
=09
	    plain =3D malloc(cookie_length);
	    if (!plain)
	        return (XID) -1;
	    for (auth =3D xdmAuth; auth; auth =3D auth->next) {
	        XdmcpUnwrap((unsigned char *) cookie, (unsigned char *) &auth->key,
	                    plain, cookie_length);
	        if ((client =3D
	             XdmAuthorizationValidate(plain, cookie_length, &auth->rho,
NULL,
	                                      NULL)) !=3D NULL) {
	            free(client);
	            free(cookie);
	            free(plain);
	            return auth->id;
	        }
	    }
	    free(cookie);
	    free(plain);
	    return (XID) -1;
	}

The same return value is given, whether no memory could be allocated or
it just failed to lookup the ID, so the caller cannot distinguish
whether this  memory is freed or not, which might lead to double-free or
memory leaks. The other ToID functions do not free this parameter.


Weak entropy usage for session keys in libxdm
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: Other
Affected Products: libXdmcp
Attack Type: Local
Impact: Escalation of Privileges=09
Severity Rating: medium
Confirmed Affected Version: 1.1.2 and lower
Confirmed Patched Version:
Vector: local
CVE: CVE-2017-2625
CVSS Score: 7.1
CVSS Vector: CVSS:3.0/AV:L/AC:L/PR:N/UI:N/S:C/C:H/I:N/A:N


Summary and Impact
------------------

To further explore the auth mechanism libXdmcp-1.1.2 was checked as well.

XDM uses weak entropy to generate the session keys on non BSD systems:

	void
	XdmcpGenerateKey (XdmAuthKeyPtr key)
	{
	#ifndef HAVE_ARC4RANDOM_BUF
	    long    lowbits, highbits;
=09
	    srandom ((int)getpid() ^ time((Time_t *)0));
	    lowbits =3D random ();
	    highbits =3D random ();
	    getbits (lowbits, key->data);
	    getbits (highbits, key->data + 4);
	#else
	    arc4random_buf(key->data, 8);
	#endif
	}

On multi user systems it might possible to check the PID of the process
and how long it is running to get an estimate of these values, which
could allow an attacker to attach to the session of a different user.
Several checked Linux distributions (debian testing, archlinux and
Ubuntu) did not link against libbsd at the time this was found.

Workaround
----------

Compile against libbsd


Weak Entropy Usage in Session Keys in libICE
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: Other
Affected Products: libICE
Attack Type: Local
Impact: Escalation of Privileges=09
Severity Rating: medium
Confirmed Affected Version: 1.0.9 and lower
Confirmed Patched Version:
Vector: local
CVE: CVE-2017-2626
CVSS Score: 7.1
CVSS Vector: CVSS:3.0/AV:L/AC:L/PR:N/UI:N/S:C/C:H/I:N/A:N

Summary and Impact
------------------

libICE depends on arc4random() as well to generate the session cookies,
thereby falling back to the same weak mechanism as libXdmcp:

	IceGenerateMagicCookie (
		int len
	)
	{
	    char    *auth;
	#ifndef HAVE_ARC4RANDOM_BUF
	    long    ldata[2];
	    int	    seed;
	    int	    value;
	    int	    i;
	#endif
=09
	    if ((auth =3D malloc (len + 1)) =3D=3D NULL)
		return (NULL);
=09
	#ifdef HAVE_ARC4RANDOM_BUF
	    arc4random_buf(auth, len);
	#else
	#ifdef ITIMER_REAL
	    {
		struct timeval  now;
		X_GETTIMEOFDAY (&now);
		ldata[0] =3D now.tv_sec;
		ldata[1] =3D now.tv_usec;
	    }
	#else
	    {
		long    time ();
		ldata[0] =3D time ((long *) 0);
		ldata[1] =3D getpid ();
	    }
	#endif
	    seed =3D (ldata[0]) + (ldata[1] << 16);
	    srand (seed);
	    for (i =3D 0; i < len; i++)
	    {
		value =3D rand ();
		auth[i] =3D value & 0xff;
	    }
	#endif
	    auth[len] =3D '\0';
	    return (auth);
	}

For this issue a PoC is available which takes 2-3 seconds to retrieve
the key:

https://www.x41-dsec.de/lab/sources/icetest.c

Workaround
----------

Compile against libbsd


Weak Entropy Usage in xorg server
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
Vulnerability Type: Other
Affected Products: Xorg Server
Attack Type: Local
Impact: Unknown=09
Severity Rating: unclear
Confirmed Affected Version: 1.19.0 and lower
Confirmed Patched Version:
Vector: local
CVE: -
CVSS Score: -
CVSS Vector: -

Summary and Impact
------------------

When looking at other places that use entropy, X41 also noticed
os/auth.c and hw/xwin/winauth.c providing GenerateRandomData()

	void
	GenerateRandomData(int len, char *buf)
	{
	    int fd;
=09
	    fd =3D open("/dev/urandom", O_RDONLY);
	    read(fd, buf, len);
	    close(fd);
	}

When the call to open or read fails, the contents of buf might be
undefined. This should be handled more gracefully, it might fail in
chrooted environments (unlikely) or when file descriptors are exhausted.
Newer Linux Kernels provide getrandom() to protect against this and
OpenBSD provides getentropy().

This security impact of these functions has not been further inspected.



About X41 D-Sec GmbH
--------------------
X41 D-Sec GmbH is an expert provider for application security services.
Having extensive industry experience and expertise in the area of
information security, a strong core security team of world class
security experts enables X41 to perform premium security services.

Fields of expertise in the area of application security are security
centric code reviews, binary reverse engineering and vulnerability
discovery. Custom research and a IT security consulting and support
services are core competencies of X41.



Timeline
--------
2017-01-17 to   Report to xorg-security@lists.x.org
     01-23
2017-02-10	CVE Request at secalert@redhat.com
2017-02-13	CVE IDs assigned
2017-02-16	Information of distros@vs.openwall.org
2017-02-20	Patch for CVE-2017-2624 provided by Matthieu Herrb
2017-02-28	Advisory release

--=20
X41 D-SEC GmbH, Dennewartstr. 25-27, D-52068 Aachen
T: +49 241 9809418-0, Fax: -9
Unternehmenssitz: Aachen, Amtsgericht Aachen: HRB19989
Gesch=C3=A4ftsf=C3=BChrer: Markus Vervier










--kKd3qf2pCPpG1pJgWjORI8kKiklTjp0mQ--

--P488IXKThARUQ7UXHFPxWoKQssl8Hnfa3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEpwxVTgxAIcUvTugIo5Klpg50CxAFAli1fYYACgkQo5Klpg50
CxDntA/+IUm8N0T3sPcvR7uZnLbweQv35IbBdC1ntPYHHx/zmuzDPzfUXhSvDSkT
UYVcwHiSdo2t7h8jD7Ctqm3qSovG7wEZU7nfrE778jlPHSYos/godGnuXonF6SLN
EDA80uVH4ePz2/OYkXDhehbKaA+LBcFBxTt6pv92MU2AvHEQaVruyKrXN2RdlQH5
bVzIznJJQWsRJdoKYzyNayZ7TQMVMqcqpbnx5CchvmmY5TZYg7m3qbiVahPTrQz6
EOwlgfPB/6rOaMODxCAAKipeidVPXuRKE/JWFyDdp/2X/74uT5Lt3JK5qBVJEGKM
V+UBGi17vcr19wMrmU9JVQQXFCRfxKuMi7tclMuYAJqMWxpuup6xXLcbvsC0vt4n
2fWOWuQd9+uSbr4QEtv4mdEx3KCmjorax1hnLZXGyEPEKiUHFWfeM9naEAPX18HD
hQJa7m9/a3lM2mz4FGo3+WgspKQlEczJhevw3KCA3CYa4pdKGcf9gbb1QcS3LNea
pe0/FwJ+JXoH5MZ9EerHjZ08bKFNFcDI5JJCtS+L3Z9xx84/kHg7zttbwEp3K386
eMTkk7AOgE6i75y6D0P2TibnZtBTOduuDd8v4Ws/4zByeK6z/QD0AJA/RV1Cw0bn
agoJCoaigfNZpigM/dGMZf/sF9Dt2U/qBWhXgVk583MeODjqpOg=
=zMry
-----END PGP SIGNATURE-----

--P488IXKThARUQ7UXHFPxWoKQssl8Hnfa3--
