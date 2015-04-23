X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1682" "Thursday" "23" "April" "2015" "17:19:25" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150423151925.GB3524@mail.corp.redhat.com>" "61" "[oss-security] CVE Request: texlive: insecure use of /tmp in mktexlsr" nil nil nil "4" "2015042315:19:25" "[oss-security] CVE Request: texlive: insecure use of /tmp in mktexlsr" (number mark "        vkaigoro@red Apr 23   61/1682  " thread-indent "\"[oss-security] CVE Request: texlive: insecure use of /tmp in mktexlsr\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11991 invoked by uid 550); 23 Apr 2015 15:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11970 invoked from network); 23 Apr 2015 15:19:52 -0000
Message-ID: <20150423151925.GB3524@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gatW/ieO32f1wygP"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: 775139@bugs.debian.org
Date: Thu, 23 Apr 2015 17:19:25 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: texlive: insecure use of /tmp in mktexlsr
To: oss-security@lists.openwall.com

--gatW/ieO32f1wygP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to request a CVE for the following issue:

mktexlsr script uses /tmp in an insecure way.
=46rom the original Debian bug report:
"""
This is how mktexlsr uses temporary files (with boring parts snipped):

treefile=3D"${TMPDIR-/tmp}/mktexlsrtrees$$.tmp"
# ...
while test $# -gt 0; do
   # ...
   (umask 077
   if echo "$1" >>"$treefile"; then :; else
     echo "$progname: $treefile: could not append to arg file,
goodbye." >&2
     exit 1
   fi
   # ...
done


This is insecure because the filename is predictable and, more=20
importantly, the program doesn't fail atomically if the file already=20
exists.
"""

References:
  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D775139
  https://bugzilla.redhat.com/show_bug.cgi?id=3D1181167

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/

--gatW/ieO32f1wygP
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVOQ19AAoJECF7+fyrtugoRIQIALWSoTLQ9z10Yrvxylxo9eSt
W5RSJZ7V47bg0/z0N0UTw179ZnhPXcReWNz3HMyFaNjDcV8bM4KRZ89Dbopv5sMr
ToHmyhFO2M2bPgaaNF3d1e3ruy0KqejJChZ/hmtIOfVgm8W3cYLVGph3VD67Nlt6
AsZMrq30OtJ/3W4PofEwR4uZ2oEqfnhnqeF+DJ6jsPik6A9fg/KBq9OY2Xu+Ms08
Vb6QT0CXNEG1uA5fSLSgn1nBs3MjIqbL4BJ3n9RghW2Hr9aHybKXGO/sbkAcBZfE
gOIDZxEcry74QSDL1YyQ49DMZY4z7pZKPmfCYM3OLn3JIgpTvDYrL5Dtl1g7p/8=
=7gnz
-----END PGP SIGNATURE-----

--gatW/ieO32f1wygP--
