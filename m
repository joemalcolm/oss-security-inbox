X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1882" "Tuesday" "28" "November" "2017" "15:55:24" "+0100" "Matthieu Herrb" "matthieu.herrb@laas.fr" "<20171128145524.GI6762@timmy.laas.fr>" "50" "[oss-security] CVE-2017-16611 libXfont Open files with O_NOFOLLOW" nil nil nil "11" "2017112814:55:24" "[oss-security] CVE-2017-16611 libXfont Open files with O_NOFOLLOW" (number mark "U       matthieu.her Nov 28   50/1882  " thread-indent "\"[oss-security] CVE-2017-16611 libXfont Open files with O_NOFOLLOW\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17473 invoked by uid 550); 28 Nov 2017 15:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30204 invoked from network); 28 Nov 2017 14:55:36 -0000
Date: Tue, 28 Nov 2017 15:55:24 +0100
From: Matthieu Herrb <matthieu.herrb@laas.fr>
To: oss-security@lists.openwall.com
Message-ID: <20171128145524.GI6762@timmy.laas.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2nTeH+t2PBomgucg"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE-2017-16611 libXfont Open files with O_NOFOLLOW

--2nTeH+t2PBomgucg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

X.Org has just release libXfont 1.5.4 and libXfont2 2.0.3 which
contain the following security fix:

Author:     Michal Srb <msrb@suse.com>
AuthorDate: Thu Oct 26 09:48:13 2017 +0200
Commit:     Matthieu Herrb <matthieu@herrb.eu>
CommitDate: Sat Nov 25 11:46:50 2017 +0100

    Open files with O_NOFOLLOW. (CVE-2017-16611)

    A non-privileged X client can instruct X server running under root
    to open any file by creating own directory with "fonts.dir",
    "fonts.alias" or any font file being a symbolic link to any other
    file in the system. X server will then open it. This can be issue
    with special files such as /dev/watchdog.

https://marc.info/?l=3Dfreedesktop-xorg-announce&m=3D151188049718337&w=3D2
https://marc.info/?l=3Dfreedesktop-xorg-announce&m=3D151188044218304&w=3D2
--=20
Matthieu Herrb

--2nTeH+t2PBomgucg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJaHXjcAAoJEGhzk+430Sj4iUIQAIvCB5hCTYnCFpVA7D+yIAj5
NVQ3bEL2vysX+VSkriq0dMyWQPn20C3+OBLgKLLREhfA4pYZxtQtxHahyDJvag3x
jjrHah9CxndzROmFbozjSrPPB/G0WZOP6lnHEe7hvXnll2/r4f4MxrQkpnL/EdhY
H7E5yI22WB8xco+PhlpziCN/R1Ysx2OLQ5zoPsediE3Coc+mqXHA7tloD1cm6BkF
22J53llgHueqxWD85ZjuQn+Gv3Z1iht1f/tQpF5H3DgC0M2GjgVRjWVeWeO8LfpV
lscENBmmqr7uSZU9knGDhZP6vZ4lknGcm1kqurhRmdgukQM0ueKg8v+fC9TiO1hy
/GyXDA5VOsqXq+QbZRIDzf53F2vl6lpQSjFMBzo02WGrnBnXCJ9UbxHdTBlVnHIE
ztkb7BuoUiN5wZQrvo0s/eLQz3YWtMfYXVCmFhN//WZIFT+A2slElrzvMxXWsPi7
9I68zOEW7b0T/wyZK1c9lEe5fsmiQOA+uIm96ONaiCHmyzi8lNC0AcgFAhQvJnEW
LYFaghmrW92QUpRaeXs/ypSOFoljy1++7CFPk1s7uSrRoAV0UJvdLpV5YjAZ6MRA
bCGpafid4C7cQ1n2b1LI9G19U2zP0T5ME0Z+sryKlAVsXvyWNDdin+iTzQI1odP8
lKHoaN7khlMCpSc1/DN3
=DGku
-----END PGP SIGNATURE-----

--2nTeH+t2PBomgucg--
