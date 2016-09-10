X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["269" "Saturday" "10" "September" "2016" "17:03:53" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<6437795.J0nPW8acoZ@arcadia>" "11" "[oss-security] autotrace: out-of-bounds write" nil nil nil "9" "2016091015:03:53" "[oss-security] autotrace: out-of-bounds write" (number mark "U       ago@gentoo.o Sep 10   11/269   " thread-indent "\"[oss-security] autotrace: out-of-bounds write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28029 invoked by uid 550); 10 Sep 2016 15:01:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27994 invoked from network); 10 Sep 2016 15:01:12 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 10 Sep 2016 17:03:53 +0200
Message-ID: <6437795.J0nPW8acoZ@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] autotrace: out-of-bounds write

Hello,

with Address Sanitizer I found that each bmp you try to manage with autotrace 
causes an out-of-bounds write.

Details:
https://blogs.gentoo.org/ago/2016/09/10/autotrace-heap-based-buffer-overflow-in-pstoedit_suffix_table_init-output-pstoedit-c/


-- 
Agostino
