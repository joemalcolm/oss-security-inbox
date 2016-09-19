X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1944" "Monday" "19" "September" "2016" "12:59:40" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2145849.9YTcpQNJZe@willoughby>" "50" "Re: [oss-security] Libarchive/bsdtar: multiple crashes" "^Date:" nil nil "9" "2016091910:59:40" "[oss-security] Libarchive/bsdtar: multiple crashes" (number mark "        ago@gentoo.o Sep 19   50/1944  " thread-indent "\"Re: [oss-security] Libarchive/bsdtar: multiple crashes\"\n") "<30086816.X7GymaXB0v@willoughby>" ("<30086816.X7GymaXB0v@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24326 invoked by uid 550); 19 Sep 2016 11:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24302 invoked from network); 19 Sep 2016 10:59:59 -0000
Message-ID: <2145849.9YTcpQNJZe@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <30086816.X7GymaXB0v@willoughby>
References: <30086816.X7GymaXB0v@willoughby>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2068040.f69BK3B2NB"
Content-Transfer-Encoding: 7Bit
Date: Mon, 19 Sep 2016 12:59:40 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Libarchive/bsdtar: multiple crashes
To: oss-security@lists.openwall.com

--nextPart2068040.f69BK3B2NB
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Thursday 15 September 2016 17:52:52 Agostino Sarubbo wrote:
> Hello all.
> 
> I'd like to make people aware of the following crashes in 
libarchive/bsdtar 
> found by fuzzing (all issues are public on github):
> 
> The most dangerous, an out of bounds stack write (which is also fixed 
> upstream):
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-stack-based-buffer
> -overflow-in-bsdtar_expand_char-util-c/ 
> 
> 
> The following are buffer over read of 1 (all are unfixed upstream ATM):
> 
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-> overflow-in-detect_form-archive_read_support_format_mtree-c/ 
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer
> -overflow-in-read_header-archive_read_support_format_7zip-c/
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-memory-corruption
> unknown-crash-in-bid_entry-archive_read_support_format_mtree-c/
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer
> -overflow-in-bid_entry-archive_read_support_format_mtree-c/
> 
> As stated in the posts, the two latest bug could be the same, but I 
didn't 
> have an upstream response about, so I posted both stacktrace to 
better
> track  the issues.
> 
> 
> The following are use-after-free (all are unfixed upstream ATM):
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-> bid_entry-archive_read_support_format_mtree-c/
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in
> -detect_form-archive_read_support_format_mtree-c/
> 
> As stated in the posts, they could be the same.
> I didn't have an upstream response too for those.

All issues mentioned in the previous posts, are now fixed in git.
I updated all posts with the git commit.

--
Agostino

--nextPart2068040.f69BK3B2NB--

