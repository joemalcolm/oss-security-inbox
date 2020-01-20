X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3357" "Monday" "20" "January" "2020" "15:50:28" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200120145027.GF10486@f195.suse.de>" "80" "[oss-security] CVE-2019-18899: apt-cacher-ng: openSUSE packaging for apt-cacher-ng runs the daemon as root instead of as an unprivileged user" nil nil nil "1" "2020012014:50:28" "[oss-security] CVE-2019-18899: apt-cacher-ng: openSUSE packaging for apt-cacher-ng runs the daemon as root instead of as an unprivileged user" (number mark "U       mgerstner@su Jan 20   80/3357  " thread-indent "\"[oss-security] CVE-2019-18899: apt-cacher-ng: openSUSE packaging for apt-cacher-ng runs the daemon as root instead of as an unprivileged user\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18899: apt-cacher-ng: openSUSE packaging for apt-cacher-ng runs the daemon as root instead of as an unprivileged user" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3779 invoked by uid 550); 20 Jan 2020 14:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3758 invoked from network); 20 Jan 2020 14:50:39 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 20 Jan 2020 15:50:28 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200120145027.GF10486@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6cMF9JLEeZkfJjkP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] CVE-2019-18899: apt-cacher-ng: openSUSE packaging for apt-cacher-ng
 runs the daemon as root instead of as an unprivileged user

--6cMF9JLEeZkfJjkP
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

apt-cacher-ng is a caching proxy for downloading packages from
Debian-style software repositories [1]. In the course of a code review
of apt-cacher-ng I noticed a mismatch between upstream configuration and
the configuration used in the openSUSE packaging.

While the upstream configuration expects the daemon to run as the
apt-cacher-ng unprivileged user, the openSUSE packaging ships a
diverging systemd service unit configuration, causing the apt-cacher-ng
daemon to be running as the root user. Apart from a generally increased
attack surface by not lowering privileges this causes the following
security issue:

Although the openSUSE packaging for apt-cacher-ng doesn't employ the
unprivileged apt-cacher-ng user, it still creates it in the system. The
directory /run/apt-cacher-ng is created for the apt-cacher-ng user via
a systemd-tmpfiles configuration file from the upstream sources. This
results in the apt-cacher-ng daemon running as root, which handles files
in /run/apt-cacher-ng which is owned by the apt-cacher-ng user. The
daemon correctly assumes that this directory is safe to handle without
precautions, but this assumption is broken by the bad packaging.

Therefore a compromised apt-cacher-ng user account can perform symlink
attacks in /run/apt-cacher-ng to cause writes to privileged file system
locations by root, once the apt-cacher-ng service is (re)started.
Furthermore the socket path /run/apt-cacher-ng/socket can be replaced by
an attacker owned socket, thereby allowing him to hijack privileged
client connections to apt-cacher-ng. Additional unexplored security
issues could be possible.

An update for the broken packaging will be supplied for openSUSE Leap
15.1. Furthermore, since there is no active maintainer for the package
in openSUSE, the apt-cacher-ng package is removed from the
openSUSE:Factory project and thus from the openSUSE Tumbleweed rolling
release distribution in the future.

[1]: https://wiki.debian.org/AptCacherNg

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

--6cMF9JLEeZkfJjkP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl4lvjMACgkQFMQFyXGS
NVOfMRAAvWE5c5csMmHPSC5EG3BboYOUrXZNbQaP3Hl5nKLgG4r4QxBM6Fk2Qin9
Xb+8OCLUYbGr4iMvZPlAPJW/CkRx1u2gvr5g7EaKwgxaor4mEOAhdHtC3A33SwiC
atKRmz2QTTtFfY1e992M5h3HNfqUhMQrsUdoRvHjVujM860UyhjtycSCdzRm8Gbr
3aRqz3MdpdGcVCAude3+7SC/f3N/mco87qdhPI18QD1T6uKMBpOQu4k2902bxYN3
rnRzHEOektA5uA1x8jgAf13CoQqM9lh2XnybfaPcIo1bQaufx+KMpmPn6PoPoLns
UFGglnhZnxN8fO36FxoSmrSJQX+CjJgREEeSRJhkHw0DCgOTrvSEh86+rcf9K6QC
mTZ0VOsCmKxriFeflIxiV/wRm+QtN8K1uBChNbpUD0Wa4zW9Oy63GgoRguYYa/mK
9rh1XnAsdJIVebvDcJZ9+NuwdBndy0MSgjopNsaSNE/H8bjyH0DK/1CL+SFzdX1q
B3rZgVqJhpRSFuXMOHkSZPI0HABBMwLOXxHd9R78j333r14Ulo8VpgNOfLWe8fU7
T1c7tIiM/ZwyvBUuCeSBzIaPVQjWUejFVIo96/1Z2px5/ykCKnj35nUx8QzX/RgH
Jk5istDBqfHaZh1UwhVagtt5XLKbeIAy3LvIE23jnzjXz4bRwP4=
=m1eL
-----END PGP SIGNATURE-----

--6cMF9JLEeZkfJjkP--
