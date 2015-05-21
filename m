X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1746" "Friday" "22" "May" "2015" "00:36:36" "+0530" "Siddharth Sharma" "sisharma@redhat.com" "<2165372.NOAPVG722M@rem0te-expl0it>" "50" "[oss-security] CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable" nil nil nil "5" "2015052119:06:36" "[oss-security] CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable" (number mark "        sisharma@red May 22   50/1746  " thread-indent "\"[oss-security] CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1921 invoked by uid 550); 21 May 2015 19:06:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1903 invoked from network); 21 May 2015 19:06:57 -0000
Message-ID: <2165372.NOAPVG722M@rem0te-expl0it>
Organization: Red Hat Inc.
User-Agent: KMail/4.14.7 (Linux/4.0.4-300.fc20.x86_64; KDE/4.14.7; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart16110623.3IYFtTWamx"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: cve-assign@mitre.org
Date: Fri, 22 May 2015 00:36:36 +0530
From: Siddharth Sharma <sisharma@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for ceph-deploy copying keyring to /etc/ceph which is world readable
To: oss-security@lists.openwall.com

--nextPart16110623.3IYFtTWamx
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

"ceph-deploy admin" command pushes the client.admin key with world readable=
=20
permissions as in /etc/ceph/ceph.client.admin.keyring, It is similar issue=
=20
like CVE-2015-3010 , but this seems more bad as it is copying to /etc/ceph=
=20
which readable by any user.=20

~]# ls -Z /etc/ | grep ceph
drwxr-xr-x. root root system_u:object_r:etc_t:s0 ceph

For further informataion : http://tracker.ceph.com/issues/11694


--=20
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A=20=20=20=
=20=20=20
Fingerprint :  0x6F04C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A

--nextPart16110623.3IYFtTWamx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJVXizDAAoJEM1vjlXZ9kia9U0P/0yQbHjVq7FYUWdJzG827pZe
u/9oZIfHhne2GQvYnMdSvOKCq9DkehO7jtdW2cdtUpa6deMzm4e94mCLFAGnlDpe
gXZgSr9Sw5J0oK+qkoMSn7ODKaxFLuI/j+YFd2yuZDgSqTSlXhqPFsHcueI+ORIn
F56uQ4vU65LrRcdWqPBmbWVAeqajStIS4doALeCh3iVEn5Kbq/G4StLdkmDibZ52
TLfgHgGD6JAvFNZBIIE/uUaJQUKSfZZOwPoqvqLAAG66zUB4HXsPUO+ECoyEianK
fMWgOeUvLeJBI6Wed0mHRVu1RYQqIA+Y/gY32ywA1bY8feosNA91OtDejMK4q6XV
zGu3cIqMo9OtzVTnSc9TEKZd3E58/lB8H0xzIf4F1KjFdMtmJH8J3CFHzVN70s1z
Xb+ebaUp+BZg/bqJRuGPtXaKfIWBsZzNbbzCxYIZtOXVIcFRvPvdhuKiLjqP8dAj
bsaRUq6QWueKgPy0P3AjTmXU7fmGtnv4HHJW6mk/pMq3KLyWDw8QegoBM841//Bh
CL71+Oq+VC9kK/6y/NJMSCO1YpS1bq0FAUy1xvPBGbb+6CeZDtBeJU5H1wsLSzhy
SQFiETBS3Jy2JEW13NeLKY3/o4Ev98v+2CWey7ZskBcn2U4dhVrKXl0FQUkU4axs
FA/h9oHTDp0t0rNhbJTi
=ksGZ
-----END PGP SIGNATURE-----

--nextPart16110623.3IYFtTWamx--

