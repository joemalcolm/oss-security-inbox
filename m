X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["960" "Monday" "10" "April" "2017" "07:03:25" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<457875.000636221-sendEmail@localhost>" "38" "[oss-security] CVE-2017-7592: libtiff: left shift" "^Date:" nil nil "4" "2017041007:03:25" "[oss-security] CVE-2017-7592: libtiff: left shift" (number mark "        ago@gentoo.o Apr 10   38/960   " thread-indent "\"[oss-security] CVE-2017-7592: libtiff: left shift\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7785 invoked by uid 550); 10 Apr 2017 07:04:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7650 invoked from network); 10 Apr 2017 07:03:45 -0000
Message-ID: <457875.000636221-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-979895.548037351"
Date: Mon, 10 Apr 2017 07:03:25 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7592: libtiff: left shift
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-979895.548037351
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

http://bugzilla.maptools.org/show_bug.cgi?id=2658 :

In tif_getimage.c, in function putagreytile, there is a shift of unsigned char
by 24:
*(pp+1) << 24.

Since there is no cast, *(pp+1) is treated as int, so
UndefinedBehaviorSanitizer says:
runtime error: left shift of 134 by 24 places cannot be represented in type
'int'

Maybe we could have something like:

*cp++ = BWmap[*pp][0] & ((uint32)*(pp+1) << 24 | ~A1);

###########

Fixed per

2017-01-11 Even Rouault <even.rouault at spatialys.com>

        * libtiff/tif_getimage.c: add explicit uint32 cast in putagreytile to
        avoid UndefinedBehaviorSanitizer warning.
        Patch by Nicolás Peña.
        Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2658

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-979895.548037351--

