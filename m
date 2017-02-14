X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3172" "Tuesday" "14" "February" "2017" "11:55:00" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170214012459.GA11244@sin.redhat.com>" "78" "Re: [oss-security] Re: CVE request: XXE in Openpyxl" nil nil nil "2" "2017021401:25:00" "[oss-security] Re: CVE request: XXE in Openpyxl" (number mark "U       dmoppert@red Feb 14   78/3172  " thread-indent "\"Re: [oss-security] Re: CVE request: XXE in Openpyxl\"\n") "<20170213112557.381@usenet.piggo.com>" ("<20170207104854.331@usenet.piggo.com>" "<20170207235746.GA13577@sin.redhat.com>" "<20170213112557.381@usenet.piggo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23814 invoked by uid 550); 14 Feb 2017 01:25:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23789 invoked from network); 14 Feb 2017 01:25:16 -0000
Date: Tue, 14 Feb 2017 11:55:00 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170214012459.GA11244@sin.redhat.com>
References: <20170207104854.331@usenet.piggo.com>
 <20170207235746.GA13577@sin.redhat.com>
 <20170213112557.381@usenet.piggo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <20170213112557.381@usenet.piggo.com>
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 14 Feb 2017 01:25:05 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE request: XXE in Openpyxl

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Feb 13 2017, S=C3=A9bastien Delafond wrote:
> On 2017-02-07, Doran Moppert <dmoppert@redhat.com> wrote:
> > This is yet another instance of CVE-2016-9318.  As already observed
> > on the Debian tracker, disabling entity resolution altogether is
> > probably going to make openpyxl fail on well-formed Excel documents
> > using standard entities such as &lt;.
>=20
> we do not see this issue being technically the same thing as
> CVE-2016-9318. openpyxl shouldn't need to resolve *external* XML
> entities, and the initial reporter of the Debian bug tested that the
> upstream patch doesn't break reglar entities like "&lt"; and
> "&gt;". What do you think ?

My mistake - thanks for bringing this up!

It appears that resolve_entities=3DFalse (ie. options &=3D ~XML_PARSE_NOENT)
does *not* affect the expansion of predefined entities or character
entities.  See [1], [2] and parser.c + HTMLparser.c in libxml source.

1: https://www.xml.com/pub/a/98/08/xmlqna1.html
2: https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_refe=
rences

These flags *do* control the expansion of internal entities, but I
expect that most common protocols and file formats should not rely on
those - including Excel.  As long as openpyxl has no need to resolve
internal entities, nor perform DTD validation, CVE-2016-9318 is not
relevant and the proposed patch looks correct.


So yes, the original CVE request was valid and should go ahead:

> the Debian Security Team would like to request a CVE for an XML XEE
> discovered in Openpyxl by Marcin Ulikowski from F-Secure; Openpyxl
> resolves external entities by default:
>=20
>   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D854442
>   https://bitbucket.org/openpyxl/openpyxl/commits/3b4905f428e1

Also: https://bitbucket.org/openpyxl/openpyxl/issues/749


Sorry about muddying the water with misunderstanding(s).  The tricky
part of CVE-2016-9318 seems to be particular requirements of components
like xmlsec that want internal entity resolution without XXE, or DTD
validation without exposing the whole filesystem.

--=20
Doran Moppert
Red Hat Product Security

--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYolxrAAoJEGohqWcZR7qp5ZcP/iU30z0XaTgQ4uZkqEbUJKpE
FJMSB0OAUfyuHf2SCOOI3HyJYRSQ4U6jCVINJmosEXPbDpKwQ7dwKhMNGHACXtWz
68hswMti3cknNiCuqnUDNR+2lWEM9sYTsH3zyO/5bKwZBk9ZoNCxh19UnY57eURq
Vow9kMUYtZOQfVkTnV5UBaTTuIa5r2y2xyCiguuwhQSa7ykdrKlnFe3NFIlY4wcH
X263zUNaFQpyy0ANLR+AbMC1jaH6/kdYdjfAB9tiuEgfWcrBRAb8QMPJPpw4Dnk+
qy/Q0oRNtD958eju3bOBo2wmjZMUdTYLqfZyI+dU1icFHnmuvTEd1fevHGC97BPF
x8RECD3/BCHYT5oPuQkJtbCN0zrrQcgkSgnZdFu3I86n+ul+755NriiLLBMuc8ba
Nqp41GtD6EPalqJbUQxglNkRN/N3A7XB/0ffWZCW2bd0fASRd6YTlfTXH2P+EaF6
Oc+KsslxjCpIFCi78VzByIa9vr5iFrU/GeV7zqZkoMANZjxDUn4z9Y+GZMg0sMIk
9l2XNIISMSZjk2usb9dKwrTkyKmZV19khxA9hzD0G+4X94O17fFLpertI6nCewIl
bg55X3rmBrIjw19lyz81BMMQCihoMYdbRLN/Noy3CHZCJrpSIY/5eD7mNngqe/eT
jxl1Z50oYp3dEdd5XKbE
=fzY5
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--
