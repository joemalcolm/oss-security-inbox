X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5152" "Tuesday" "22" "August" "2017" "12:57:09" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<90a93b0c-f36a-7a69-03cb-2203b9167d68@oracle.com>" "116" "Re: [oss-security] CVE Request: Multiple security issues in OpenJPEG" nil nil nil "8" "2017082219:57:09" "[oss-security] CVE Request: Multiple security issues in OpenJPEG" (number mark "U       alan.coopers Aug 22  116/5152  " thread-indent "\"Re: [oss-security] CVE Request: Multiple security issues in OpenJPEG\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F7066F14D7@EXMBX-TJ002.tencent.com>" ("<1F2D4DA31CA62740BFF46830A0E6A4F7066F14D7@EXMBX-TJ002.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9332 invoked by uid 550); 22 Aug 2017 19:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9310 invoked from network); 22 Aug 2017 19:57:25 -0000
References: <1F2D4DA31CA62740BFF46830A0E6A4F7066F14D7@EXMBX-TJ002.tencent.com>
Message-ID: <90a93b0c-f36a-7a69-03cb-2203b9167d68@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F7066F14D7@EXMBX-TJ002.tencent.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Cc: cve-assign <cve-assign@mitre.org>
Date: Tue, 22 Aug 2017 12:57:09 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Multiple security issues in OpenJPEG
To: oss-security@lists.openwall.com,
        =?UTF-8?B?d2luc29ubGl1KOWImOenkSk=?=
 <winsonliu@tencent.com>

Most of these seem to be fixed now in OpenJPEG's recent 2.2.0 release.
Did CVE id's ever get assigned for them?

	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc

On 09/18/16 07:00 PM, winsonliu(刘科) wrote:
> Hi,
> 
> This is Ke Liu of Tencent's Xuanwu LAB. I reported some security issues to OpenJPEG some months ago. Could you please assign some CVE numbers for them? Thanks.
> 
> The memory issues may lead to code execution, other issues may simply lead to DoS problems.
> 
> BTW, proof-of-concept files for all issues were supplied. For more details, please click the issue links below.
> 
> 1. Out-of-Bounds Write in opj_mqc_byteout of mqc.c
> 
> An Out-of-Bounds Write issue can be triggered in function opj_mqc_byteout of mqc.c during executing opj_compress. This issue was caused by a malformed BMP file.
> 
> AddressSanitizer: heap-buffer-overflow, WRITE of size 1
> Report date: 2016/09/12
> Status: Not fixed
> Url: https://github.com/uclouvain/openjpeg/issues/835
> Root cause: not clear
> Patch: no patch supplied
> 
> 2. Out-of-Bounds Read in function bmp24toimage of convertbmp.c
> 
> An Out-of-Bounds Read issue was found in function bmp24toimage of convertbmp.c during executing opj_compress. The root cause of this issue was an Integer Overflow issue. This issue was caused by a malformed BMP file.
> 
> AddressSanitizer: heap-buffer-overflow, READ of size 1
> Report date: 2016/09/12
> Status: Not fixed
> Url: https://github.com/uclouvain/openjpeg/issues/833
> Root cause: integer overflow
> Patch: https://github.com/uclouvain/openjpeg/pull/834
> 
> 3. Null Pointer Access in function sycc422_to_rgb of color.c
> A null pointer access issue was found in function sycc422_to_rgb of color.c during executing opj_decompress. This issue was caused by a malformed J2K file.
> 
> AddressSanitizer: SEGV on unknown address 0x00000000
> Report date: 2016/06/28
> Status: Not fixed
> Url: https://github.com/uclouvain/openjpeg/issues/792
> Root cause: null pointer dereference
> Patch: easy to fix, check before accessing
> 
> 4. Null Pointer Access in function color_esycc_to_rgb of color.c
> A null pointer access issue was found in function color_esycc_to_rgb of color.c during executing opj_decompress. This issue was caused by a malformed J2K file.
> 
> AddressSanitizer: SEGV on unknown address 0x00000000
> Report date: 2016/05/25
> Status: Not fixed
> Url: https://github.com/uclouvain/openjpeg/issues/785
> Root cause: null pointer dereference
> Patch: easy to fix, check before accessing
> 
> 5. Null Pointer Access in function sycc444_to_rgb of color.c
> A null pointer access issue was found in function sycc444_to_rgb of color.c during executing opj_decompress. This issue was caused by a malformed J2K file.
> 
> AddressSanitizer: SEGV on unknown address 0x00000000
> Report date: 2016/05/25
> Status: Not fixed
> Url: https://github.com/uclouvain/openjpeg/issues/784
> Root cause: null pointer dereference
> Patch: easy to fix, check before accessing
> 
> 6. Null Pointer Access in function imagetopnm of convert.c
> A null pointer access issue was found in function imagetopnm of convert.c during executing opj_decompress. This issue was caused by a malformed J2K file.
> 
> AddressSanitizer: SEGV on unknown address 0x00000000
> Report date: 2016/05/06
> Status: Not fixed
> Url: https://github.com/uclouvain/openjpeg/issues/776
> Root cause: null pointer dereference
> Patch: easy to fix, check before accessing
> 
> 7. Multiple division-by-zero issues in function opj_pi_next_rpcl of pi.c
> Multiple division-by-zero issues were found in function opj_pi_next_rpcl of pi.c during executing opj_decompress. The issues were caused by malformed J2K files.
> 
> AddressSanitizer: SIGFPE, Arithmetic exception
> Report date: 2016/05/06
> Status: Not fixed
> Url1: https://github.com/uclouvain/openjpeg/issues/780
> Url2: https://github.com/uclouvain/openjpeg/issues/779
> Root cause: division-by-zero
> Patch: easy to fix, check before dividing
> 
> 8. Multiple division-by-zero issues in function opj_pi_next_pcrl of pi.c
> Multiple division-by-zero issues were found in function opj_pi_next_pcrl of pi.c during executing opj_decompress. The issues were caused by malformed J2K files.
> 
> AddressSanitizer: SIGFPE, Arithmetic exception
> Report date: 2016/05/06
> Status: Not fixed
> Url1: https://github.com/uclouvain/openjpeg/issues/777
> Url2: https://github.com/uclouvain/openjpeg/issues/778
> Root cause: division-by-zero
> Patch: easy to fix, check before dividing
> 
> 9. Multiple division-by-zero issues in function opj_pi_next_cprl of pi.c
> Multiple division-by-zero issues were found in function opj_pi_next_cprl of pi.c during executing opj_decompress. The issues were caused by malformed J2K files.
> 
> AddressSanitizer: SIGFPE, Arithmetic exception
> Report date: 2016/03/28
> Status: Not fixed
> Url1: https://github.com/uclouvain/openjpeg/issues/731
> Url2: https://github.com/uclouvain/openjpeg/issues/732
> Root cause: division-by-zero
> Patch: easy to fix, check before dividing
> 
> Regards,
> Ke
> Tencent's Xuanwu LAB
> 


