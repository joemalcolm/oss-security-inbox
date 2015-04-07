X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1671" "Tuesday" "7" "April" "2015" "14:59:18" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55244526.7020901@redhat.com>" "46" "[oss-security] chrony security release as well" nil nil nil "4" "2015040720:59:18" "[oss-security] chrony security release as well" (number mark "        kseifried@re Apr  7   46/1671  " thread-indent "\"[oss-security] chrony security release as well\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23933 invoked by uid 550); 7 Apr 2015 20:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23915 invoked from network); 7 Apr 2015 20:59:32 -0000
Message-ID: <55244526.7020901@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="vmhO6aKWeqP3GCGTemuEbj1gq4G6iH3ks"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 07 Apr 2015 14:59:18 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] chrony security release as well
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--vmhO6aKWeqP3GCGTemuEbj1gq4G6iH3ks
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Miroslav Lichvar has been busy:

http://chrony.tuxfamily.org/News.html

This addresses:

https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-1853
https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-1821
https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2015-1822

luckily 1821/1822 both require admin access, but can result in potential
code exec.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--vmhO6aKWeqP3GCGTemuEbj1gq4G6iH3ks
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVJEUnAAoJEBYNRVNeJnmTIfsP+gO8uQbxD9V8dFS7cQ4Slbtj
A2J72lep6QaDxFcTIfZtyUWfmL+i+gLfIAY6CB7jK08phta/FVJS9c8Su7wIx31r
aoQaMEuQYSmnf7zAFc1ojVj0QdGssH/HSe75TCwO6Kc6vh6fY7KWA2vT5VLjjdZ+
+mSp3rBwUnMDk7dMdTDj03Ep/Ew3ehLAiOq876RWepSBVnakV869T6TduorLmMmt
yUs8113YH3JRG39oVcB/LIA1g/z5c0A9I/sLldeI7Uw1DHwkHPGQQRmoNrA2bi2A
34hNp6w5q23SLIeTga03cGRIM03kljeD+COSgHRCLUIzJB7YapYDL2kP0oc7S92v
4VueZW4hkehh8kIZS43zzUg8D/wQHAHlkKhJWBlDk0vd2VgKoiD2KqFlGSPsHBl+
pV706wIpxLXU27mjRDWEp3xUeuoCBb4/ZTe246SLZ7f1xsN+Wvfsudgd1rWGQi66
SbZ76RvPLPEnFrHvSFxdgHHGO0ztJcfKJgVihQk6WxJbRBok8mRyPf1FGD1JzMYl
0X/sRrpaRhPQNTp6tuLWHstJAsoLF/MoZHZssVvCw+xCZ3Ji5ixqqZl9hUHRrDLX
KJIR1wN9HeVxdPaF/lqCAfwG3vWMTV+pHhJnztqt+i632CzOYMtuxLibPO0eVZLR
gcJeX0rOJPj1xr4qj0bQ
=EI9G
-----END PGP SIGNATURE-----

--vmhO6aKWeqP3GCGTemuEbj1gq4G6iH3ks--
