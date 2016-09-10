X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["264" "Saturday" "10" "September" "2016" "21:10:31" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2787791.31AdioJtTb@arcadia>" "11" "[oss-security] libav: out-of-bounds stack read" nil nil nil "9" "2016091019:10:31" "[oss-security] libav: out-of-bounds stack read" (number mark "U       ago@gentoo.o Sep 10   11/264   " thread-indent "\"[oss-security] libav: out-of-bounds stack read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31918 invoked by uid 550); 10 Sep 2016 19:07:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31890 invoked from network); 10 Sep 2016 19:07:51 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 10 Sep 2016 21:10:31 +0200
Message-ID: <2787791.31AdioJtTb@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libav: out-of-bounds stack read

Hello,

I'd like to share the details of a stack-buffer overflow in libav:
https://blogs.gentoo.org/ago/2016/08/20/libav-stack-based-buffer-overflow-in-aac_sync-aac_parser-c/


If you think it is suitable for an identifier, please assign one.
Thanks

-- 
Agostino
