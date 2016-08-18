X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["754" "Thursday" "18" "August" "2016" "10:47:56" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<73591310.lZD5iXrPXu@willoughby>" "27" "[oss-security] potrace: multiple crashes" nil nil nil "8" "2016081808:47:56" "[oss-security] potrace: multiple crashes" (number mark "U       ago@gentoo.o Aug 18   27/754   " thread-indent "\"[oss-security] potrace: multiple crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13596 invoked by uid 550); 18 Aug 2016 08:48:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13546 invoked from network); 18 Aug 2016 08:48:14 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 18 Aug 2016 10:47:56 +0200
Message-ID: <73591310.lZD5iXrPXu@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart113208889.ordN2cS08U"
Content-Transfer-Encoding: 7Bit
Subject: [oss-security] potrace: multiple crashes

--nextPart113208889.ordN2cS08U
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hello,

the past year I discovered and documented multiple crashes in potrace:

https://blogs.gentoo.org/ago/2016/08/08/potrace-multiple-three-null-pointer-dereference-in-bm_readbody_bmp-bitmap_io-c/

https://blogs.gentoo.org/ago/2016/08/08/potrace-divide-by-zero-in-bm_new-bitmap-h/

https://blogs.gentoo.org/ago/2016/08/08/potrace-multiplesix-heap-based-buffer-overflow-in-bm_readbody_bmp-bitmap_io-c/

It could be obvious but each crash comes up from a different crafted 
image.


If you think that something is suitable for an identifier, please assign it.
Thanks

-- 
Agostino Sarubbo
Gentoo Linux Developer

--nextPart113208889.ordN2cS08U--

