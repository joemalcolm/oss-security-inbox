X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1915" "Wednesday" "24" "August" "2016" "16:28:12" "+0930" "Doran Moppert" "dmoppert@redhat.com" "<20160824065811.GB7400@sin.redhat.com>" "54" "[oss-security] CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure" nil nil nil "8" "2016082406:58:12" "[oss-security] CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure" (number mark "U       dmoppert@red Aug 24   54/1915  " thread-indent "\"[oss-security] CVE request - sudoers on Red Hat, Fedora, Mageia information disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7889 invoked by uid 550); 24 Aug 2016 13:03:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5821 invoked from network); 24 Aug 2016 06:58:29 -0000
Date: Wed, 24 Aug 2016 16:28:12 +0930
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20160824065811.GB7400@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 24 Aug 2016 06:58:17 +0000 (UTC)
Subject: [oss-security] CVE request - sudoers on Red Hat, Fedora, Mageia information
 disclosure

--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The inclusion of "INPUTRC" in env_keep in /etc/sudoers allowed
information disclosure through readline-enabled programs parsing the
named file with elevated privileges.  Local users with sudo access could
read (portions of) specially-formatted files with elevated privileges.
Future versions of readline will make the vulnerability more significant
by showing error messages for malformed entries, rather than silently
ignoring them.

This flaw is distribution-specific - upstream sudo does not include
INPUTRC, and we are not aware at this time of any other distros that
include it.

The following packages address this issue:

	sudo-1.8.15-2.fc22
	sudo-1.8.15-2.fc23
	sudo-1.8.16-4.fc24
	sudo-1.8.17p1-1.mga5

This was brought to our attention by Grisha Levit.

https://bugzilla.redhat.com/show_bug.cgi?id=3D1339935

--=20
Doran Moppert
Red Hat Product Security

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJXvUWDAAoJEGohqWcZR7qpMykP/03AOV3PN22zdHi1fjxNkhHQ
L+TnbJFATvJikhs0qp4XKWAiNAZJSIcM9tE68IIGL0dhO7ZSnepUqkPdTqjUULu7
kk4pWUvCsnLxSzH6ETqexYmf3Ir/JY6ZWRYKP2/CKVwOc3aHo7ytxbImIV+rs5zt
hmrri8NPSQBfRl7IrRSH48F8fOt+SFL39zzZO3tVAgV6+/3TkQ8ysxaZ5aqFJQyF
ZfYnm4ZzKmAT815cwx6f1RAPB9zULTxjOZkaA89sklZ0cHvQ04dZ486YokOnShfb
/CoftNOUFXfSR5xLwyZo0v8cIY0RkJ2R7CbdbVvgcaVolKRDZTIXXievXEr20g5Z
7iJgRBkq39Btg6yGgZqQfPq1mU/VXXQT0Cq40QNBujzh0us7Q+ARrjPaaxFTxXVu
eQTrtDADoVn/jUKzqhcVxkrlii3xZv3y0OpuoK+tmq9xkdHPErq7zq2L+v/tW6Wv
DTVguD2WWYjUj565YTOLyOJdJCiSAM4e8bjFBVMFXL8gA9/4x/GDVQJRlLE38ozY
5WDgfIZ4EAMkLaLWnQUMAUjIQmmxBF+rgC4hsZt8ndFRYwXJvknM9nz8H2BfB2+M
1T3TL1ti5aVya64IvoWx3X/4bdg9nF9H5Ab4XtFu86yTkYc+p2KWiahaYJ3THvR8
ZJdSN8sOpM1VUTJRJcKp
=qg+/
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--
