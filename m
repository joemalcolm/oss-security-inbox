X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2392" "Wednesday" "21" "December" "2016" "12:07:39" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20161221200739.GA5225@hunt>" "63" "Re: [oss-security] Curious about the security of my router fermwair." nil nil nil "12" "2016122120:07:39" "[oss-security] Curious about the security of my router fermwair." (number mark "U       seth.arnold@ Dec 21   63/2392  " thread-indent "\"Re: [oss-security] Curious about the security of my router fermwair.\"\n") "<513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>" ("<513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21741 invoked by uid 550); 21 Dec 2016 20:07:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21723 invoked from network); 21 Dec 2016 20:07:52 -0000
Date: Wed, 21 Dec 2016 12:07:39 -0800
From: Seth Arnold <seth.arnold@canonical.com>
To: tapper <lancett01@googlemail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20161221200739.GA5225@hunt>
Mail-Followup-To: tapper <lancett01@googlemail.com>,
	oss-security@lists.openwall.com
References: <513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline
In-Reply-To: <513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Curious about the security of my router fermwair.

--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 21, 2016 at 11:39:26AM +0000, tapper wrote:
> 	Hi my name is Jonathan. I don't know if this is the write place to ask
> about this but here gos.

It's not the usual use of this list but I suspect you won't upset many
people either.

> I would like to know if any one would like to have a poke around at the
> third party router firmware I use on my router called Gargoyle.

The first item I found in about one minute of inspection is that they
include an utterly ancient version of ffmpeg:

https://github.com/ericpaulbishop/gargoyle/blob/master/package/ffmpeg/Makefile#L10

PKG_NAME:=ffmpeg
PKG_VERSION:=2.4.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://ffmpeg.org/releases/
PKG_MD5SUM:=7e2819c71484ffba1ba1a91dd5285643

The 2.4 branch of ffmpeg ended with version 2.4.13 on 2016-02-02. Not
only are they nine point releases behind, they are also drastically
behind on shipping newer versions entirely. (The latest version upstream
is numbered 3.2.2. That's seven minor versions behind, too.) Granted,
new versions bring new bugs, but picking one point in time two years
ago and then never updating is trouble.

I didn't spot any security fixes for ffmpeg in the patches-generic or
patches-old directories, but perhaps they just weren't clearly labeled.

Another concerning point is the use of md5 to validate the download. While
use of md5 as a 'better crc32' is well established, most cryptographic
authorities are saying it's time to replace md5's replacement, sha-1.
They're two hash functions behind the times.

A full review would take far more time than I have to offer but the
initial impression is that it needs a serious refresh of its dependencies.

Thanks

--cWoXeonUoKmBZSoM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYWuELAAoJEPMhclmdjS6XsiYH/iaipMJq2slfZlUrzDgEFutR
0fO8uPiLpLPT92jd+yi3tREA/18l6oo9Inv+9Ck0XUa3itly1DGvlQec8zpiMNNq
IaoePKqQ0hUu7DQioD8kLtBOQohpR5tvTiDFZPc2Y82dFsx8WHHRR+hhI5HmL+gD
Un6hQoq9FQC1NstrF7elJ7i3GkN+cyO3w9VbsSq847qpx5XC2nzhAihZv5eCTjU5
sQVNZnBVjOX+qW/NUenQ8iYmBsZzH+60IXo0Pt0P+KmHY2yxSoJLGtrIVfYa/P0J
aiHA3Dk2pQwhHNgMa4H9DRQ6ULiROQ7XjeZ6Amtx06bd37xs4LS9MrtIwpf9Onc=
=2mG9
-----END PGP SIGNATURE-----

--cWoXeonUoKmBZSoM--
