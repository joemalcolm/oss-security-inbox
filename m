X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Wednesday" "1" "November" "2017" "09:59:42" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1711010952290.14662@scrappy.simplesystems.org>" "32" "Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks" nil nil nil "11" "2017110114:59:42" "[oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks" (number mark "U       bfriesen@sim Nov  1   32/1244  " thread-indent "\"Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks\"\n") "<tencent_C577451864B1690107062CD83581D6BE5708@qq.com>" ("<tencent_C577451864B1690107062CD83581D6BE5708@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10026 invoked by uid 550); 1 Nov 2017 14:59:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9997 invoked from network); 1 Nov 2017 14:59:55 -0000
Date: Wed, 1 Nov 2017 09:59:42 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: oss-security <oss-security@lists.openwall.com>
In-Reply-To: <tencent_C577451864B1690107062CD83581D6BE5708@qq.com>
Message-ID: <alpine.GSO.2.20.1711010952290.14662@scrappy.simplesystems.org>
References: <tencent_C577451864B1690107062CD83581D6BE5708@qq.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 01 Nov 2017 09:59:43 -0500 (CDT)
Subject: Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow;
 CVE-2017-16232: LibTIFF 4.0.8 memory leaks

On Wed, 1 Nov 2017, ???? wrote:
>
>> [Suggested description]
>> LibTIFF 4.0.8 has multiple memory leak vulnerabilities, which allow
>> attackers to cause a denial of service (memory consumption), as demonstrated
>> by tif_open.c, tif_lzw.c, and tif_aux.c
>>
>> ------------------------------------------
>>
>> [Additional Information]
>> /tiff2bw ../../../../libtiff_4.0.8_afl/2bw_output/crashes/poc.tif 222.tif

I am not seeing any memory leak vulnerability.  I do see that tiff2bw 
made no attempt to release any memory at all (not strictly required 
for a utility since memory is released when it quits).  I have 
modified the code in the development CVS version to release memory to 
satisfy memory checkers.

>
> Use CVE-2017-16232.

This is a memory-based DOS issue within tiff2bw itself (not directly 
inside libtiff).  TIFF files using LZW compression can achieve a very 
high compression ratio so it can be difficult to predict if a file's 
pixel dimensions are bogus or not.  Valid files also pose a DOS 
opportunity.  There are no arbitrary limits imposed within tiff2bw.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
