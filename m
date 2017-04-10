X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["983" "Monday" "10" "April" "2017" "07:06:05" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<498371.501078026-sendEmail@localhost>" "34" "[oss-security] CVE-2017-7594: libtiff: Direct leak in tif_ojpeg.c" nil nil nil "4" "2017041007:06:05" "[oss-security] CVE-2017-7594: libtiff: Direct leak in tif_ojpeg.c" (number mark "U       ago@gentoo.o Apr 10   34/983   " thread-indent "\"[oss-security] CVE-2017-7594: libtiff: Direct leak in tif_ojpeg.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24303 invoked by uid 550); 10 Apr 2017 07:06:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24222 invoked from network); 10 Apr 2017 07:06:23 -0000
Message-ID: <498371.501078026-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:06:05 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-410788.674214022"
Subject: [oss-security] CVE-2017-7594: libtiff: Direct leak in tif_ojpeg.c

------MIME delimiter for sendEmail-410788.674214022
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

http://bugzilla.maptools.org/show_bug.cgi?id=2659 :

In tif_ojpeg.c, in OJPEGReadHeaderInfoSecTablesDcTable, we have
rb=_TIFFmalloc(ra). After, values for rb are filled out. Then there is an if
(p!=q) return 0, which goes before the line sp->dctable[m]=rb;

Therefore, clearly rb is leaking every time the if (p!=q) is entered, since
memory is allocated but it is not even assigned anywhere. Our fix:

https://pdfium-review.googlesource.com/c/2176/

##################

Patch applied per

2017-01-12 Even Rouault <even.rouault at spatialys.com>

        * libtiff/tif_ojpeg.c: fix leak in OJPEGReadHeaderInfoSecTablesAcTable
        when read fails.
        Patch by Nicolás Peña.
        Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2659

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-410788.674214022--

