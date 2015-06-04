X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4245" "Thursday" "4" "June" "2015" "12:08:20" "+0530" "Siddharth Sharma" "sisharma@redhat.com" "<2626196.AXtmgrN9PG@rem0te-expl0it>" "101" "Re: [oss-security] Imagemagick fuzzing bug" nil nil nil "6" "2015060406:38:20" "[oss-security] Imagemagick fuzzing bug" (number mark "        sisharma@red Jun  4  101/4245  " thread-indent "\"Re: [oss-security] Imagemagick fuzzing bug\"\n") "<7FA08BC2-8B9A-4DDA-9FAE-F8F37D917BC5@technologysecure.com>" ("<CAE2SPAayq=owNBYB+pbLLKebd9zy_tj=K1sssgB=HuGS_3Pgjg@mail.gmail.com>" "<7FA08BC2-8B9A-4DDA-9FAE-F8F37D917BC5@technologysecure.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19956 invoked by uid 550); 4 Jun 2015 06:38:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19935 invoked from network); 4 Jun 2015 06:38:54 -0000
Message-ID: <2626196.AXtmgrN9PG@rem0te-expl0it>
Organization: Red Hat Inc.
User-Agent: KMail/4.14.7 (Linux/4.0.4-303.fc22.x86_64; KDE/4.14.8; x86_64; ; )
In-Reply-To: <7FA08BC2-8B9A-4DDA-9FAE-F8F37D917BC5@technologysecure.com>
References: <CAE2SPAayq=owNBYB+pbLLKebd9zy_tj=K1sssgB=HuGS_3Pgjg@mail.gmail.com> <7FA08BC2-8B9A-4DDA-9FAE-F8F37D917BC5@technologysecure.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2749839.UbVySrr0QI"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: Yury German <yury@technologysecure.com>,
        jodie.cunningham+osssecurity@gmail.com
Date: Thu, 04 Jun 2015 12:08:20 +0530
From: Siddharth Sharma <sisharma@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Imagemagick fuzzing bug
To: oss-security@lists.openwall.com

--nextPart2749839.UbVySrr0QI
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Saturday, January 17, 2015 13:06:07 Yury German wrote:
> Do we have a CVE assigned to this by chance?
>=20
> > On Dec 24, 2014, at 6:22 AM, Bastien ROUCARIES
> > <roucaries.bastien@gmail.com> wrote:
> >=20
> > Hi,
> >=20
> > during the previous month google and Jodie Cunningham.
> >=20
> > have done a security audit of imagemagick and found a lot of security b=
ug:
> >  * Avoid a DOS in vision.c due to an infinite loop.
> >  * Avoid a SEGV due to a corrupted pnm file.
> >  * Do not leak fd due to corrupted file.
> >  * Fix a double free in pdb coder.
> >  * Fix a SEGV due to corrupted dpc and xwd images.
> >  * Fix a SEGV in dpx file handler.
> >  * Fix a SEGV in malformed xwd file handler.
> >  * Avoid a NULL pointer dereference in ps file handling.
> >  * Fix a crash with corrupted viff file.
> >  * Fix a NULL pointer dereference in wpg file handling.
> >  * Do not continue on corrupted wpg file.
> >  * Avoid an out of bound access in viff image.
> >  * Avoid a heap buffer overflow in pdb file handling.
> >  * Avoid an out of bound acess on malformed sun file.
> >  * Avoid heap overflow in palm, pnm and xpm files.
> >  * Fix heap overflow in quantum, palm and psd file.
> >  * Fix handling of corrupted of psd, sun and xpm file.
> >  * Fix corrupted (too many colors) psd file.
> >  * Fix an out of bound acess in sun file.
> >  * Fix handling of corrupted sun and wpg file.
> >  * Fix heap overflow in pcx file, psd, pict and wpf files
> >=20=20
> >    and DOS in xpm files.
> >=20=20
> >  * Add additional PNM sanity checks.
> >  * Avoid a crash to out of memory in magick/cache.c
> >  * Fix a theorical out of bound access in magick/colormap-private.h
> >  * Fix an out of bound access in palm file.
> >  * Fixed throwing of exceptions in psd handling and fix a memory leak.
> >  * Fixed boundary checks in DecodePSDPixels.
> >  * Fix another out of bound problem in rle file.
> >  * Fix crash due to corrupted dib file.
> >  * Added checks to prevent overflow in rle file.
> >  * Impose a limit of 10 million columns or rows in an input PNG
> >  * Don't try to handle a "previous" image in the JNG decoder.
> >  * Avoid a memory leak in quantum management.
> >  * Avoid a crash in png coder.
> >  * Thread limit should be at least 1 in order to be efficient.
> >  * In psd file handling fixed parsing resource block and
> >=20=20
> >    avoid a crash.
> >=20=20
> >  * In cache fix usage of object after it has been destroyed.
> >  * Avoid a memory leak in rle file handling.
> >  * During identification of image do not fill memory
> >=20
> > Patch queue is here:
> > http://anonscm.debian.org/cgit/collab-maint/imagemagick.git/log/?h=3Dde=
bian-> > patches/6.8.9.9-4-for-upstream
It has been quite a while this thread seems dead, hence wanted to ask if an=
y=20
of the above mentioned security issue got CVE assigned or these are not=20
considered to get CVEs and to be fixed as it is ?=20

Regards,
--=20
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A=20=20=20=
=20=20=20
Fingerprint :  0x6F04C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A

--nextPart2749839.UbVySrr0QI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJVb/JcAAoJEM1vjlXZ9kiavNcP/1/8ApJdAJmTBMInXEAL+Dk9
OHlZ/yA9RpFcJpzobdvR+93FAu7VdQJSSFum4oUsO7rbW9i+8OSHFbeqhhCguzfn
DaxuWIfZNOawmLNip4ybaQk2t+NpOCT9ny0bxUgRufseLqPZUcEQY77OJizv0rCx
vyLrt58EcCjW4EdYbCUYyrFQt4Nt3c2ipa9RUKFUUGNxbWj8++DN3r6dBxh8gv+Z
3Ano3xMTEcaN3mLUzI9iag1smkCz7t+T+gYwZDeEyddOfbn3OSB4HFMH1aN+zAYu
Kxc5+uoTLA8PSUYnWF9ZNqsX1C9Luf5ptjGJhlRHFRLhlz85H3kHWIhGnhEmtvAO
6qpDNm1d/pinMtRSDtXe+7V+XHvmSSII1MwCubqblsb9Rq/i4MYVZsYnmYskzZqP
O+CMcyZdp8F9+fz1gpinGbdUrdiGMgsj3AoCr8ReNM7VCVehMDFu23DxUSHqKLbs
5ZTUDZqJEvPVYteWNsfrxBwL2TISc6nvGdhIQ4cfjFal6hc8oMuQ8aPyd2Tv7GVW
0Xe5OT+AM+Xv4uskOqY+13nGLrVmx+qEhPf9WA4ExoPV6OIxX4eigRpLK7s+ZKwG
BO/T2eCzOL5YPdTGJP9QywNKnloprt6wiXE5MbXuY/yD6s1VQuiEC+FpT6y2gqOX
+XEEFDFdApI2zpWF0sWI
=UAIn
-----END PGP SIGNATURE-----

--nextPart2749839.UbVySrr0QI--

