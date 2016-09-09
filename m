X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1316" "Friday" "9" "September" "2016" "15:59:04" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1695997.I5q5FJauoq@willoughby>" "39" "Re: [oss-security] GraphicsMagick 1.3.25 fixes some security issues" nil nil nil "9" "2016090913:59:04" "[oss-security] GraphicsMagick 1.3.25 fixes some security issues" (number mark "U       ago@gentoo.o Sep  9   39/1316  " thread-indent "\"Re: [oss-security] GraphicsMagick 1.3.25 fixes some security issues\"\n") "<alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10196 invoked by uid 550); 9 Sep 2016 13:59:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10178 invoked from network); 9 Sep 2016 13:59:22 -0000
Message-ID: <1695997.I5q5FJauoq@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.20; x86_64; ; )
In-Reply-To: <alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1609062029590.6469@freddy.simplesystems.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2273483.libHqEvIZJ"
Content-Transfer-Encoding: 7Bit
Cc: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Date: Fri, 09 Sep 2016 15:59:04 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GraphicsMagick 1.3.25 fixes some security issues
To: oss-security@lists.openwall.com

--nextPart2273483.libHqEvIZJ
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tuesday 06 September 2016 20:50:23 Bob Friesenhahn wrote:
> 4. The TIFF reader had a bug pertaining to use of TIFFGetField() when=20
> a 'count' value is returned.  The bug caused a heap read overflow (due=20
> to using strlcpy() to copy a possibly unterminated string) which could=20
> allow an untrusted file to crash the software.


For who is interested, the details of the issue N=C2=B0 4 are documented he=
re:

https://blogs.gentoo.org/ago/2016/08/23/graphicsmagick-two-heap-based-buffe=
r-overflow-in-readtiffimage-tiff-c/[1]=20


The same block of code, which was rewritten because of the overflows,=20
contains also a null pointer access:

https://blogs.gentoo.org/ago/2016/09/07/graphicsmagick-null-pointer-derefer=
ence-in-magickstrlcpy-utility-c/[2]=20


Unfortunately this problem was not reproducible by Mr Friesenhahn, but=20
seems to be disappeared after the commit which fixed the overflows.

--
Agostino

--------
[1] https://blogs.gentoo.org/ago/2016/08/23/graphicsmagick-two-heap-based-b=
uffer-overflow-in-readtiffimage-tiff-c/
[2] https://blogs.gentoo.org/ago/2016/09/07/graphicsmagick-null-pointer-der=
eference-in-magickstrlcpy-utility-c/

--nextPart2273483.libHqEvIZJ--

