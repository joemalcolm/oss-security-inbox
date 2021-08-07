X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6758" "Saturday" "7" "August" "2021" "22:13:18" "+0200" "Axel Beckert" "abe@debian.org" nil "149" "Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       abe@debian.o Aug  7  149/6758  " thread-indent "\"Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25776 invoked by uid 550); 7 Aug 2021 20:15:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24205 invoked from network); 7 Aug 2021 20:13:30 -0000
Date: Sat, 7 Aug 2021 22:13:18 +0200
From: Axel Beckert <abe@debian.org>
To: Salvatore Bonaccorso <carnil@debian.org>,
	oss-security@lists.openwall.com,
	Ariadne Conill <ariadne@dereferenced.org>
Cc: 991971@bugs.debian.org, lynx-dev@nongnu.org, security@debian.org
Message-ID: <20210807201317.ow27rxtpcdkgsxuj@sym.noone.org>
Mail-Followup-To: Salvatore Bonaccorso <carnil@debian.org>,
	oss-security@lists.openwall.com,
	Ariadne Conill <ariadne@dereferenced.org>, 991971@bugs.debian.org,
	lynx-dev@nongnu.org, security@debian.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="afsfq23y4uvtidjl"
Content-Disposition: inline
In-Reply-To: <YQ7OO1DgWDwm7vvy@eldamar.lan>
 <ab519dc0-7354-8e5-8855-ffea2534ea34@dereferenced.org>
X-Operating-System: Linux 4.9.0-16-amd64
X-Machine: sym2 x86_64
X-Editor: GNU Emacs 25.1.1
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAAAAAC3mUtaAAAABGdBTUEAALGPC/xhBQAAADh0RVh0U29mdHdhcmUAWFYgVmVyc2lvbiAzLjEwYSAgUmV2OiAxMi8yOS85NCAoUE5HIHBhdGNoIDEuMindFS5JAAACGElEQVQ4jXXQMU8UYRDG8f8shNjdDH4AbpfGDjAWlKiJiZ0ajL1aGCvsNCbGaCGG1koLaztaTYz6ATy+gOyehYmF3MxVxgg3FnDsHcTpJr/M+8w7Rf6nCsaVTTDqxbg9hoOXmw83H71+Eyfg4E1d7/Z2fG9rGkZbTQiu+K+3U/C+76lmkvAhJuDndnoAiftou4V84okAGclop4U/jYACZDTxrYWP0gkxVfAm/W//GLZpxIzwIN0Hn8dw0B+IWkZmQmRsj2HfhwokEklHfNCCiQCRgAR7YyhQVRVTCKCzP4Y5zBBE0t0zY3Q8oQaBqqAMlVEcgVQd9706zGirAFium8HXumlMIeMwqQCInju+2+uB6MRENupdpMt8pRlHZyuAW0F+Mb6XSIVqtxjD+iVmVqqystLEzFTGT92YqRaXpNT5eTVjeJhbALPnrTxLUZUKZsgxcNm64hAOYisT/xhF+oKTGU5RegtC3Rt6eEDi/QnIevdTx9Md2EMmYBRmCQR1026FCGQQJJExsRUqgkMGaWSbwYLnoO4T6VgpbQbdELPMBAHWWrhYrcxXnYgAsatPWygkFCBD4K62MAsOTqA6szYRPpsu6e6Y8mPiVrBMNuGIMrgwBUu4p2DgG1Ownu6hpuTv7hScefHAzAC/yRRw5U5pALMbJ4AUALvHSZhxgHPXTsHcdWD1GadAHr9avP+c0wCr7263Df8ASLwXWHWs+KIAAAAHdElNRQfYBQEBODPr
Organization: The Debian Project
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Re: Bug#991971: [Lynx-dev] bug in Lynx' SSL
 certificate validation -> leaks password in clear text via SNI (under some
 circumstances)

--afsfq23y4uvtidjl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Salvatore, Dear Ariadne,

Salvatore Bonaccorso wrote:
> > This is more severe than it initially looked like: Due to TLS Server
> > Name Indication (SNI) the hostname as parsed by Lynx (i.e with
> > "user:pass@" included) is sent in _clear_ text over the wire even
> > _before_ I can even said "n" for "no, don't continue to talk with this
> > server" in Lynx's prompt as shown above.
[=E2=80=A6]
> > IMHO this nevertheless needs a CVE-ID.
>
> MITRE did assign CVE-2021-38165.

Thanks Salvatore. I updated the debian/changelog entry for the next
upload as well as the title of the Debian bug report.

> MITRE raised the question: Does 2.9.0dev.9 (mentioned on the
> https://lynx.invisible-island.net/current/CHANGES.html page) fix the
> entire problem?

At this point a huge thanks to Thomas Dickey (Lynx upstream) for
providing a fixed version so quickly!

> https://www.openwall.com/lists/oss-security/2021/08/07/7 claims that
> credentials appear in the HTTP Host header to an http:// (i.e.,
> non-SSL) website.=20

Indeed and a good point.

Citing from Ariadne's mail:
> The issue itself is far more severe: HTParse() does not understand
> the authn part of the URI at all.
[=E2=80=A6]
> But it will also leak in the Host: header on unencrypted
> connections, and also probably SSL ones too.

But that looks to me as if Ariadne just refers to the code and hasn't
actually checked it by trying it. Nevertheless thanks to Ariadne for
having had a look and proposing a patch!

To be on the safe side I tested Lynx 2.9.0dev.6-2 as in Debian
Unstable/Testing (yet unpatched for CVE-2021-38165) and the (claimed
to be fixed) Lynx 2.9.0dev.9-1 as uploaded to Debian Experimental by
Andreas Metzler very recently (still only on incoming.debian.org,
fetched it from there). And I also tested Lynx 2.8.9dev1 from Debian 8
Jessie ELTS, the oldest compiled version of Lynx I could easily get my
hands on.

Neither of them leaked the user name or password in Host header of a
plain HTTP request. (So I assume that the versions inbetween don't do
that either.)

I also kinda would have expected that if this would have been the case
in the plain HTTP Host header, it would have been noticed way earlier
than with the TLS SNI extension, namely before the HTTPS era. Then
again, the much more obvious facet of this issue which Thorsten
initially found was reported way later than I'd expected, so maybe my
gut feeling is wrong here, too. :-)

So I also looked in the code (of the unpatched 2.9.0dev.8). The patch
for 2.9.0dev.9 added a function StripUserAuthents and added it only
into the HTTPS code path. So I looked for "strip" and "Strip" in the
HTTP code path and found this code in WWW/Library/Implementation/HTTP.c
(which also has the HTTPS code btw.):

   1353         if ((host =3D HTParse(anAnchor->address, "", PARSE_HOST)) !=
=3D NULL) {
-> 1354             strip_userid(host, TRUE);
-> 1355             HTBprintf(&command, "Host: %s%c%c", host, CR, LF);
   1356             FREE(host);
   1357         }

So from my point of view, this also invalidates that claim that the
HTTP Host header contains username or password. HTParse (as mentioned
by Ariadne occurs quite often in the code and its exact workings are
unclear to me from just looking at how it is called as it seems very
variable in what it parses and it appears before and after the above
mentioned code snippet for printing the Host header.

$ fgrep -n 'HTParse(' WWW/Library/Implementation/HTTP.c
891:        connect_host =3D HTParse(connect_url, "https", PARSE_HOST);
900:        connect_host =3D HTParse(connect_url, "snews", PARSE_HOST);
977:    ssl_host =3D HTParse(url, "", PARSE_HOST);
1319:   char *p1 =3D (HTParse(url, "", PARSE_PATH | PARSE_PUNCTUATION));
1371:   if ((host =3D HTParse(anAnchor->address, "", PARSE_HOST)) !=3D NULL=
) {
1564:       abspath =3D HTParse(arg, "", PARSE_PATH | PARSE_PUNCTUATION);
1565:       docname =3D HTParse(arg, "", PARSE_PATH);
1566:       hostname =3D HTParse(arg, "", PARSE_HOST);
1590:           host2 =3D HTParse(docname, "", PARSE_HOST);
1591:           path2 =3D HTParse(docname, "", PARSE_PATH | PARSE_PUNCTUATI=
ON);
2370:                       !HTAA_HaveUserinfo(HTParse(arg, "", PARSE_HOST)=
) &&

So from my point of view the user and password are stripped only once
(in 2.9.0dev8), namely directly before printing the Host header (in
both HTTP and HTTPS code paths). Which also seems the reason why it
got forgotten for SNI and why Thomas added a new, way less complex
function for stripping them of the SNI header. Calling strip_userid
again would extract the credentials again which likely isn't wanted.
(The same IMHO applies to the often called HTParse function.)

I assume that Ariadne just oversaw that call to strip_userid just
before printing the HTTP Host header when looking at the code. (And I
clearly had the advantage of having looked at the code _after_ the
official upstream patch has been published, so I clearly had an
advantage when looking at the code, too.)

I though didn't check the strip_userid function in detail as it's way
more complex than the rather simple StripUserAuthents function added
in 2.9.0dev.9. This likely because strip_userid does not only strip
those credentials, it also seems to extract them. And it clearly looks
for an "@" as delimiter. Together with the PCAPs of Lynx HTTP traffic
I analysed, I'm quite confident, that it's fine.

		Regards, Axel
--=20
 ,''`.  |  Axel Beckert <abe@debian.org>, https://people.debian.org/~abe/
: :' :  |  Debian Developer, ftp.ch.debian.org Admin
`. `'   |  4096R: 2517 B724 C5F6 CA99 5329  6E61 2FF9 CD59 6126 16B5
  `-    |  1024D: F067 EA27 26B9 C3FC 1486  202E C09E 1D89 9593 0EDE

--afsfq23y4uvtidjl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERoyJeTtCmBnp12Ema+Zjx1o1yXUFAmEO6UwACgkQa+Zjx1o1
yXVSgBAAkDf9zrxcH3FscqeFhDdG3V6iFhrts/vILfRtVSrZs+BbTRCzqIDXd8ts
zQSVrzIYW/2+MRT6HMTlRW9yejVBXWlgUdc2jyuybm0RwCj8BOglZFcquNcUq/rq
xsdZt6DBcSJ18+D1dQ4ViQu2FEqV+7fYqXDHN0g5v1vR3p0ag51csyBVuOKgKVR3
glVJxiav9RK7ZxMy8e4RwdYHu4cnVM25bQhaqdPwkZCIcCpQaHasWeMUCcJtCIVy
JO7oHOrPu7wuyaRAMLtCYvJ8Zfh3pJjeMYmJAJGXRk3bXKkiHNlA2moBnoShSPXm
e1LH/tW6usW8kMIkWhopbCDwYk8TzhqxY/BNbpkQ73zcRjTiI/BYq3yRX911znCk
a1B9tRwAkWIkfNGHskNhRSBgup2Rjanb07+8c6hTpWVGfjHNcjei8BQQQfn+7yPw
ft47hazhtIgb9zpjOBcSQnxNyEGejvMc0r93uXXToVB9XMxgQGABWkrRZki8hs8W
y8zjvXviSLcWN8L4ZqWfmtK2E5N9WmtcT4EnVzfS3cBfz4Rhdm0V+SyB5UmKhwqh
LpfLR8hNbz4msD5r78F0nRHonwaSbX51/97nw+OaxG4ubhScYVHmLSmiqb9YJP7N
k4nSui/3gs7b1SRk/HIIlMHyitmcJRxlrWV8XKjlS8OqXf5UUd8=
=ZnOA
-----END PGP SIGNATURE-----

--afsfq23y4uvtidjl--
