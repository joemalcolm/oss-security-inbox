X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["788" "Monday" "10" "April" "2017" "07:04:59" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<489378.913628997-sendEmail@localhost>" "29" "[oss-security] CVE-2017-7593: libtiff: Potential unitialized-memory access from tif_rawdata" nil nil nil "4" "2017041007:04:59" "[oss-security] CVE-2017-7593: libtiff: Potential unitialized-memory access from tif_rawdata" (number mark "U       ago@gentoo.o Apr 10   29/788   " thread-indent "\"[oss-security] CVE-2017-7593: libtiff: Potential unitialized-memory access from tif_rawdata\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16179 invoked by uid 550); 10 Apr 2017 07:05:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16135 invoked from network); 10 Apr 2017 07:05:16 -0000
Message-ID: <489378.913628997-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:04:59 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-140903.147011162"
Subject: [oss-security] CVE-2017-7593: libtiff: Potential unitialized-memory access from tif_rawdata

------MIME delimiter for sendEmail-140903.147011162
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

http://bugzilla.maptools.org/show_bug.cgi?id=2651 :

It is possible to end up accessing un-intialized memory from tif_rawdata. A
potential fix can be seen at: https://pdfium-review.googlesource.com/c/2150/

#################

Fixed per 

2017-01-11 Even Rouault <even.rouault at spatialys.com>

        * libtiff/tiffio.h, tif_unix.c, tif_win32.c, tif_vms.c: add_TIFFcalloc()

        * libtiff/tif_read.c: TIFFReadBufferSetup(): use _TIFFcalloc() to zero
        initialize tif_rawdata.
        Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2651

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-140903.147011162--

