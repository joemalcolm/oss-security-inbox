X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1334" "Monday" "10" "April" "2017" "07:22:46" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<662503.639093728-sendEmail@localhost>" "50" "[oss-security] imagemagick: undefined behavior in coders/rle.c" nil nil nil "4" "2017041007:22:46" "[oss-security] imagemagick: undefined behavior in coders/rle.c" (number mark "U       ago@gentoo.o Apr 10   50/1334  " thread-indent "\"[oss-security] imagemagick: undefined behavior in coders/rle.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14092 invoked by uid 550); 10 Apr 2017 07:23:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14063 invoked from network); 10 Apr 2017 07:23:05 -0000
Message-ID: <662503.639093728-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:22:46 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-992488.07744971"
Subject: [oss-security] imagemagick: undefined behavior in coders/rle.c

------MIME delimiter for sendEmail-992488.07744971
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
imagemagick is a software suite to create, edit, compose, or convert bitmap images.

A fuzz with the upstream security policy enabled, a quantum of 32 and the undefined behavior sanitizer discovered this bug.

# identify $FILE
coders/rle.c:274:18: runtime error: value 1.72801e+09 is outside the range of representable values of type 'unsigned char'                                                                     

Affected version:
7.0.5.4

Fixed version:
7.0.5.5 (not released atm)

Commit fix:
https://github.com/ImageMagick/ImageMagick/commit/b218117cad34d39b9ffb587b45c71c5a49b12bde

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7606

Reproducer:
https://github.com/asarubbo/poc/blob/master/00253-imagemagick-outside-unsigned-char

Timeline:
2017-03-31: bug discovered and reported to upstream
2017-03-31: upstream released a patch
2017-04-02: blog post about the issue
2017-04-09: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/02/imagemagick-undefined-behavior-in-codersrle-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-992488.07744971--

