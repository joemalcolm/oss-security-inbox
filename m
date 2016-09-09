X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["713" "Friday" "9" "September" "2016" "16:29:51" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2068016.NGJ2REXo3s@willoughby>" "20" "[oss-security] ettercap: etterlog: multiple crashes" nil nil nil "9" "2016090914:29:51" "[oss-security] ettercap: etterlog: multiple crashes" (number mark "U       ago@gentoo.o Sep  9   20/713   " thread-indent "\"[oss-security] ettercap: etterlog: multiple crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32571 invoked by uid 550); 9 Sep 2016 14:30:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32542 invoked from network); 9 Sep 2016 14:30:08 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Fri, 09 Sep 2016 16:29:51 +0200
Message-ID: <2068016.NGJ2REXo3s@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] ettercap: etterlog: multiple crashes

Hello,

etterlog which is part off ettercap, crashes when try to reads malformed data.

Basically, the tool should read what you capture with YOUR ettercap, but since 
ettercap is one of the valid tools for MITM, there are dozens of blog post 
about how to use it, so there could be posts where malicious users make 
available crafted datafile to show something.

Details:
https://blogs.gentoo.org/ago/2016/09/06/ettercap-etterlog-multiple-three-heap-based-buffer-overflow-el_profiles-c/

https://blogs.gentoo.org/ago/2016/09/09/ettercap-etterlog-null-pointer-dereference-in-fingerprint_search-ec_fingerprint-c/


If you think that something is suitable for an identifier, please assign one.
Thanks.

--
Agostino
