X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3027" "Wednesday" "4" "November" "2020" "11:36:13" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20201104103613.GB10006@f195.suse.de>" "80" "[oss-security] sddm: CVE-2020-28049: local privilege escalation due to race condition in creation of the Xauthority file" nil nil nil "11" "2020110410:36:13" "[oss-security] sddm: CVE-2020-28049: local privilege escalation due to race condition in creation of the Xauthority file" (number mark "U       mgerstner@su Nov  4   80/3027  " thread-indent "\"[oss-security] sddm: CVE-2020-28049: local privilege escalation due to race condition in creation of the Xauthority file\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] sddm: CVE-2020-28049: local privilege escalation due to race condition in creation of the Xauthority file" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2031 invoked by uid 550); 4 Nov 2020 10:36:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2007 invoked from network); 4 Nov 2020 10:36:25 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 4 Nov 2020 11:36:13 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20201104103613.GB10006@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZwgA9U+XZDXt4+m+"
Content-Disposition: inline
Subject: [oss-security] sddm: CVE-2020-28049: local privilege escalation due to race
 condition in creation of the Xauthority file

--ZwgA9U+XZDXt4+m+
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

a local privilege escalation has been discovered in the sddm display
manager [1].

sddm passes the -auth and -displayfd command line arguments when
starting the Xserver. It then waits for the display number to be
received from the Xserver via the `displayfd`, before the Xauthority
file specified via the `-auth` parameter is actually written. This
results in a race condition, creating a time window in which no valid
Xauthority file is existing while the Xserver is already running.

The X.Org server, when encountering a non-existing, empty or
corrupt/incomplete Xauthority file, will grant any connecting client
access to the Xorg display [2]. A local unprivileged attacker can thus
create an unauthorized connection to the Xserver and grab e.g. keyboard
input events from other legitimate users accessing the Xserver.

A simple reproducer works like this:

```
# run this from an unpriliged account before sddm is started to exploit
# the race condition and kill the X server
inotifywait /tmp/.X11-unix; while ! xkill; do :; done
```

The security issue was discovered by our SUSE sddm package maintainer
Fabian Vogt. The issue is included in sddm since version 0.12.0 and
was recently fixed in a new upstream release 0.19.0. The upstream commit
fixing this issue is found in [3]. The SUSE bugzilla bug tracking this
issue is found in [4].

[1]: https://github.com/sddm/sddm
[2]: https://github.com/freedesktop/xorg-xserver/blob/96d19e898acb56d8fc6e6=
febbc6498f67cdd66a0/os/auth.c#L190
[3]: https://github.com/sddm/sddm/commit/be202f533ab98a684c6a007e8d5b435784=
6bc222
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1177201

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

--ZwgA9U+XZDXt4+m+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl+ihB0ACgkQFMQFyXGS
NVN6jRAAgdk5Snb+//FyStciI3zBmRhRjIaYkg3B6dremsSe8LLhnuxirsRLqbHy
0cdfJiLvjhH2BKaqPTCLwk+r04jQiylrD2MWgWc66+XEFgJB5LUbqv84kiZJU5dT
HkKJHUYI/CFTeGgzvQyOKkzrR+zMjs6brRXL+tL3YftnM6ukrAUEmAksr8RvReAp
23+H0pKjvN6/DQmi1m3cZwPt/2zK6XZ2PaH93cSCuOC9J/Y2HiUyv2h1dA0sF3Ym
oC2gScgT0WwjVvIdYBn/SM+GlT+2tx8zW7kT5xAio5KXMsdElxfMNSqG8JPWT6mC
y6m/5zf4gG1xBNn76EuaajR4ZLNlgv5Z1fRsJx8LsEu5HqMUScEnVq7W3WD+B0mV
wG823F/Qo24M5ITaebQ71PGlKMKk8oULNfiCl2YZZi53pRb7+3Wcm41BT1oge0Ij
ileiYdyZbsKIBV56IG/7h5gpzfWv8iwv6aLQb+XB3lHLi98YNEK1H+PLUsXCgtVq
CQUZ1FnmpN+9TdK0aNDfAXRE0cyviEapd22GHWQdNrEs9RbCR4yLGiFqZnUqEQkL
nMGpXyUXZdkctyi3wzJfGROEX5LZoG5TO8QU7/pz/dkJGyqCm1/v5FIiBfhtEqoQ
RH/dIw+nxM59CcLpYxN8XHZwuKKwKxNUxkRWlqXHAbjwZuM8ZBI=
=gs30
-----END PGP SIGNATURE-----

--ZwgA9U+XZDXt4+m+--
