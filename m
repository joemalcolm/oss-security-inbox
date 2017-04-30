X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1231" "Sunday" "30" "April" "2017" "09:11:39" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<987945.267788263-sendEmail@localhost>" "50" "[oss-security] imageworsener: two left shift" nil nil nil "4" "2017043009:11:39" "[oss-security] imageworsener: two left shift" (number mark "U       ago@gentoo.o Apr 30   50/1231  " thread-indent "\"[oss-security] imageworsener: two left shift\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10140 invoked by uid 550); 30 Apr 2017 09:12:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9810 invoked from network); 30 Apr 2017 09:11:57 -0000
Message-ID: <987945.267788263-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Sun, 30 Apr 2017 09:11:39 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-253533.920812519"
Subject: [oss-security] imageworsener: two left shift

------MIME delimiter for sendEmail-253533.920812519
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
imageworsener is a utility for image scaling and processing.

There are two left shift visible with UbSan enabled.

# imagew $FILE /tmp/out -outfmt bmp
src/imagew-util.c:415:68: runtime error: left shift of 255 by 24 places cannot be represented in type 'int'
src/imagew-bmp.c:427:10: runtime error: left shift of 1 by 31 places cannot be represented in type 'int'
Affected version:
1.3.0

Fixed version:
1.3.1

Commit fix:
https://github.com/jsummers/imageworsener/commit/a00183107d4b84bc8a714290e824ca9c68dac738

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-8326

Reproducer:
https://github.com/asarubbo/poc/blob/master/00271-imageworsener-leftshift

Timeline:
2017-04-13: bug discovered and reported to upstream
2017-04-22: upstream released a patch
2017-04-27: blog post about the issue
2017-04-29: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/27/imageworsener-two-left-shift/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-253533.920812519--

