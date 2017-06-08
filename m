X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3147" "Thursday" "8" "June" "2017" "10:00:57" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<8490d99d-bb3f-a827-4c22-74a0d22244a4@oracle.com>" "94" "[oss-security] Re: [FD] libcroco multiple vulnerabilities" "^Cc:" nil nil "6" "2017060817:00:57" "[oss-security] Re: [FD] libcroco multiple vulnerabilities" (number mark "U       alan.coopers Jun  8   94/3147  " thread-indent "\"[oss-security] Re: [FD] libcroco multiple vulnerabilities\"\n") "<50f7b717.f5b.15c809f2452.Coremail.qflb.wu@dbappsecurity.com.cn>" ("<50f7b717.f5b.15c809f2452.Coremail.qflb.wu@dbappsecurity.com.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24360 invoked by uid 550); 8 Jun 2017 17:01:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24328 invoked from network); 8 Jun 2017 17:01:28 -0000
References: <50f7b717.f5b.15c809f2452.Coremail.qflb.wu@dbappsecurity.com.cn>
Message-ID: <8490d99d-bb3f-a827-4c22-74a0d22244a4@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <50f7b717.f5b.15c809f2452.Coremail.qflb.wu@dbappsecurity.com.cn>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Cc: oss-security@lists.openwall.com
Date: Thu, 8 Jun 2017 10:00:57 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [FD] libcroco multiple vulnerabilities
To: "qflb.wu" <qflb.wu@dbappsecurity.com.cn>, fulldisclosure@seclists.org

These appear to be reported to the maintainers as:

https://bugzilla.gnome.org/show_bug.cgi?id=782647
https://bugzilla.gnome.org/show_bug.cgi?id=782649

Please include info about the upstream bugs when possible as it helps others
track when fixes are available.

	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc

On 06/ 6/17 08:35 PM, qflb.wu wrote:
> libcroco multiple vulnerabilities
> ================
> Author : qflb.wu
> ===============
> 
> 
> Introduction:
> =============
> Libcroco is a standalone css2 parsing and manipulation library.
> The parser provides a low level event driven SAC like api and a css object model like api.
> Libcroco provides a CSS2 selection engine and an experimental xml/css rendering engine.
> 
> 
> Affected version:
> =====
> 0.6.12
> 
> 
> Vulnerability Description:
> ==========================
> 1.
> the cr_tknzr_parse_comment function in cr-tknzr.c in libcroco 0.6.12 can cause a denial of service (memory allocation error) via a crafted CSS file.
> 
> 
> ./csslint-0.6 --dump-location libcroco_0_6_12_memory_allocation_error.css
> 
> 
> ==21841==ERROR: AddressSanitizer failed to allocate 0x20002000 (536879104) bytes of LargeMmapAllocator: 12
> ...
> ==21841==AddressSanitizer CHECK failed: /build/buildd/llvm-toolchain-3.4-3.4/projects/compiler-rt/lib/sanitizer_common/sanitizer_posix.cc:68 "(("unable to mmap" && 0)) != (0)" (0x0, 0x0)
>      ...
>      #10 0x7fd78c2fcb4d in cr_tknzr_parse_comment /home/a/Downloads/libcroco-0.6.12/src/cr-tknzr.c:462
>      #11 0x7fd78c2fcb4d in cr_tknzr_get_next_token /home/a/Downloads/libcroco-0.6.12/src/cr-tknzr.c:2218
>      #12 0x7fd78c356f6e in cr_parser_try_to_skip_spaces_and_comments /home/a/Downloads/libcroco-0.6.12/src/cr-parser.c:634
>      #13 0x7fd78c368a43 in cr_parser_parse_stylesheet /home/a/Downloads/libcroco-0.6.12/src/cr-parser.c:2538
>      #14 0x7fd78c368a43 in cr_parser_parse /home/a/Downloads/libcroco-0.6.12/src/cr-parser.c:4381
>      #15 0x480a8e in sac_parse_and_display_locations /home/a/Downloads/libcroco-0.6.12/csslint/csslint.c:960
>      #16 0x480a8e in main /home/a/Downloads/libcroco-0.6.12/csslint/csslint.c:1001
>      #17 0x7fd78b397f44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
>      #18 0x47c95c in _start (/home/a/Downloads/libcroco-0.6.12/csslint/.libs/lt-csslint-0.6+0x47c95c)
> 
> 
>      Reproducer:
>      libcroco_0_6_12_memory_allocation_error.css
>      CVE:
>      CVE-2017-8834
> 
> 
> 2.
> The cr_parser_parse_selector_core function in cr-parser.c in libcroco 0.6.12 can cause a denial of service(infinite loop and CPU consumption) via a crafted CSS file.
> 
> 
> ./csslint-0.6 --dump-location libcroco_0_6_12_infinite_loop.css
> 
> 
> Reproducer:
> libcroco_0_6_12_infinite_loop.css
> CVE:
> CVE-2017-8871
> 
> 
> ===============================
> 
> 
> qflb.wu () dbappsecurity com cn
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> _______________________________________________
> Sent through the Full Disclosure mailing list
> https://nmap.org/mailman/listinfo/fulldisclosure
> Web Archives & RSS: http://seclists.org/fulldisclosure/
> 


