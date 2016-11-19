X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1372" "Saturday" "19" "November" "2016" "15:47:14" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2140036.SkJE16ZSb9@arcadia>" "51" "[oss-security] jasper: signed integer overflow in jas_image.c" nil nil nil "11" "2016111914:47:14" "[oss-security] jasper: signed integer overflow in jas_image.c" (number mark "U       ago@gentoo.o Nov 19   51/1372  " thread-indent "\"[oss-security] jasper: signed integer overflow in jas_image.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7237 invoked by uid 550); 19 Nov 2016 14:46:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7217 invoked from network); 19 Nov 2016 14:46:13 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sat, 19 Nov 2016 15:47:14 +0100
Message-ID: <2140036.SkJE16ZSb9@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: signed integer overflow in jas_image.c

If suitable for a CVE please assign one. Thanks.

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

The undefined behavior sanitizer shows a signed integer overflow in 
jas_image.c
As you can see, the commit which fixes the issue is not a fix itself for the 
signed integer overflow, but changed a bit how, in jasper, the things work.

The complete UBSan output:

# imginfo -f $FILE
/tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/base/jas_image.c:162:49: 
runtime error: signed integer overflow: 8543608947741818625 * 15 cannot be 
represented in type 'long'

Affected version:
1.900.17

Fixed version:
1.900.25

Commit fix:
https://github.com/mdadams/jasper/commit/d42b2388f7f8e0332c846675133acea151fc557a

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00020-jasper-signedintoverflow-jas_image_c

Timeline:
2016-10-29: bug discovered and reported to upstream
2016-11-12: upstream released a patch and 1.900.25
2016-11-19: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/19/jasper-signed-integer-overflow-in-jas_image-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
