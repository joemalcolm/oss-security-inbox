X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1117" "Saturday" "19" "November" "2016" "16:14:27" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1681368.mmIYxGAJKb@arcadia>" "47" "[oss-security] libdwarf: negation overflow in dwarf_leb.c" nil nil nil "11" "2016111915:14:27" "[oss-security] libdwarf: negation overflow in dwarf_leb.c" (number mark "U       ago@gentoo.o Nov 19   47/1117  " thread-indent "\"[oss-security] libdwarf: negation overflow in dwarf_leb.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32521 invoked by uid 550); 19 Nov 2016 15:13:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32503 invoked from network); 19 Nov 2016 15:13:26 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sat, 19 Nov 2016 16:14:27 +0100
Message-ID: <1681368.mmIYxGAJKb@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libdwarf: negation overflow in dwarf_leb.c

If suitable for a CVE please assign one. Thanks.

Description:
libdwarf is a library to consume and produce DWARF debug information.

A fuzz with the Undefined Behavior Sanitizer shows a negation that cannot be 
represented as long long.

The complete UBSan output:

# dwarfdump $FILE
dwarf_leb.c:306:19: runtime error: negation of -9223372036854775808 cannot be 
represented in type 'Dwarf_Signed' (aka 'long long'); cast to an unsigned type 
to negate this value to itself

Affected version:
20161021

Fixed version:
N/A

Commit fix:
https://sourceforge.net/p/libdwarf/code/ci/4f19e1050cd8e9ddf2cb6caa061ff2fec4c9b5f9/#diff-5

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00050-libdwarf-negate-itself

Timeline:
2016-11-11: bug discovered and reported to upstream
2016-11-11: upstream released a patch
2016-11-19: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/19/libdwarf-negation-overflow-in-dwarf_leb-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
