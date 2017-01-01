X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1105" "Sunday" "1" "January" "2017" "16:53:34" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<7032124.quzkmsXj2i@arcadia>" "46" "[oss-security] libtiff: assertion failure in readSeparateTilesIntoBuffer (tiffcp.c)" nil nil nil "1" "2017010115:53:34" "[oss-security] libtiff: assertion failure in readSeparateTilesIntoBuffer (tiffcp.c)" (number mark "U       ago@gentoo.o Jan  1   46/1105  " thread-indent "\"[oss-security] libtiff: assertion failure in readSeparateTilesIntoBuffer (tiffcp.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7776 invoked by uid 550); 1 Jan 2017 15:52:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7541 invoked from network); 1 Jan 2017 15:52:04 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 01 Jan 2017 16:53:34 +0100
Message-ID: <7032124.quzkmsXj2i@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libtiff: assertion failure in readSeparateTilesIntoBuffer (tiffcp.c)

Description:
Libtiff is a software that provides support for the Tag Image File Format 
(TIFF), a widely used format for storing image data.

A crafted tiff file revealed an assertion failure.

The complete output:

# tiffcp -i $FILE /tmp/foo
tiffcp: /tmp/portage/media-
libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffcp.c:1390:
int readSeparateTilesIntoBuffer(TIFF *, uint8 *, uint32, uint32, tsample_t):
Assertion `bps % 8 == 0' failed.

Affected version:
4.0.7

Fixed version:
N/A

Commit fix:
https://github.com/vadz/libtiff/commit/7ff9652da2eec4c65279dcbc7e55c0418e87bbc8

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00072-libtiff-assert-readSeparateTilesIntoBuffer

Timeline:
2016-11-23: bug discovered and reported to upstream
2016-12-03: upstream released a patch
2017-01-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/01/libtiff-assertion-failure-in-readseparatetilesintobuffer-tiffcp-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
