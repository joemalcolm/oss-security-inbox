X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3791" "Monday" "10" "April" "2017" "07:16:00" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<861383.127371909-sendEmail@localhost>" "141" "[oss-security] libtiff: multiple UBSAN crashes" nil nil nil "4" "2017041007:16:00" "[oss-security] libtiff: multiple UBSAN crashes" (number mark "U       ago@gentoo.o Apr 10  141/3791  " thread-indent "\"[oss-security] libtiff: multiple UBSAN crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22261 invoked by uid 550); 10 Apr 2017 07:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22232 invoked from network); 10 Apr 2017 07:16:20 -0000
Message-ID: <861383.127371909-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:16:00 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-42276.0407245768"
Subject: [oss-security] libtiff: multiple UBSAN crashes

------MIME delimiter for sendEmail-42276.0407245768
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
Libtiff is a software that provides support for the Tag Image File Format (TIFF), a widely used format for storing image data.

A fuzz with the undefined behavior sanitizer revealed some crashes.

# tiffcp -i $FILE /tmp/foo
runtime error: value 5.84589e+199 is outside the range of representable values
of type 'float'
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/3144e57770c1e4d26520d8abee750f8ac8b75490
Reproducer:
https://github.com/asarubbo/poc/blob/master/00113-libtiff-outside-float
CVE:
CVE-2017-7596

##################################################

# tiffcp -i $FILE /tmp/foo
tif_dirread.c:2409:12: runtime error: value -4.779e+161 is outside the range of
representable values of type 'float'
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/3144e57770c1e4d26520d8abee750f8ac8b75490
Reproducer:
https://github.com/asarubbo/poc/blob/master/00114-libtiff-outside-float-tif_dirread
CVE:
CVE-2017-7597

##################################################

# tiffcp -i $FILE /tmp/foo
tif_dirread.c:2878:24: runtime error: division by zero
tif_dirread.c:2906:33: runtime error: division by zero
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/3cfd62d77c2a7e147a05bd678524c345fa9c2bb8
Reproducer:
https://github.com/asarubbo/poc/blob/master/00115-libtiff-fpe-tif_dirread
CVE:
CVE-2017-7598

##################################################

# tiffcp -i $FILE /tmp/foo
runtime error: value 65280 is outside the range of representable values of type 'short'
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/3144e57770c1e4d26520d8abee750f8ac8b75490
Reproducer:
https://github.com/asarubbo/poc/blob/master/00117-libtiff-outside-short-tif_dirwrite
CVE:
CVE-2017-7599

##################################################

# tiffcp -i $FILE /tmp/foo
runtime error: value -115 is outside the range of representable values of type 'unsigned char'
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/3144e57770c1e4d26520d8abee750f8ac8b75490
Reproducer:
https://github.com/asarubbo/poc/blob/master/00118-libtiff-outside-unsigned-char-tif_dirwrite
CVE:
CVE-2017-7600

##################################################

# tiffcp -i $FILE /tmp/foo
runtime error: shift exponent 136 is too large for 64-bit type 'long'
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/0a76a8c765c7b8327c59646284fa78c3c27e5490
Reproducer:
https://github.com/asarubbo/poc/blob/master/00119-libtiff-shift-long-tif_jpeg
CVE:
CVE-2017-7601

##################################################

#ctiffcp -i $FILE /tmp/foo
runtime error: signed integer overflow: 9223372036452122640 + 85899345928
cannot be represented in type 'long'
Affected version:
4.0.7
Fixed version:
N/A
Commit fix:
https://github.com/vadz/libtiff/commit/66e7bd59520996740e4df5495a830b42fae48bc4
Reproducer:
https://github.com/asarubbo/poc/blob/master/00121-libtiff-signintoverflow-tif_read
CVE:
CVE-2017-7602

##################################################

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-01-01: bugs discovered and reported to upstream
2017-01-11: upstream released a patch
2017-04-01: blog post about the issue
2017-04-09: CVE assigned

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/01/libtiff-multiple-ubsan-crashes

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-42276.0407245768--

