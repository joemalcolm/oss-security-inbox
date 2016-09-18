X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1224" "Sunday" "18" "September" "2016" "20:41:43" "+0800" "vul@724safe" "vul@724safe.com" "<7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>" "47" "[oss-security] CVE request - openjpeg null ptr dereference" nil nil nil "9" "2016091812:41:43" "[oss-security] CVE request - openjpeg null ptr dereference" (number mark "U       vul@724safe. Sep 18   47/1224  " thread-indent "\"[oss-security] CVE request - openjpeg null ptr dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1689 invoked by uid 550); 18 Sep 2016 12:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27899 invoked from network); 18 Sep 2016 12:42:30 -0000
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.1313384|-1;FP=0|0|0|0|0|-1|-1|-1;HT=e02c03304;MF=vul@724safe.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.6zQIJUh_1474202530;
To: oss-security@lists.openwall.com
From: vul@724safe <vul@724safe.com>
Message-ID: <7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>
Date: Sun, 18 Sep 2016 20:41:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------5630E02E4AA0037D034850D6"
Subject: [oss-security] CVE request - openjpeg null ptr dereference

--------------5630E02E4AA0037D034850D6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

# Vulnerability
openjpeg null ptr dereference in convert.c:1331

# Version
2.1.1  ( http://www.openjpeg.org/ )

# Address Sanitizer Output
ASAN:SIGSEGV
=================================================================
==7358==ERROR: AddressSanitizer: SEGV on unknown address 0x00000000 (pc
0x0815d204 bp 0xff846938 sp 0xff846380 T0)
    #0 0x815d203 in skip_white
/home/starlab/fuzzing/openjpeg/src/bin/jp2/convert.c:1331
    #1 0x8135d81 in main
/home/starlab/fuzzing/openjpeg/src/bin/jp2/opj_compress.c:1723
    #2 0xf7343636 in __libc_start_main ??:?
    #3 0x807a31b in _start ??:?

# PoC
See poc.ppm

# Analysis
In convert.c:1483 and convert.c:1485, variable s is uncheck after
skip_int is called.
A null ptr will be passed to skip_int again and will cause a null ptr
dereference.

# Report Timeline
2016-09-16: FB3F15 of STARLAB discovered this issue
2016-09-18:Patch released

# Credit
FB3F15 of STARLAB

# PoC
https://github.com/STARLABSEC/pocs/raw/master/openjpeg-nullptr-github-issue-842.ppm

# External link
https://github.com/uclouvain/openjpeg/issues/843



--------------5630E02E4AA0037D034850D6--
