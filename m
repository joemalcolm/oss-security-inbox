X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3164" "Friday" "7" "April" "2017" "07:49:10" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<915244.595936628-sendEmail@localhost>" "51" "[oss-security] CVE-2017-7578: libming: heap overflow in parser.c (Incomplete fix for CVE-2016-9831)" nil nil nil "4" "2017040707:49:10" "[oss-security] CVE-2017-7578: libming: heap overflow in parser.c (Incomplete fix for CVE-2016-9831)" (number mark "U       ago@gentoo.o Apr  7   51/3164  " thread-indent "\"[oss-security] CVE-2017-7578: libming: heap overflow in parser.c (Incomplete fix for CVE-2016-9831)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24185 invoked by uid 550); 7 Apr 2017 07:49:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24165 invoked from network); 7 Apr 2017 07:49:29 -0000
Message-ID: <915244.595936628-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 7 Apr 2017 07:49:10 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-889913.021194847"
Subject: [oss-security] CVE-2017-7578: libming: heap overflow in parser.c (Incomplete fix for CVE-2016-9831)

------MIME delimiter for sendEmail-889913.021194847
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello,

Marcel Böhme, fuzzing the master version of libming, discovered that the fix for CVE-2016-9831 was incomplete:

$ util/listswf libming1.swf
read.c:109:14: runtime error: shift exponent -1 is negative
read.c:110:20: runtime error: left shift of 1 by 31 places cannot be represented in type 'int'
read.c:110:16: runtime error: signed integer overflow: 1389485020 - -2147483648 cannot be represented in type 'int'
205 gradients in SWF_MORPHGRADiENT, expected a max of 8parser.c:786:40: runtime error: index 9 out of bounds for type 'SWF_MORPHGRADIENTRECORD [8]'
203 gradients in SWF_MORPHGRADiENT, expected a max of 8=================================================================
==179946==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x62e00000b298 at pc 0x0000005b1be8 bp 0x7ffc849e8990 sp 0x7ffc849e8988
WRITE of size 1 at 0x62e00000b298 thread T0
    #0 0x5b1be7 in parseSWF_RGBA /home/ubuntu/subjects/build-asan/libming/util/parser.c:68:14
    #1 0x5f004a in parseSWF_MORPHGRADIENTRECORD /home/ubuntu/subjects/build-asan/libming/util/parser.c:771:3
    #2 0x5f0c1f in parseSWF_MORPHGRADIENT /home/ubuntu/subjects/build-asan/libming/util/parser.c:786:5
    #3 0x5ee190 in parseSWF_MORPHFILLSTYLE /home/ubuntu/subjects/build-asan/libming/util/parser.c:802:7
    #4 0x5f1bbe in parseSWF_MORPHFILLSTYLES /home/ubuntu/subjects/build-asan/libming/util/parser.c:829:7
    #5 0x634ee5 in parseSWF_DEFINEMORPHSHAPE /home/ubuntu/subjects/build-asan/libming/util/parser.c:2185:3
    #6 0x543923 in blockParse /home/ubuntu/subjects/build-asan/libming/util/blocktypes.c:145:14
    #7 0x52b2a9 in readMovie /home/ubuntu/subjects/build-asan/libming/util/main.c:265:11
    #8 0x528f82 in main /home/ubuntu/subjects/build-asan/libming/util/main.c:350:2
    #9 0x7ff0c21cdf44 in __libc_start_main /build/eglibc-oGUzwX/eglibc-2.19/csu/libc-start.c:287
    #10 0x4bdf5c in _start (/home/ubuntu/subjects/build-asan/libming/util/listswf+0x4bdf5c)

0x62e00000b298 is located 0 bytes to the right of 44696-byte region [0x62e000000400,0x62e00000b298)
allocated by thread T0 here:
    #0 0x4a0a40 in calloc (/home/ubuntu/subjects/build-asan/libming/util/listswf+0x4a0a40)
    #1 0x5f17b2 in parseSWF_MORPHFILLSTYLES /home/ubuntu/subjects/build-asan/libming/util/parser.c:826:28
    #2 0x634ee5 in parseSWF_DEFINEMORPHSHAPE /home/ubuntu/subjects/build-asan/libming/util/parser.c:2185:3
    #3 0x543923 in blockParse /home/ubuntu/subjects/build-asan/libming/util/blocktypes.c:145:14
    #4 0x52b2a9 in readMovie /home/ubuntu/subjects/build-asan/libming/util/main.c:265:11
    #5 0x528f82 in main /home/ubuntu/subjects/build-asan/libming/util/main.c:350:2
    #6 0x7ff0c21cdf44 in __libc_start_main /build/eglibc-oGUzwX/eglibc-2.19/csu/libc-start.c:287

SUMMARY: AddressSanitizer: heap-buffer-overflow /home/ubuntu/subjects/build-asan/libming/util/parser.c:68 parseSWF_RGBA

Reference:
https://github.com/libming/libming/issues/68

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-889913.021194847--

