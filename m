X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["302" "Monday" "6" "February" "2017" "12:24:17" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1834008.eG7uvS0ooA@blackgate>" "13" "[oss-security] mupdf: NULL pointer dereference in dodrawpage" nil nil nil "2" "2017020611:24:17" "[oss-security] mupdf: NULL pointer dereference in dodrawpage" (number mark "U       ago@gentoo.o Feb  6   13/302   " thread-indent "\"[oss-security] mupdf: NULL pointer dereference in dodrawpage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9452 invoked by uid 550); 6 Feb 2017 11:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9419 invoked from network); 6 Feb 2017 11:24:34 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 06 Feb 2017 12:24:17 +0100
Message-ID: <1834008.eG7uvS0ooA@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mupdf: NULL pointer dereference in dodrawpage

Hello,

A null pointer dereference discovered by Kamil Frankowicz was fixed in mupdf.

Commit fix:
http://git.ghostscript.com/?p=mupdf.git;a=commitdiff;h=40ac85bfb676bb4373bda4b18f9fd90268c9f1e9

Details:
https://bugs.ghostscript.com/show_bug.cgi?id=697514

-- 
Agostino Sarubbo
Gentoo Linux Developer
