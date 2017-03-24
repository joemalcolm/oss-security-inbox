X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["620" "Friday" "24" "March" "2017" "10:50:19" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1566168.ji4fmdV5UO@blackgate>" "22" "Re: [oss-security] libpcre: two stack-based buffer overflow write in pcre32_copy_substring (pcre_get.c)" nil nil nil "3" "2017032409:50:19" "[oss-security] libpcre: two stack-based buffer overflow write in pcre32_copy_substring (pcre_get.c)" (number mark "U       ago@gentoo.o Mar 24   22/620   " thread-indent "\"Re: [oss-security] libpcre: two stack-based buffer overflow write in pcre32_copy_substring (pcre_get.c)\"\n") "<280519.226656423-sendEmail@localhost>" ("<280519.226656423-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27873 invoked by uid 550); 24 Mar 2017 09:50:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27855 invoked from network); 24 Mar 2017 09:50:35 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Fri, 24 Mar 2017 10:50:19 +0100
Message-ID: <1566168.ji4fmdV5UO@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.52-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <280519.226656423-sendEmail@localhost>
References: <280519.226656423-sendEmail@localhost>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] libpcre: two stack-based buffer overflow write in pcre32_copy_substring (pcre_get.c)

On Monday 20 March 2017 10:28:08 Agostino Sarubbo wrote:
> Permalink:
> https://blogs.gentoo.org/ago/2017/03/20/libpcre-two-stack-based-buffer-overf
> low-write-in-pcre32_copy_substring-pcre_get-c


> WRITE of size 4 at 0x7f58f32026a0 thread T0
>     #0 0x7f58f6f90a23 in pcre32_copy_substring
> /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_get.c:358:15
This is CVE-2017-7245


> WRITE of size 268 at 0x7f83734026a0 thread T0
> #1 0x7f8377118925 in
> pcre32_copy_substring
> /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_get.c:357:1
This is CVE-2017-7246


-- 
Agostino Sarubbo
Gentoo Linux Developer
