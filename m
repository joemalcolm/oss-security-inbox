X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3558" "Thursday" "6" "October" "2016" "11:42:56" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20161006011255.GB5763@sin.redhat.com>" "91" "[oss-security] CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)" nil nil nil "10" "2016100601:12:56" "[oss-security] CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)" (number mark "U       dmoppert@red Oct  6   91/3558  " thread-indent "\"[oss-security] CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)\"\n") "<CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>" ("<20160927012359.GA30247@sin.redhat.com>" "<CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1892 invoked by uid 550); 6 Oct 2016 01:45:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7861 invoked from network); 6 Oct 2016 01:13:14 -0000
Date: Thu, 6 Oct 2016 11:42:56 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: Raphael Geissert <geissert@debian.org>
Cc: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20161006011255.GB5763@sin.redhat.com>
References: <20160927012359.GA30247@sin.redhat.com>
 <CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
In-Reply-To: <CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Thu, 06 Oct 2016 01:13:02 +0000 (UTC)
Subject: [oss-security] CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re:
 openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)

--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Subject amended to reflect the need for a new CVE.

On Oct 05 2016, Raphael Geissert wrote:
> > http://seclists.org/oss-sec/2013/q4/412
> >
> > segfault-1.patch uses:
> >
> > +               tilec->data =3D (int*) opj_aligned_malloc((comp0size+3)=
 * sizeof(int));
> >
> > which should have used compcsize instead of comp0size.
>=20
> Yes, indeed. This patch also introduced a regression in the processing
> of some images.
> Cf. https://bugs.debian.org/734238

Thanks for the reference.  The corrected patch attached to
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D734238#53 agrees with
my analysis.

> Do you specifically know of a distribution that still has that patch?

Red Hat Enterprise Linux and Ubuntu LTS seem to be still carrying the
original patch.  Possibly others, but these are the only ones I've
identified.

> If I remember the context correctly, the use of comp0size could then
> lead to a heap buffer overflow later on. Was that what you noticed?

Yes:  the use of comp0size under-allocates buffers for components 1..N,
which are then overflowed in later processing.

using issue725.jp2 from
https://github.com/uclouvain/openjpeg-data/tree/master/input/nonregression/

$ valgrind j2k_to_image -i issue725.jp2 -o o.ppm
[INFO] tile 1 of 1
=3D=3D13969=3D=3D Invalid write of size 4
=3D=3D13969=3D=3D    at 0x4E52B3A: t1_decode_cblks (t1.c:1560)
=3D=3D13969=3D=3D    by 0x4E5BD53: tcd_decode_tile (tcd.c:1424)
=3D=3D13969=3D=3D    by 0x4E42749: j2k_read_eoc (j2k.c:1670)
=3D=3D13969=3D=3D    by 0x4E42EB7: j2k_decode (j2k.c:1998)
=3D=3D13969=3D=3D    by 0x4E468C4: opj_jp2_decode (jp2.c:778)
=3D=3D13969=3D=3D    by 0x4E49A2F: opj_decode_with_info (openjpeg.c:168)
=3D=3D13969=3D=3D    by 0x4E4999F: opj_decode (openjpeg.c:157)
=3D=3D13969=3D=3D    by 0x404294: main (j2k_to_image.c:674)
=3D=3D13969=3D=3D  Address 0x64b7a1c is 0 bytes after a block of size 396 a=
lloc'd
=3D=3D13969=3D=3D    at 0x4C29BFD: malloc (in /usr/lib64/valgrind/vgpreload=
_memcheck-amd64-linux.so)
=3D=3D13969=3D=3D    by 0x4E5BCD0: tcd_decode_tile (tcd.c:1418)
=3D=3D13969=3D=3D    by 0x4E42749: j2k_read_eoc (j2k.c:1670)
=3D=3D13969=3D=3D    by 0x4E42EB7: j2k_decode (j2k.c:1998)
=3D=3D13969=3D=3D    by 0x4E468C4: opj_jp2_decode (jp2.c:778)
=3D=3D13969=3D=3D    by 0x4E49A2F: opj_decode_with_info (openjpeg.c:168)
=3D=3D13969=3D=3D    by 0x4E4999F: opj_decode (openjpeg.c:157)
=3D=3D13969=3D=3D    by 0x404294: main (j2k_to_image.c:674)
=3D=3D13969=3D=3D=20


--=20
Doran Moppert
Red Hat Product Security

--KsGdsel6WgEHnImy
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJX9aUXAAoJEGohqWcZR7qprEcP/RjiF9a3oLSnAKa76PiIsWWX
SQHGME49eqlkcR2ecRAbpPviLonTrB2Q1gZJkYe7igd64UalylWesWfZi/iDnnky
MF25l9x9U7BoWiFwc8NbqyPWLfXcJ27JHBcWIeCCVjE4CNBflA3yf6xTOlVgNSCU
r+2PBKMPi1zK7PKKWmwE7eWzpSWO7mGblp2cIB49Q7HKPJTlippE+nMiWUoH/+nM
JmlcDLGItc88SmHQLGD8Vd4ESqfLO/BLqyGUnbziMTeF/wWa70+wnYKOfwcudnAv
/gC2w2Zcw7S4paV5o63/VCQqFeLvzlXVjFQbGUPkBfUbfmaXq5zWgf89p9OfAHOT
Bti7UjEewsEOhnWmemVrf+Q1iS+7QKJxvDirEQ8V/lccxWybbuhskbLe4IaK9M7R
vTeCeaJsj74rsuZAmnDZrXET2HkdJ9QeUHLgTqKQKRoD44sKsCAN2ne1x2y2zaOk
oMx2ZskOJ2h3CSvtgDE1SIEsvSW/YA8eLyNso2SU/Tpx3px+1eXrxdMDRTJKgcXy
/+hMnqQLIAb7opxhPdadVS/278AlSQkW5dlaczmltEAyaoLZVQpuMW9heq4wnPRL
XaqjAb34+cbgPTbNlD0+f6Y5lVDHwEPp1nLfFvraHzHMdVVGkGRgrnPRdD1+r2BL
Bs+RdZv7tOuCNByfqu+z
=zgTg
-----END PGP SIGNATURE-----

--KsGdsel6WgEHnImy--
