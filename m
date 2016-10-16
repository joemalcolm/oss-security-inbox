X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2291" "Sunday" "16" "October" "2016" "12:41:15" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1491121.JZs8W73v97@arcadia>" "60" "Re: [oss-security] Fuzzing jasper" "^Date:" nil nil "10" "2016101610:41:15" "[oss-security] Fuzzing jasper" (number mark "        ago@gentoo.o Oct 16   60/2291  " thread-indent "\"Re: [oss-security] Fuzzing jasper\"\n") "<1528713.C8CqGc87r5@arcadia>" ("<1528713.C8CqGc87r5@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16161 invoked by uid 550); 16 Oct 2016 10:40:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16141 invoked from network); 16 Oct 2016 10:40:58 -0000
Message-ID: <1491121.JZs8W73v97@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.20; x86_64; ; )
In-Reply-To: <1528713.C8CqGc87r5@arcadia>
References: <1528713.C8CqGc87r5@arcadia>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Date: Sun, 16 Oct 2016 12:41:15 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fuzzing jasper
To: oss-security@lists.openwall.com

Hello all,

I would like to inform people that the jasper development is alive on github 
since few days, I filed the bugs and some was fixed.

Below the link to my blogs for each issue which contains the commit fix and 
or/the status.


On Tuesday 23 August 2016 20:40:27 Agostino Sarubbo wrote:
> Hello all,
> 
> I fuzzed jasper and it revealed some crashes,
> we know that jasper has no more release(s) since a lot of time, so there are
> some unfixed vulnerabilities.
> Based on what I said, I don't know if any of the following crashes have been
> reported in the past.
> 
> I know that Jasper clearly state about its capability on the BMP format, so
> if you think that something is suitable for an identifier, please assign
> one. Thanks.
> 
> NOTE: The command used in all cases was: imginfo $CRAFTED_IMAGE

> SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-libs/jasper-1.900.1-
> r9/work/jasper-1.900.1/src/libjasper/bmp/bmp_dec.c:383:5 in bmp_getdata
https://blogs.gentoo.org/ago/2016/10/16/jasper-two-null-pointer-dereference-in-bmp_getdata-bmp_dec-c/

> SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-libs/jasper-1.900.1-
> r9/work/jasper-1.900.1/src/libjasper/bmp/bmp_dec.c:385:5 in bmp_getdata
https://blogs.gentoo.org/ago/2016/10/16/jasper-two-null-pointer-dereference-in-bmp_getdata-bmp_dec-c/


> SUMMARY: AddressSanitizer: FPE /tmp/portage/media-libs/jasper-1.900.1-
> r9/work/jasper-1.900.1/src/libjasper/jpc/jpc_dec.c:1195:17 in
> jpc_dec_process_siz
https://blogs.gentoo.org/ago/2016/10/16/jasper-two-divide-by-zero-in-jpc_dec_process_siz-jpc_dec-c/


> SUMMARY: AddressSanitizer: FPE /tmp/portage/media-libs/jasper-1.900.1-
> r9/work/jasper-1.900.1/src/libjasper/jpc/jpc_dec.c:1197:18 in
> jpc_dec_process_siz
https://blogs.gentoo.org/ago/2016/10/16/jasper-two-divide-by-zero-in-jpc_dec_process_siz-jpc_dec-c/


> SUMMARY: AddressSanitizer: double-free /var/tmp/temp/portage/sys-
> devel/llvm-3.8.0-r2/work/llvm-3.8.0.src/projects/compiler-
> rt/lib/asan/asan_malloc_linux.cc:38 in free
https://blogs.gentoo.org/ago/2016/10/16/jasper-double-free-in-mem_close-jas_stream-c/


SUMMARY:
The two SEGV are patched and they aren't in any release
The two FPE are patches and they are in 1.900.4
The double-free is unfixed.


-- 
Agostino Sarubbo
Gentoo Linux Developer
