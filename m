X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1925" "Monday" "10" "April" "2017" "07:19:35" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<599292.645088525-sendEmail@localhost>" "76" "[oss-security] libaacplus: signed integer overflow, left shift and assertion failure" nil nil nil "4" "2017041007:19:35" "[oss-security] libaacplus: signed integer overflow, left shift and assertion failure" (number mark "U       ago@gentoo.o Apr 10   76/1925  " thread-indent "\"[oss-security] libaacplus: signed integer overflow, left shift and assertion failure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3177 invoked by uid 550); 10 Apr 2017 07:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3151 invoked from network); 10 Apr 2017 07:19:52 -0000
Message-ID: <599292.645088525-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:19:35 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-722168.466615589"
Subject: [oss-security] libaacplus: signed integer overflow, left shift and assertion failure

------MIME delimiter for sendEmail-722168.466615589
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libaacplus is a HE-AAC+ v2 library, based on the reference implementation.

While fuzzing it I found some crashes. Upstream was poked on 2017-03-12, but no response from him.

# aacplusenc $FILE out.aac 24000 s
au_channel.h:31:91: runtime error: signed integer overflow: 2147483647 + 8 cannot be represented in type 'int'
Affected version:
2.0.2
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00254-libaacplus-signedintoverflow
CVE:
CVE-2017-7603

##############################################

# aacplusenc $FILE out.aac 24000 s
au_channel.h:31:83: runtime error: left shift of 241 by 24 places cannot be represented in type 'int'
Affected version:
2.0.2
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00255-libaacplus-leftshift
CVE:
CVE-2017-7604

##############################################

# aacplusenc $FILE out.aac 24000 s
aacplusenc: aacplusenc.c:67: aacplusEncHandle aacplusEncOpen(unsigned long, unsigned int, unsigned long *, unsigned long *): Assertion `numChannels <= MAX_CHANNELS' failed.
Affected version:
2.0.2
Fixed version:
N/A
Commit fix:
N/A
Reproducer:
https://github.com/asarubbo/poc/blob/master/00256-libaacplus-assertion-failure
CVE:
CVE-2017-7605

##############################################

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-03-12: bug discovered and poked upstream about
2017-04-01: blog post about the issue
2017-04-09: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/01/libaacplus-signed-integer-overflow-left-shift-and-assertion-failure

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-722168.466615589--

