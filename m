X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3971" "Thursday" "12" "March" "2020" "11:17:43" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200312101743.GA24784@f195.suse.de>" "96" "[oss-security] roccat-tools: unsafe multi user scenario involving group-writeable /var/lib/roccat directory" nil nil nil "3" "2020031210:17:43" "[oss-security] roccat-tools: unsafe multi user scenario involving group-writeable /var/lib/roccat directory" (number mark "U       mgerstner@su Mar 12   96/3971  " thread-indent "\"[oss-security] roccat-tools: unsafe multi user scenario involving group-writeable /var/lib/roccat directory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] roccat-tools: unsafe multi user scenario involving group-writeable /var/lib/roccat directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9334 invoked by uid 550); 12 Mar 2020 10:17:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9235 invoked from network); 12 Mar 2020 10:17:56 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 12 Mar 2020 11:17:43 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200312101743.GA24784@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] roccat-tools: unsafe multi user scenario involving group-writeable
 /var/lib/roccat directory

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

roccat-tools [1] is a set of programs that deals with Roccat input
devices (mostly gaming mice) on Linux. These input devices support
hardware macros i.e. they also register as keyboard input devices in the
system and can send pre-configured key sequences upon clicking a mouse
button.

I recently reviewed this package for openSUSE, because it uses a
setgid-directory in /var/lib/roccat as per recommendation of upstream.
It has the following ownership and mode:

drwxrws--- 7 root roccat /var/lib/roccat/

roccat-tools want to support a multi-user scenario here. If multiple
users on the same machine are using these roccat devices then they need
to share the profile data, since the profile data must match what is
configured on hardware level. Otherwise different users would be
overwriting each others settings.

Each user that wants to configure a Roccat device needs to become a
member of the roccat group. udev rules are also shipped with
roccat-tools that grant members of the roccat group write access to the
event and hidraw devices related to the Roccat device.

The problem with the multi user scenario and the directory
/var/lib/roccat is that the involved tools don't protect against
potentially malicious members of the roccat group. There is no
protection against symlink attacks. Each member of the roccat group can
manipulate existing profiles in /var/lib/roccat. These profiles are not
in a text format but consist of binary blobs representing raw C data
structures. Therefore manipulating these binary blobs might also allow
to trigger program corruption or otherwise manipulate program execution
of other users.

I contacted the upstream author about these concerns [2] and his view on
this matter is that the input devices with hardware macros are unsafe by
design. The hardware macros can trigger arbitrary input sequences and
everybody with physical access to the input device or device driver
level access to the input device can manipulate the macros and cause
arbitrary code execution for other users in the system.

I can understand this reasoning to some point but consider the unsafe
handling of data in /var/lib/roccat an issue in its own right. Since
this is a disputed finding I did not request to assign a CVE to this
issue at the moment.

For the openSUSE packaging of roccat-tools we decided to keep things as
they are based on the assumption that a multi user scenario for this
package will be a very rare practice.

[1]: https://sourceforge.net/projects/roccat/files/roccat-tools
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1165566

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


--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl5qDEQACgkQFMQFyXGS
NVNzXhAAnN2wHLHu1+rqJXn3LSYjT9njH9ouuKA1FXXx/lDoDcC+4mX8oy8BDAjw
AxlVlG9CSHG2E2RCXFQLbwQVdOyW4A8o5QEQY73GZVpZmWsnvNB34s11fy+B7tjj
fqGrWuXckaAU5Uk2RKJeEEkkjbeBuGqeO8fO5uyMveqqG8cVZ9MCLaOt9NsPZSoc
3rRndcDendg1JngLEZD0punvl1zlnWjpr8j7Qq6sLX6kYyTPfLc9mELe4/xj/0UK
jgF3dN6SWkp9uVjjY7Mzh+33ttv2Mh//dCv5mlaD1L/s9hK8vbTNE5Vm2hlQiDhR
APQfTZUiYB1tojX+T1AEstWTm3sy5VKPmqucDmdS8EUSDKzxJj1OSRTrDAx/sFb3
6fax5H4g3rdL6HHaWCm2syZoB+yTk8vTGmFuIaBtpe83wVOEyXsnUHih+1nQzJ2x
MiS9jRHGBIq7baCImjNlWcD5Ru7wxpJ1rFG5bkngZO7EomeN7E+wMIq9klPy+bx2
nx2KzY7D5x4Pa4z+VirwAGz1skeAETfVE38h9iodWgLYTIzPhN12sR7dilV2UfQ/
sFzKgDeKui3oPzPjxX28a4bSDeBWgUQCkIsRs1nXi4OrirB55RozgA8f/3fBNdag
r25UZWJinqThvu467pLkjPSM1vVDZaJX7zsdswSN6gyWeYabAn4=
=jPHz
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
