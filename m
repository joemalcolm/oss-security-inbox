X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3892" "Monday" "13" "March" "2017" "20:07:14" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<831d5907-bf61-70c2-9501-f57923e5ae07@canonical.com>" "102" "Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership" nil nil nil "3" "2017031401:07:14" "[oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership" (number mark "U       tyhicks@cano Mar 13  102/3892  " thread-indent "\"Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership\"\n") "<Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>" ("<8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>" "<Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24068 invoked by uid 550); 14 Mar 2017 01:07:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24047 invoked from network); 14 Mar 2017 01:07:33 -0000
To: oss-security@lists.openwall.com
References: <8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>
 <Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>
Cc: =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>,
 serge.hallyn@ubuntu.com
From: Tyler Hicks <tyhicks@canonical.com>
Message-ID: <831d5907-bf61-70c2-9501-f57923e5ae07@canonical.com>
Date: Mon, 13 Mar 2017 20:07:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="78wAa3n8XEBWqoT3JArwpwTkPW90V9hp4"
Subject: Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify
 network namespace ownership

--78wAa3n8XEBWqoT3JArwpwTkPW90V9hp4
Content-Type: multipart/mixed; boundary="KiUJ96Obq8kVqgk6GHrARMrsipjOvfooj";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>,
 serge.hallyn@ubuntu.com
Message-ID: <831d5907-bf61-70c2-9501-f57923e5ae07@canonical.com>
Subject: Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify
 network namespace ownership
References: <8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>
 <Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>
In-Reply-To: <Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>

--KiUJ96Obq8kVqgk6GHrARMrsipjOvfooj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/10/2017 06:03 AM, Stiepan wrote:
> I don't know whether that is the same bug, or a related one, but on Debia=
n8 using LXC from jessie-backports, setting the default route in a containe=
r affects the host - namely, from an unpriv. container, setting the route s=
ets the host's route as well.
> lxc-info --version outputs 2.0.6 and no update is currently available (on=
 Debian).

Thanks for the report. I just tried to reproduce the issue on Ubuntu
16.04 with 2.0.7-0ubuntu1~16.04.2, which is the package patched for the
issue that I announced in this thread. I couldn't reproduce it.

I then installed an old 2.0.6 based deb (2.0.6-0ubuntu1~ubuntu16.04.1)
and still couldn't reproduce it.

I'd suggest opening an upstream bug here:

  https://github.com/lxc/lxc/issues/new

(Normally, they prefer private security bugs on Launchpad but your
report to this list is already public so I don't see a need.)

Tyler

> Stiepan
>=20
>=20
>=20
> -------- Original Message --------
> Subject: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify ne=
twork namespace ownership
> Local Time: 9 March 2017 5:54 PM
> UTC Time: 9 March 2017 16:55
> From: tyhicks@canonical.com
> To: oss-security@lists.openwall.com
> St=C3=A9phane Graber <stgraber@ubuntu.com>
>=20
> Jann Horn discovered that the lxc-user-nic program could be tricked into
> operating on a network namespace over which the caller did not hold
> privilege.
>=20
> The behavior didn't follow what was documented in the lxc-user-nic(1)
> man page:
>=20
> It ensures that the calling user is privileged over the network
> namespace to which the interface will be attached.
>=20
> This issue is CVE-2017-5985.
>=20
> https://lists.linuxcontainers.org/pipermail/lxc-users/2017-March/012925.h=
tml
> https://launchpad.net/bugs/1654676
> https://github.com/lxc/lxc/commit/16af238036a5464ae8f2420ed3af214f0de875f9
>=20
> Tyler
>=20



--KiUJ96Obq8kVqgk6GHrARMrsipjOvfooj--

--78wAa3n8XEBWqoT3JArwpwTkPW90V9hp4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYx0JCAAoJENaSAD2qAscK2p4QAIsfTKp/k6Mb1OjGopG6HyWS
GCgl0MURCih3E0w56DeYG3hFjOeDqCXKqVnl2EMC1hBVlSL6xdNWT4MwVnlF+N1G
kHlmjIXn+aSMdHFh4rdYLrj+y32T3TU8vb1sAjvXAxE1CiQu2VjWgZM0RYesxxh9
r7bCS3J6CJhkIQQUuYGbMLAbhs7SBjcXjXDQmJM+KbDbCVcLs035bJ6iRI/bCJoY
0fBw618uzfqfl6AM+DzsYwXf2Rrf5avY0aAH3nwumV8CUphxP1rBXTuEwO2uMoai
rf+/IhcOirl18TrLyz+csDxOAqJjrJRHMn9LA7uxDh0Oijr6/U/TU7bBz8i2zGt+
DM7ncNZLHb7JF0WrFRPqizdOSVDh7wkDCXH4Q502nQF6vUykvS+PYrgakVUjLqmO
zqNv7x4/pm1eWLfVl9e7vfTK2QB+8/vYqOCSVUKzjR6aAqkvWP0rV0rfENCGkci2
HRj9K9/rwGVuKkb44m4S55RkmteLp5AvLOztRuEnuIOLRm+qcTvjTDlBuym4t0AA
RbybXRPvh2Y1mR9DKmJxNJkkyCcbWIXYylH2asDrsh6IfsyrkkJez67bX4DPLaHq
LT8cLeQ0xcWGtAXsqapWaKFlBO6b1HKHe51FcUbvwVsQsrXvusDE2RcRtJFY9tBn
RWLXaCMWoI2/6fybnceO
=O4ab
-----END PGP SIGNATURE-----

--78wAa3n8XEBWqoT3JArwpwTkPW90V9hp4--
