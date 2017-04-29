X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["509" "Saturday" "29" "April" "2017" "15:40:54" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<3404443.FfsTeelCPW@arcadia>" "11" "Re: [oss-security] mupdf: mujstest: stack-based buffer overflow in main (jstest_main.c)" nil nil nil "4" "2017042913:40:54" "[oss-security] mupdf: mujstest: stack-based buffer overflow in main (jstest_main.c)" (number mark "U       ago@gentoo.o Apr 29   11/509   " thread-indent "\"Re: [oss-security] mupdf: mujstest: stack-based buffer overflow in main (jstest_main.c)\"\n") "<3712113.HmbQZlNGGF@arcadia>" ("<3712113.HmbQZlNGGF@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5775 invoked by uid 550); 29 Apr 2017 13:41:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5757 invoked from network); 29 Apr 2017 13:41:11 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 29 Apr 2017 15:40:54 +0200
Message-ID: <3404443.FfsTeelCPW@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.52-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <3712113.HmbQZlNGGF@arcadia>
References: <3712113.HmbQZlNGGF@arcadia>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] mupdf: mujstest: stack-based buffer overflow in main (jstest_main.c)

On Saturday 18 February 2017 12:38:45 Agostino Sarubbo wrote:
> Permalink:
> https://blogs.gentoo.org/ago/2017/02/17/mupdf-mujstest-stack-based-buffer-ov
> erflow-in-main-jstest_main-c

Fixed by:
http://git.ghostscript.com/?p=user/sebras/mupdf.git;a=blobdiff;f=platform/x11/jstest_main.c;h=f158d9628ed0c0a84e37fe128277679e8334422a;hp=13c3a0a3ba3ff4aae29f6882d23740833c1d842f;hb=06a012a42c9884e3cd653e7826cff1ddec04eb6e;hpb=34e18d127a02146e3415b33c4b67389ce1ddb614

-- 
Agostino Sarubbo
Gentoo Linux Developer
