X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4082" "Saturday" "7" "August" "2021" "03:51:07" "+0200" "Axel Beckert" "abe@debian.org" nil "109" "[oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       abe@debian.o Aug  7  109/4082  " thread-indent "\"[oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19959 invoked by uid 550); 7 Aug 2021 05:21:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16030 invoked from network); 7 Aug 2021 01:51:21 -0000
Date: Sat, 7 Aug 2021 03:51:07 +0200
From: Axel Beckert <abe@debian.org>
To: lynx-dev@nongnu.org
Cc: oss-security@lists.openwall.com, security@debian.org,
	991971@bugs.debian.org
Message-ID: <20210807015102.ea4f5immh2l5ku4n@sym.noone.org>
Mail-Followup-To: lynx-dev@nongnu.org, oss-security@lists.openwall.com,
	security@debian.org, 991971@bugs.debian.org
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jyzxj5biv5jy7ijz"
Content-Disposition: inline
In-Reply-To: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
X-Operating-System: Linux 4.9.0-16-amd64
X-Machine: sym2 x86_64
X-Editor: GNU Emacs 25.1.1
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAAAAAC3mUtaAAAABGdBTUEAALGPC/xhBQAAADh0RVh0U29mdHdhcmUAWFYgVmVyc2lvbiAzLjEwYSAgUmV2OiAxMi8yOS85NCAoUE5HIHBhdGNoIDEuMindFS5JAAACGElEQVQ4jXXQMU8UYRDG8f8shNjdDH4AbpfGDjAWlKiJiZ0ajL1aGCvsNCbGaCGG1koLaztaTYz6ATy+gOyehYmF3MxVxgg3FnDsHcTpJr/M+8w7Rf6nCsaVTTDqxbg9hoOXmw83H71+Eyfg4E1d7/Z2fG9rGkZbTQiu+K+3U/C+76lmkvAhJuDndnoAiftou4V84okAGclop4U/jYACZDTxrYWP0gkxVfAm/W//GLZpxIzwIN0Hn8dw0B+IWkZmQmRsj2HfhwokEklHfNCCiQCRgAR7YyhQVRVTCKCzP4Y5zBBE0t0zY3Q8oQaBqqAMlVEcgVQd9706zGirAFium8HXumlMIeMwqQCInju+2+uB6MRENupdpMt8pRlHZyuAW0F+Mb6XSIVqtxjD+iVmVqqystLEzFTGT92YqRaXpNT5eTVjeJhbALPnrTxLUZUKZsgxcNm64hAOYisT/xhF+oKTGU5RegtC3Rt6eEDi/QnIevdTx9Md2EMmYBRmCQR1026FCGQQJJExsRUqgkMGaWSbwYLnoO4T6VgpbQbdELPMBAHWWrhYrcxXnYgAsatPWygkFCBD4K62MAsOTqA6szYRPpsu6e6Y8mPiVrBMNuGIMrgwBUu4p2DgG1Ownu6hpuTv7hScefHAzAC/yRRw5U5pALMbJ4AUALvHSZhxgHPXTsHcdWD1GadAHr9avP+c0wCr7263Df8ASLwXWHWs+KIAAAAHdElNRQfYBQEBODPr
Organization: The Debian Project
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks
 password in clear text via SNI (under some circumstances)

--jyzxj5biv5jy7ijz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Aug 06, 2021 at 05:14:32PM +0000, Thorsten Glaser
<tg@mirbsd.de> wrote in
https://lists.nongnu.org/archive/html/lynx-dev/2021-08/msg00000.html:
> this affects both OpenSSL and Debian=E2=80=99s nonGNUtls builds:
>=20
> lynx https://user:pass@host/
>=20
> =E2=80=A6 will lead to=E2=80=A6
>=20
> SSL error:host(user:pass@host)!=3Dcert(CN<mainhost>:SAN<DNS=3Dhost>:SAN<D=
NS=3Dotherhost>
>=20
> =E2=80=A6 for OpenSSL lynx and=E2=80=A6
>=20
> SSL error:host(user:pass@host)!=3Dcert(CN<mainhost>)-Continue? (n)
>=20
> =E2=80=A6 for nonGNUtls lynx.
>=20
> Obviously, user:pass@ need to be stripped before comparing.

This is more severe than it initially looked like: Due to TLS Server
Name Indication (SNI) the hostname as parsed by Lynx (i.e with
"user:pass@" included) is sent in _clear_ text over the wire even
_before_ I can even said "n" for "no, don't continue to talk with this
server" in Lynx's prompt as shown above.

I was able to capture the password given on the commandline in traffic
of an TLS handshake using tcpdump and analysing it with Wireshark:

=46rom Wiresharks TLS dissector:

Server Name Indication extension
    Server Name list length: 28
    Server Name Type: host_name (0)
    Server Name length: 25
    Server Name: user:pass@www.example.org
                 ^^^^^^^^^^

=46rom Wiresharks "Follow TCP stream":

...........a
....jV.. ......../.......D.&....R.+.,.....	.
.../.0...............z.{./.5.A...
.....|.}.3.9.E.............2.8.D.......p............$."...user:pass@www.exa=
mple.org......#...
...
.................
..............................

(PCAPs available on request. Actually did the test with a local server
of mine. But it should be easy to reproduce, be it with any Linux
distribution.)

I did this test with Lynx from Debian Experimental (which has the
current Lynx upstream release 2.9.0dev.8) as well as with Lynx from
Debian 8 Jessie ELTS (which has Lynx 2.8.9dev.1) and both leak the
password via SNI. I though assume that older releases of Lynx are
probably also affected as well, at least if they or the according
crypto libraries support SNI.

But given that the symptoms Thorsten discovered stayed unreported for
quite some years, I assume that this use case is a rather seldom one.
Nevertheless only trying to use Lynx that way (and seeing it fail)
already leaks the used password.

IMHO this nevertheless needs a CVE-ID.

Cc'ing Debian Security Team as well as the OSS Security mailing list
for making them aware of this issue. I also updated the subject of
this thread to make it less ambigous on other mailing lists.

And I'm also Cc'ing the according Debian bug report which I created
for tracking this issue in Debian: https://bugs.debian.org/991971

		Kind regards, Axel
--=20
 ,''`.  |  Axel Beckert <abe@debian.org>, https://people.debian.org/~abe/
: :' :  |  Debian Developer, ftp.ch.debian.org Admin
`. `'   |  4096R: 2517 B724 C5F6 CA99 5329  6E61 2FF9 CD59 6126 16B5
  `-    |  1024D: F067 EA27 26B9 C3FC 1486  202E C09E 1D89 9593 0EDE

--jyzxj5biv5jy7ijz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERoyJeTtCmBnp12Ema+Zjx1o1yXUFAmEN5t8ACgkQa+Zjx1o1
yXXgJg/7B6WsjOoOzX17xe3oMTFihj8RT1UqBx5mfTjddUrJUX0CuOHCOBgxrlWf
fjZNnQGQhZBcrIg21z0ugvH6q2qyfBY5cf0MFuFlMw6mpxf0CcW3G9wbIPzuixWv
70tUB3Kb6R4ymC88IVRpP5a8ymvkenxwltJI3RHHIRbJTxVZxaLb36wKpUY97EXN
fyTTBkwmw4+DZhHTyEjuekyAap465y01q6UyvUdj/RGKtYLiHOgnkdgmLSlMTN8U
MKcWlyNx2Ic4WRzNwFWEIknhllBqYuHW2m0KTmBWrMu9UCs7YxWVus/Eh4EG4Ht0
KK8jPF/xZ6inF5IHWGcRjoHdxebp7bsWhLZxg/DU5azzsy1BYoj7zYYwiimyGra0
9mUEbJugZGuD/WlQtUGB4fX6a42VjSKuniy4ZCmJ+YIyexY+xrr7ASwaqTQnEasl
3MHfpGaqI1lEVDXsRE8uFTBhHcR1OMCeJK209jP937GmLutpm4Rx/uWItqE63cHi
09TV5u6TjAPySKvylIyShWa2MDq3XLCKSwB04odVE18pTdkdxADibPaOMkjJ6IgH
1GsucSfFqCI7ulOOtO/Mr4THBbA0p0RqV+r2Ff0flwgLPNMkeVEQjv1fLjeVFSDb
Bx97iFHa+OBQftV4U8THz5qkE50/YPUGhrK0TDzSZt97yXz1j5o=
=O7ZB
-----END PGP SIGNATURE-----

--jyzxj5biv5jy7ijz--
