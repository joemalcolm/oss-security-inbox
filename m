X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["532" "Monday" "6" "February" "2017" "12:32:21" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<5243964.BbMhzSCKag@blackgate>" "20" "[oss-security] mupdf: heap-based buffer overflow in fz_subsample_pixmap" nil nil nil "2" "2017020611:32:21" "[oss-security] mupdf: heap-based buffer overflow in fz_subsample_pixmap" (number mark "U       ago@gentoo.o Feb  6   20/532   " thread-indent "\"[oss-security] mupdf: heap-based buffer overflow in fz_subsample_pixmap\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22128 invoked by uid 550); 6 Feb 2017 11:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22105 invoked from network); 6 Feb 2017 11:32:39 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 06 Feb 2017 12:32:21 +0100
Message-ID: <5243964.BbMhzSCKag@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mupdf: heap-based buffer overflow in fz_subsample_pixmap

Hello,

there in an heap overflow in fz_subsample_pixmap.

The bug was discovered by Kamil Frankowicz which said to have tested it 
against the current git head.
The same testcase does not crash the current stable 1.10a, but I can confirm 
(with a round of fuzzing on 1.10a) that stable is affected.

No fix atm.

Details:
https://bugs.ghostscript.com/show_bug.cgi?id=697515

Reproducer for 1.10a:
https://github.com/asarubbo/poc/blob/master/00148-mupdf-heapoverflow-fz_subsample_pixmap

-- 
Agostino Sarubbo
Gentoo Linux Developer
