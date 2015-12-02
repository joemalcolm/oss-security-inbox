X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1691" "Tuesday" "1" "December" "2015" "17:51:46" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20151202015146.GJ24908@hunt>" "50" "[oss-security] CVE Request: dhcpcd 3.x, potentially other versions too" "^Cc:" nil nil "12" "2015120201:51:46" "[oss-security] CVE Request: dhcpcd 3.x, potentially other versions too" (number mark "        seth.arnold@ Dec  1   50/1691  " thread-indent "\"[oss-security] CVE Request: dhcpcd 3.x, potentially other versions too\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13896 invoked by uid 550); 2 Dec 2015 01:52:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13869 invoked from network); 2 Dec 2015 01:52:00 -0000
Message-ID: <20151202015146.GJ24908@hunt>
Mail-Followup-To: oss-security@lists.openwall.com, guidovranken@gmail.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VBq/nvTu32OVLBUP"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: guidovranken@gmail.com
Date: Tue, 1 Dec 2015 17:51:46 -0800
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: dhcpcd 3.x, potentially other versions too
To: oss-security@lists.openwall.com

--VBq/nvTu32OVLBUP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello MITRE, all.

Guido Vranken reported several flaws to Ubuntu's launchpad bugtracker
in the dhcpcd3 package that is shipped in Ubuntu, Debian, and potentially
other distributions.

https://bugs.launchpad.net/ubuntu/+source/dhcpcd/+bug/1517226

Guido included a patch along with AFL-discovered inputs to trigger the
issues:

https://launchpadlibrarian.net/228152582/dhcp.c.patch

https://bugs.launchpad.net/ubuntu/+source/dhcpcd/+bug/1517226/+attachment/4520925/+files/patch-payloads-dhcpcd.c.tar.xz

Roy Marples has already addressed these issues in upstream dhcpcd
packages; I believe these issues may require 2012-era CVE identifiers:

http://roy.marples.name/projects/dhcpcd/finfo?name=dhcp.c&ci=27a92c6a825d6e74


I believe this represents three distinct flaws: out of bounds reads beyond
the end of the supplied packet, out of bounds write before the start of
the 'out' parameter, and a use-after-free.

I brought this issue to the distros list on Wed, 18 Nov 2015.

Thanks

--VBq/nvTu32OVLBUP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWXk6yAAoJEPMhclmdjS6Xg9YH/j/vthUgi0YG3oQ/oWh7O6LJ
vKmJJeBFT6hhiSbJSD7RnHTJXPU798NHdjTRqawOH5xb90iyEseD0QareAEYXJ4B
EJPhDIi3hyHQ6Ho03dUBNEkHaCZLSE1qSz9YYp3h4cHD8zg9nTvv1AK2x1CIS1Sl
wWuMF9qTx6KkZtaplZVuCQOeiNYbO1pU72Oo/gvtDYJa3/rhenSQbVtq3NyhElOd
6J1zeW38Gj49ddYfB2nz2aOTXVpFl2BqrtmOXnUJZMdnom+fC3zQDLP6lpnFE5J3
u5BogZZwrMqDdh3De46uv9dy0e0DPpUXEBs/i5nkGpVRobgonB1vwdQuura6KBA=
=wH9B
-----END PGP SIGNATURE-----

--VBq/nvTu32OVLBUP--
