X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1069" "Wednesday" "9" "November" "2016" "15:50:38" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2147367.62QfxKV9DH@blackgate>" "44" "[oss-security] libming: listmp3: left shift in listmp3.c" nil nil nil "11" "2016110914:50:38" "[oss-security] libming: listmp3: left shift in listmp3.c" (number mark "U       ago@gentoo.o Nov  9   44/1069  " thread-indent "\"[oss-security] libming: listmp3: left shift in listmp3.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14240 invoked by uid 550); 9 Nov 2016 14:50:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14128 invoked from network); 9 Nov 2016 14:50:55 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Wed, 09 Nov 2016 15:50:38 +0100
Message-ID: <2147367.62QfxKV9DH@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.26-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libming: listmp3: left shift in listmp3.c

If it is suitable for a CVE please assign one. Thanks.

Description:
libming is a Flash (SWF) output library. It can be used from PHP, Perl, Ruby, 
Python, C, C++, Java, and probably more on the way..

A fuzzing revealed a left shift in listmp3. The bug does not reside in any 
shared object but if you have a web application that calls directly the 
listmp3 binary to parse untrusted mp3, then you are affected.

The complete UBSan output:

# listmp3 $FILE
listmp3.c:94:23: runtime error: left shift of negative value -1
listmp3.c:95:23: runtime error: left shift of negative value -1

Affected version:
0.4.7

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00046-libming-leftshift-listmp3_c

Timeline:
2016-08-13: bug discovered
2016-10-20: bug reported to upstream
2016-11-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/09/libming-listmp3-left-shift-in-listmp3-c
