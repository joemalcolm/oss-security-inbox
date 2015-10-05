X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Monday" "5" "October" "2015" "12:28:06" "+0200" "Andreas Stieger" "astieger@suse.com" "<561250B6.9070102@suse.com>" "50" "Re: [oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100510:28:06" "[oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" (number mark "U       astieger@sus Oct  5   50/1750  " thread-indent "\"Re: [oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1\"\n") "<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>" ("<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26339 invoked by uid 550); 5 Oct 2015 10:28:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26283 invoked from network); 5 Oct 2015 10:28:46 -0000
To: oss-security@lists.openwall.com
References: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <561250B6.9070102@suse.com>
Date: Mon, 5 Oct 2015 12:28:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="EBwVNg2DSuFCaODnBQTaP6wKud8Wh3rhs"
Subject: Re: [oss-security] CVE request: Heap overflow with a gif file in
 gdk-pixbuf < 2.32.1

--EBwVNg2DSuFCaODnBQTaP6wKud8Wh3rhs
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

On 10/01/2015 03:03 PM, Gustavo Grieco wrote:
> We found a heap overflow in the gdk-pixbuf implementation triggered by the
> scaling of gif file.These issues are only fixed in the recent release of
> gdk-pixbuf 2.32.1 but affects older versions (we tested it in a fully
> updated Ubuntu 14.04).
>
> These issues were found using QuickFuzz.

Could you please share you fuzzed sample?

Thanks,
Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton, =
HRB 21284 (AG N=C3=BCrnberg)



--EBwVNg2DSuFCaODnBQTaP6wKud8Wh3rhs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWElC2AAoJECzWqVXhWUVGILYQAJv8I7nDImwsL6zWF9HBz0qh
uf+6mlDvRd6tnPVd5SChkRMa+vGocMDKEpvPSqB3SIhUGWf/Q1vEL8KtKgkm3YcB
d6QMs37JYwSLIsn8YRvKzdQ1somD0Rs9ZN1TWzBgJjkd9ec87hLn0uN61THGbv/d
tNQsYYrj7jL3yq46UiRIBBJcgb8kc/AdBrdKRRPrgzVXggcHqqkc0lqVreNFULe2
AisLogxVVSZNnxSQ7eOUrXTyN4g87T+DcledWuWO1Eby198Lp5+CoZvSbrlp669U
xddT9Rc5KLFVW7jgk0euFU06UwVtN4wN0i2RGqVPAJn5bAR1LybUJdB6A6NbxSDx
vNkxB7KZnSt64YubAnK5Q+lXBnrO1sK99pjASRo25oVlhqjN0e4D4YBDqT/T5UQW
LGw8r4QEZnWG+IsmIwoPfgoX29Cih0z6YpT4i2X18a/7UPOjkhX14OIk6xAvQy2F
7mGo114CS7B2Ij57/1TKp9M3gd5RiEFumXHShpmWSsVjCzYt/vUXaTxPDG3s+Dj+
+/DjhQ00zsOocw/JyPJrvol+CcfPEt4tALWpTNUvUoLS19jot3gKOYAyXa6+sckm
6livQL3fUH3oxdkNGvddCEoteE8wTa21DKz4Ns1f+rLUMu6vgwDVNUfAAnnTm6/e
ptz0QaDwBcO5PF6uZHGU
=kQxA
-----END PGP SIGNATURE-----

--EBwVNg2DSuFCaODnBQTaP6wKud8Wh3rhs--
