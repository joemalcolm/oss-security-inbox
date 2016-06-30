X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Thursday" "30" "June" "2016" "06:40:38" "+0000" "ncl@cock.li" "ncl@cock.li" "<5774BEE6.3090203@cock.li>" "21" "Re: [oss-security] Re: CVE request: Heap-based buffer overflow in LibTIFF when using the PixarLog compression format" nil nil nil "6" "2016063006:40:38" "[oss-security] Re: CVE request: Heap-based buffer overflow in LibTIFF when using the PixarLog compression format" (number mark "U       ncl@cock.li  Jun 30   21/834   " thread-indent "\"Re: [oss-security] Re: CVE request: Heap-based buffer overflow in LibTIFF when using the PixarLog compression format\"\n") "<20160629142913.D220C6C05C7@smtpvmsrv1.mitre.org>" ("<20160629142913.D220C6C05C7@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5659 invoked by uid 550); 30 Jun 2016 06:42:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5390 invoked from network); 30 Jun 2016 06:41:10 -0000
To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <20160629142913.D220C6C05C7@smtpvmsrv1.mitre.org>
From: "ncl@cock.li" <ncl@cock.li>
Message-ID: <5774BEE6.3090203@cock.li>
Date: Thu, 30 Jun 2016 06:40:38 +0000
MIME-Version: 1.0
In-Reply-To: <20160629142913.D220C6C05C7@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE request: Heap-based buffer overflow in
 LibTIFF when using the PixarLog compression format

cve-assign@mitre.org:
>> heap-based buffer overflow in
>> LibTIFF in the file libtiff/tif_pixarlog.c. The vulnerability allows an
>> attacker to control the size of the allocated heap-buffer while
>> independently controlling the data to be written to the buffer with no
>> restrictions on the size of the written data.
> 
>> revision 1.44
>> date: 2016-06-28 17:12:19 +0200; author: erouault; commitid: 2SqWSFG5a8Ewffcz;
> 
>> * libtiff/tif_pixarlog.c: fix potential buffer write overrun in
>> PixarLogDecode() on corrupted/unexpected images (reported by Mathias
>> Svensson)
> 
> Use CVE-2016-5875.

I think this is a duplicate with CVE-2016-5320 and CVE-2016-5314.

CVE-2016-5875 (buffer overrun in PixarLogDecode()) is CVE-2016-5314
(PixarLogDecode() out-of-bound writes) which causes CVE-2016-5320
(rgb2ycbcr command execution).
