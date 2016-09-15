X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1556" "Thursday" "15" "September" "2016" "17:52:52" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<30086816.X7GymaXB0v@willoughby>" "31" "[oss-security] Libarchive/bsdtar: multiple crashes" "^Date:" nil nil "9" "2016091515:52:52" "[oss-security] Libarchive/bsdtar: multiple crashes" (number mark "        ago@gentoo.o Sep 15   31/1556  " thread-indent "\"[oss-security] Libarchive/bsdtar: multiple crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32356 invoked by uid 550); 15 Sep 2016 15:53:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32188 invoked from network); 15 Sep 2016 15:53:10 -0000
Message-ID: <30086816.X7GymaXB0v@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Date: Thu, 15 Sep 2016 17:52:52 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Libarchive/bsdtar: multiple crashes
To: OSS Security List <oss-security@lists.openwall.com>

Hello all.

I'd like to make people aware of the following crashes in libarchive/bsdtar 
found by fuzzing (all issues are public on github):

The most dangerous, an out of bounds stack write (which is also fixed 
upstream):
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-stack-based-buffer-overflow-in-bsdtar_expand_char-util-c/ 


The following are buffer over read of 1 (all are unfixed upstream ATM):

https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-detect_form-archive_read_support_format_mtree-c/ 
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-read_header-archive_read_support_format_7zip-c/
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-memory-corruptionunknown-crash-in-bid_entry-archive_read_support_format_mtree-c/
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-bid_entry-archive_read_support_format_mtree-c/

As stated in the posts, the two latest bug could be the same, but I didn't 
have an upstream response about, so I posted both stacktrace to better track 
the issues.


The following are use-after-free (all are unfixed upstream ATM):
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-bid_entry-archive_read_support_format_mtree-c/
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-detect_form-archive_read_support_format_mtree-c/

As stated in the posts, they could be the same.
I didn't have an upstream response too for those.


Agostino
