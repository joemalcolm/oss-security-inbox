X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1781" "Thursday" "2" "February" "2017" "14:11:56" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20170202131156.GB3585@f195.suse.de>" "56" "[oss-security] CVE request tigervnc: vnc server can crash when TLS handshake terminates early" nil nil nil "2" "2017020213:11:56" "[oss-security] CVE request tigervnc: vnc server can crash when TLS handshake terminates early" (number mark "U       mgerstner@su Feb  2   56/1781  " thread-indent "\"[oss-security] CVE request tigervnc: vnc server can crash when TLS handshake terminates early\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5741 invoked by uid 550); 2 Feb 2017 13:25:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26589 invoked from network); 2 Feb 2017 13:12:08 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 2 Feb 2017 14:11:56 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170202131156.GB3585@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE request tigervnc: vnc server can crash when TLS handshake
 terminates early

--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

the Xvnc server from tigervnc can crash when a client terminates a TLS
connection early. This is due to invalid initialization/deinitialization
order of the GnuTLS library.

Upstream commit:

https://github.com/TigerVNC/tigervnc/commit/8aa4bc53206c2430bbf0c8f4b642f59=
a379ee649

Reference:

https://bugzilla.suse.com/show_bug.cgi?id=3D1023012

This issue was reported/found by Ruediger Meier, Michal Srb (SUSE
Linux).

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYkzAcAAoJEBTEBclxkjVTAusQALh0qVAvdKV66wafdhjZSUKT
WZ8SFXBVletsWpArEZ7PbMT+k/a6IG6togYLwT2lhaYJbeCOe2nUiZqS/JOaBywF
q9AXF0SFXGHEF90QqztrRsBEkEkqPzT5Md+GmWRMfl8JZYMmmHJgqbpY1FabgJJM
Smp5n0Qa3J965lg6HhwBq1W76Up0LlwFir+1YIkrbWkOQGVUKJxLJ9tbErasoH3m
vMkId0ujkwhInf6Jw+VWcTlTWTpCTbhmqhpaoLbL/YMqBXi1LwffZWbdBWQCE/ry
VrDDPCRDsBbvdhXJzqpbHndGLLBSml1vfZBpSZomNoKJZVutHRhjXAfNh8I4sNxk
plDRmt3wMYE1c9No8uME824zlzcTcks7Ya7t8MDtObKQwoZYKGnSe6sWwYYYGKkD
yWM/umFiR8F39LbA6gGAdysit60EmqV+ZYowzTqMpYhyRgTNzIWWfQzCthE/UIuR
EPXRVzjS9mEMtl7tCRhQphArrh9AEYnsqMfDUweHUKgTWIxOENc0ieI6CseOYEk/
eCZm6CI74RrjiIeeLL71XsJfDh0LrQUyXT0PjeF7W/NnmLlZRqxrOhz1R6BE5JX3
RtU7j7MyFulT6Shp/JyPQRbikzn/AtfK8GxFZ1KHJxL8k/ec1X7JCFPGZ058n8QQ
yMAMEnPtSYat+jYOfF/i
=16zF
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--
