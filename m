X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2208" "Thursday" "9" "March" "2017" "10:55:12" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>" "59" "[oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership" nil nil nil "3" "2017030916:55:12" "[oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership" (number mark "U       tyhicks@cano Mar  9   59/2208  " thread-indent "\"[oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23623 invoked by uid 550); 9 Mar 2017 16:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23601 invoked from network); 9 Mar 2017 16:55:34 -0000
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>
Message-ID: <8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>
Date: Thu, 9 Mar 2017 10:55:12 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="efMcdpOkVenLB5VUR7G544Kk8wx1MvjJU"
Subject: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace
 ownership

--efMcdpOkVenLB5VUR7G544Kk8wx1MvjJU
Content-Type: multipart/mixed; boundary="s6Ce63t4Gu4aKd6BWi23VhpsXTdJVNLo4";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>
Message-ID: <8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>
Subject: LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace
 ownership

--s6Ce63t4Gu4aKd6BWi23VhpsXTdJVNLo4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Jann Horn discovered that the lxc-user-nic program could be tricked into
operating on a network namespace over which the caller did not hold
privilege.

The behavior didn't follow what was documented in the lxc-user-nic(1)
man page:

 It ensures that the calling user is privileged over the network
 namespace to which the interface will be attached.

This issue is CVE-2017-5985.

https://lists.linuxcontainers.org/pipermail/lxc-users/2017-March/012925.html
https://launchpad.net/bugs/1654676
https://github.com/lxc/lxc/commit/16af238036a5464ae8f2420ed3af214f0de875f9

Tyler



--s6Ce63t4Gu4aKd6BWi23VhpsXTdJVNLo4--

--efMcdpOkVenLB5VUR7G544Kk8wx1MvjJU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYwYjwAAoJENaSAD2qAscKrisP/2FbQwlN9yEscbaUlHJzXBAs
9OzBESZKv+LA4pPwOb8ROGf2cOS0JnKTgKfJZubSTKvSaMLGOy7HRa19gCt81Sm4
iiqqM9vtq+/RtYgPATEjLEj3UpckSEw9qzQNLF4M6oTZRGEoRKXR7Gjo+U/XjVgx
K5l3xoiAO1UqNXfiriWq47c+gFw0eXnVLIAlPBpMPa5m4AG7J/ShEnSfziNGiYnZ
kkGSFrYwyV98ZUGKVwx0/7pLR9zqD1HZFI7zUvGmSr4PTIQ91f4djrzyM7pm2ujA
bKthyn0ZgVTRsctfI7dHu5gKOd72om2er9kSmo6m3S/6b6I6z7lUrgePACKuf5bx
807I5+vzU2hJy0tkdk0V+1jVe6p9wYHfOZHxSZe5fUgx8DDsvnrAG1xLia7v8mi0
y0Fq2PHmqe9hTgxE7oesSHQvt2AqnvYWanJ26knRuoaPqKEMtVL46ofPcm+JCBV3
bce4lTvlYlLv7jolYUgbU4aWi3OJnluK5WDYYWO9edT61iT0Xvqk3wPnUFOHPrOP
4W3i2oZj/96Y5b2SJgJ5F4MixgnxY+YcwpH7KSLgqNtB8961awu5lFI3fwS9Xenh
WEgjc5XU9X7V4CLEuZrJwd4eaV+pGO4skwRg8ePXPYdVfAumFGno7HkTQtcye4zc
e0a7pAzaOVPgs/LYH9Fp
=0pAh
-----END PGP SIGNATURE-----

--efMcdpOkVenLB5VUR7G544Kk8wx1MvjJU--
