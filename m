X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1207" "Saturday" "19" "November" "2016" "17:18:26" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1975740.FIEDfIgEBD@arcadia>" "49" "[oss-security] imagemagick: null pointer must never be null (tiff.c)" nil nil nil "11" "2016111916:18:26" "[oss-security] imagemagick: null pointer must never be null (tiff.c)" (number mark "U       ago@gentoo.o Nov 19   49/1207  " thread-indent "\"[oss-security] imagemagick: null pointer must never be null (tiff.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14275 invoked by uid 550); 19 Nov 2016 16:17:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14249 invoked from network); 19 Nov 2016 16:17:26 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sat, 19 Nov 2016 17:18:26 +0100
Message-ID: <1975740.FIEDfIgEBD@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] imagemagick: null pointer must never be null (tiff.c)

If suitable for a CVE please assign one. Thanks.

Description:
imagemagick is a software suite to create, edit, compose, or convert bitmap 
images.

A fuzz on an updated version with the undefined behavior sanitizer enabled, 
revealed a null pointer which is declared to never be null.

The complete UBSan output:

# identify $FILE
coders/tiff.c:655:39: runtime error: null pointer passed as argument 2, which 
is declared to never be null
MagickCore/string_.h:76:23: note: nonnull attribute specified here

Affected version:
7.0.3.6

Fixed version:
7.0.3.7

Commit fix:
https://github.com/ImageMagick/ImageMagick/commit/b61d35eaccc0a7ddeff8a1c3abfcd0a43ccf210b

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00049-imagemagick-pointernerverbenull

Timeline:
2016-11-09: bug discovered and reported to upstream
2016-11-09: upstream released a patch
2016-11-15: upstream released 7.0.3.7
2016-11-19: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/19/imagemagick-null-pointer-must-never-be-null-tiff-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
