X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1460" "Friday" "22" "September" "2017" "06:57:48" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<577272.5132733-sendEmail@localhost>" "53" "[oss-security] graphicsmagick: assertion failure in pixel_cache.c" nil nil nil "9" "2017092206:57:48" "[oss-security] graphicsmagick: assertion failure in pixel_cache.c" (number mark "U       ago@gentoo.o Sep 22   53/1460  " thread-indent "\"[oss-security] graphicsmagick: assertion failure in pixel_cache.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26321 invoked by uid 550); 22 Sep 2017 06:58:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26252 invoked from network); 22 Sep 2017 06:58:05 -0000
Message-ID: <577272.5132733-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 22 Sep 2017 06:57:48 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-575472.060664655"
Subject: [oss-security] graphicsmagick: assertion failure in pixel_cache.c

------MIME delimiter for sendEmail-575472.060664655
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
graphicsmagick is a collection of tools and libraries for many image formats.

The complete output of the issue:

# gm convert $FILE null
gm: magick/pixel_cache.c:1089: const PixelPacket AcquireImagePixels(const Image , const long, const long, const unsigned long, const unsigned long, ExceptionInfo ): Assertion `image != (Image ) NULL' 
failed.

Affected version:
1.3.25, 1.3.26 and maybe past releases

Fixed version:
N/A

Commit fix:
http://hg.code.sf.net/p/graphicsmagick/code/rev/358608a46f0a

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14649

Reproducer:
https://github.com/asarubbo/poc/blob/master/00366-graphicsmagick_assertionfailure_pixel_cache_c

Timeline:
2017-08-12: bug discovered and reported to upstream privately
2017-08-16: bug reported to the public upstream bugtracker
2017-08-29: upstream released a fix
2017-09-19: blog post about the issue
2017-09-21: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/19/graphicsmagick-assertion-failure-in-pixel_cache-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-575472.060664655--

