X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1463" "Wednesday" "30" "March" "2016" "12:24:12" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160330192412.GC7963@hunt>" "43" "Re: [oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files" nil nil nil "3" "2016033019:24:12" "[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files" (number mark "U       seth.arnold@ Mar 30   43/1463  " thread-indent "\"Re: [oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files\"\n") "<CACn5sdQ1V7zLe=vy3msAAEF+vPpaYmftukhMBtRre=eKbk7MyQ@mail.gmail.com>" ("<CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>" "<CACn5sdQ1V7zLe=vy3msAAEF+vPpaYmftukhMBtRre=eKbk7MyQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1502 invoked by uid 550); 30 Mar 2016 19:24:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1482 invoked from network); 30 Mar 2016 19:24:26 -0000
Date: Wed, 30 Mar 2016 12:24:12 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20160330192412.GC7963@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>
 <CACn5sdQ1V7zLe=vy3msAAEF+vPpaYmftukhMBtRre=eKbk7MyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s9fJI615cBHmzTOP"
Content-Disposition: inline
In-Reply-To: <CACn5sdQ1V7zLe=vy3msAAEF+vPpaYmftukhMBtRre=eKbk7MyQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] Re: CVE request: Heap overflow in VLC 2.1.6
 processing wav files

--s9fJI615cBHmzTOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 30, 2016 at 03:24:54PM -0300, Gustavo Grieco wrote:
> For some reason, the attached test case did not go to the mailing list.
> Let's try again..
>=20
> 2016-03-30 14:43 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:
>=20
> > Hi,
> >
> > We found a buffer overflow in the parsing and processing of wav files in
> > VLC (version 2.1.6-0). It was tested in Ubuntu 14.04 (x86_64), but it w=
ill
> > probably affects other versions as well. Fortunately, it seems to be fi=
xed
> > in the last release of VLC. Here you can see the gdb stack trace:

It didn't come through the second try either; it's attached to the bug
report at:
https://bugs.launchpad.net/ubuntu/+source/vlc/+bug/1533633

Thanks

--s9fJI615cBHmzTOP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJW/CfcAAoJEPMhclmdjS6Xrf4H/21sYmc8yKr4wvFhiIrE333v
Gg1Im45jNFhBRA4iDWcenuJELOfZquzYWQWePJawk6cHIIXA8P8lTnWYJkEzVaMJ
lMfIvBqrPlDBc+S8FZog++BNDXo6k7QtyMy7euRQJjZN/1CPbj10HpjLZ/wUMICh
ocaJ0+ZpD5RFnstWqcq9nFlgIGTQ7Mcq/WHVpb72uUmndb6Bql2l+/hCEAabFqTB
THR3Yxa1l1KQi9+dJ2tUIUaOgMRxPvcyhv337rJnI2QFb5ArRPOEunn+z8elkH4Q
BFS9BFD1zpXrpp5Sz+cK7+gJ+RrDrVw9Veuz3C6HUc2Vv8KfG0L5UsnumBhtlnI=
=R/X2
-----END PGP SIGNATURE-----

--s9fJI615cBHmzTOP--
