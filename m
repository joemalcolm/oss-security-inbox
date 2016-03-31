X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2173" "Thursday" "31" "March" "2016" "17:11:29" "+0200" "Johannes Segitz" "jsegitz@suse.com" "<20160331151128.GK26612@suse.de>" "55" "[oss-security] ext4 data corruption due to punch hole races" "^Cc:" nil nil "3" "2016033115:11:29" "[oss-security] ext4 data corruption due to punch hole races" (number mark "        jsegitz@suse Mar 31   55/2173  " thread-indent "\"[oss-security] ext4 data corruption due to punch hole races\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16296 invoked by uid 550); 31 Mar 2016 15:11:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16203 invoked from network); 31 Mar 2016 15:11:42 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160331151128.GK26612@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7vLGWvOrvbSM0Ba8"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Thu, 31 Mar 2016 17:11:29 +0200
From: Johannes Segitz <jsegitz@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ext4 data corruption due to punch hole races
To: oss-security@lists.openwall.com

--7vLGWvOrvbSM0Ba8
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Jan Kara fixed some issues in the Linux kernel with security implications.

https://bugzilla.suse.com/show_bug.cgi?id=3D972174

"When punching holes into a file races with the page fault of the same
area, it is possible that freed blocks remain referenced from page cache
pages mapped to process' address space. Thus modification of these blocks
can corrupt data someone else is now storing in those blocks (which
obviously has security implications if you can trick filesystem into
storing some important file in those blocks).

This affects all the kernels where we support ext4 for writing. Relevant
fixes upstream are commits ea3d7209ca01da209cda6f0dea8be9cc4b7a933b,
17048e8a083fec7ad841d88ef0812707fbc7e39f,
32ebffd3bbb4162da5ff88f9a35dd32d0a28ea70,
011278485ecc3cd2a3954b5d4c73101d919bf1fa."

Please assign CVE(s).

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--7vLGWvOrvbSM0Ba8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJW/T4gAAoJELwn3Z0sxP1maNAQAJ+Gipr9mGg97Gex44vmTXDz
YQjNtMPVsBO3sxi6u1zn1Dbyhow1Xil3hB3JBQoLaxEo2ruir9VOUtm8Lzr/xxQL
lGN6RzGdDLtWkd4tBAovH0eUJ+b194H2a7EHsfaAZz17IaqdMe51qwMGg2R/j3NB
vSMq2A9YlNXdoFRMe9sM150WVkBs3Ox96g2pzKwwaUhsC+kdcBQghgHlYqH3uPTZ
/WjuWi1phm+nMgx+aQCtx8ymzA/GsdmDEhCTSnxt3/Qg1laiVG18QxFI5Dh5hP3i
TenAeyhOW08cQmyJmKjlMxQhkvIvAsIOzOmC0IQ1eklW3DugvXy0e7EjzQZwgsXR
Ov8NmHOspz1jW75mFupy38NBRztCO87sbJCa1TFyEeivZa6C6vIcQ0ymQxB6lHcq
ELjJyCjELzIShgSxSiDIJ5InF1bzgqpxS4ZCZCv9MX/I5pgZhfuYlWDmyd/qWyqv
Ws+5u0QR58x1hZSLEDK4XEBZFwNt2UVHfx+Gq2baG5gNLRA5BuTiUnAwpHcVy6ki
tpjF20lTuNHxX23cKME+vYcF4wiJ9cvcKoE49uSOLwRUGZtM/SLuzq2WxXp9f/5c
995RaGa1FO/dXtpq1LK9+Mh9Db0/4IvM8dq7WnvCHrtBlS+zGw7hzHR14B2dw51c
cjJ4+lj8Zec1eFrw+BS9
=5rlE
-----END PGP SIGNATURE-----

--7vLGWvOrvbSM0Ba8--
