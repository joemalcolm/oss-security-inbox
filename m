X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2821" "Monday" "16" "January" "2017" "11:56:08" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1817798.vB5Z0p8x99@blackgate>" "107" "[oss-security] jasper: multiple crashes with UBSAN" "^Date:" nil nil "1" "2017011610:56:08" "[oss-security] jasper: multiple crashes with UBSAN" (number mark "        ago@gentoo.o Jan 16  107/2821  " thread-indent "\"[oss-security] jasper: multiple crashes with UBSAN\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8010 invoked by uid 550); 16 Jan 2017 10:56:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7973 invoked from network); 16 Jan 2017 10:56:27 -0000
Message-ID: <1817798.vB5Z0p8x99@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Date: Mon, 16 Jan 2017 11:56:08 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] jasper: multiple crashes with UBSAN
To: oss-security@lists.openwall.com

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

With the undefined behavior sanitizer enabled, jasper crashes showing some 
left shift and some signed integer overflow.

Affected version / Tested on:
1.900.17
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00017-jasper-leftshift-jas_math_h
Relevant part of the stacktrace:

# imginfo -f $FILE
/tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/include/jasper/jas_math.h:156:11: 
runtime error: left shift of negative value -185

#################################################

Affected version / Tested on:
1.900.17
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00018-jasper-signedintoverflow-jpc_dec_c
Relevant part of the stacktrace:

# imginfo -f $FILE
/tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:1838:9: 
runtime error: signed integer overflow: -64356352 * 6359082673847140352 cannot 
be represented in type 'long'

#################################################

Affected version / Tested on:
1.900.17
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00019-jasper-leftshift-jpc_dec_c
Relevant part of the stacktrace:

# imginfo -f $FILE
/tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:1819:40: 
runtime error: shift exponent 117 is too large for 64-bit type 'jpc_fix_t' 
(aka 'long')

#################################################

Affected version / Tested on:
1.900.17
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00022-jasper-signedintoverflow-jpc_tsfb_c
Relevant part of the stacktrace:

# imginfo -f $FILE
/tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_tsfb.c:233:35: 
runtime error: signed integer overflow: 2013306369 + 251691968 cannot be 
represented in type 'int'

#################################################

Affected version / Tested on:
1.900.17
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00030-jasper-leftshift-jp2_dec_c
Relevant part of the stacktrace:

# imginfo -f $FILE
/tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jp2/jp2_dec.c:485:49: 
runtime error: left shift of negative value -26
Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2016-10-28: bug discovered and reported to upstream
2017-01-16: blog post about the issues

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
http://blogs.gentoo.org/ago/2017/01/16/jasper-multiple-crashes-with-ubsan/

--
Agostino
