X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3456" "Friday" "12" "February" "2016" "11:04:14" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTz=fkOBg1O+kxrSjmK3Z9ALie7UrboKtEb5cSCrvPc5w@mail.gmail.com>" "86" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" "^Date:" nil nil "2" "2016021214:04:14" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" (number mark "        gustavo.grie Feb 12   86/3456  " thread-indent "\"[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11\"\n") "<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" ("<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15757 invoked by uid 550); 12 Feb 2016 14:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15728 invoked from network); 12 Feb 2016 14:04:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=zvBNnu6SjrdBn5gz1Ngy8ZfA0IiBBGPx4kJudCNrXno=;
        b=jzWKic4PnncfKp/yQB3JWw2o6d3sVynN9/EqsrVQoTKRqfUIyWygKW0nVbYUyq3lO/
         RudgZC1idbzDja89zcKRawpG8jUxxpO4fFRXtUHCa3KT5OG8/9inX4g0xEf9mRGGdt5w
         nr1kpX3p8+auwQSeiR2FJL7UpC72an3mqC/c3yeL44naINzlYtEq/WmWqQF1Pgi0QcDr
         ohwg8axrXEI0WCe3bDnV78OnMMWMS2AyW5fBSNf3CXKWAm7mibG8o3e02v2zp1GVkFzj
         h/IBC/26IQUgwZS8yhKOE5qWTfItIHeZ2g7rvG0Autu/vk8dcO2Sol6gPoJO07+mx1XU
         e6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=zvBNnu6SjrdBn5gz1Ngy8ZfA0IiBBGPx4kJudCNrXno=;
        b=hWEoCmlY6MhsUU5HHPayhfe9ImikcptJkpvSuODkNRCeGyi7nhz8QbZh0qikqgRLcc
         HpLUvoVG/0iIDpNtaGG4eX4yG/8YexV0jMs7mbQJnYKz6+PFxpp6PJtg3XKUXjZ4ECbb
         mIt7i1fzlfjTV5nBB/FcNwQ477627ZIyyYqcM1f1Y7vyjk1eHLGjU15yrR2/wCAesfJp
         1UBD20jckiyEOIrwym0jlZJgHG4l7FPaSzscak3Y6eVmvpP8aIbPNFtesYh5T18i/rIW
         8ChZKMRYHPwYxUdSEq0jDO728jIw3EcGR9/5dKw0zPMYOEIiXXDDmka2QhHtEq3v+UZW
         aUig==
X-Gm-Message-State: AG10YOQPJIHhTgQiddAaaSUqOqeU4yFeTFFfCH86O6YDoc42wQn3FikLhhSDlT9AHluL+3JZbREvivQHImdBGQ==
MIME-Version: 1.0
X-Received: by 10.25.28.195 with SMTP id c186mr625755lfc.22.1455285854907;
 Fri, 12 Feb 2016 06:04:14 -0800 (PST)
In-Reply-To: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
References: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
Message-ID: <CACn5sdTz=fkOBg1O+kxrSjmK3Z9ALie7UrboKtEb5cSCrvPc5w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114023c06db5b8052b932496
Date: Fri, 12 Feb 2016 11:04:14 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: out-of-bounds write with cpio 2.11
To: oss-security@lists.openwall.com

--001a114023c06db5b8052b932496
Content-Type: text/plain; charset=UTF-8

A patch is available here:

https://lists.gnu.org/archive/html/bug-cpio/2016-01/msg00005.html

2016-01-19 13:45 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Hello,
>
> An out-of-bounds write in cpio 2.11 was found in the parsing of cpio files
> (other version are probably affected).  Find attached a test case to
> reproduce it. The ASAN report is here:
>
> =================================================================
> ==5480==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x60200000edd0 at pc 0x41f187 bp 0x7fffffffdc50 sp 0x7fffffffdc48
> WRITE of size 2 at 0x60200000edd0 thread T0
>     #0 0x41f186 in cpio_safer_name_suffix
> /home/g/Codigo/cpio-2.11+dfsg/src/util.c:1392
>     #1 0x40b3d7 in process_copy_in
> /home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1391
>     #2 0x416754 in main /home/g/Codigo/cpio-2.11+dfsg/src/main.c:739
>     #3 0x7ffff6b5eec4 in __libc_start_main
> (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
>     #4 0x403408 (/home/g/Codigo/cpio-2.11+dfsg/src/cpio+0x403408)
>
> 0x60200000edd1 is located 0 bytes to the right of 1-byte region
> [0x60200000edd0,0x60200000edd1)
> allocated by thread T0 here:
>     #0 0x7ffff6f567ef in __interceptor_malloc
> (/usr/lib/x86_64-linux-gnu/libasan.so.1+0x547ef)
>     #1 0x440f3e in xmalloc /home/g/Codigo/cpio-2.11+dfsg/gnu/xmalloc.c:47
>     #2 0x409c74 in read_in_new_ascii
> /home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1166
>     #3 0x408a26 in read_in_header
> /home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1043
>     #4 0x40b354 in process_copy_in
> /home/g/Codigo/cpio-2.11+dfsg/src/copyin.c:1361
>     #5 0x416754 in main /home/g/Codigo/cpio-2.11+dfsg/src/main.c:739
>     #6 0x7ffff6b5eec4 in __libc_start_main
> (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
>
> SUMMARY: AddressSanitizer: heap-buffer-overflow
> /home/g/Codigo/cpio-2.11+dfsg/src/util.c:1392 cpio_safer_name_suffix
> Shadow bytes around the buggy address:
>   0x0c047fff9d60: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c047fff9d70: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c047fff9d80: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c047fff9d90: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c047fff9da0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
> =>0x0c047fff9db0: fa fa fa fa fa fa fa fa fa fa[01]fa fa fa 06 fa
>   0x0c047fff9dc0: fa fa 05 fa fa fa 00 04 fa fa 00 04 fa fa 00 04
>   0x0c047fff9dd0: fa fa 00 04 fa fa 00 04 fa fa 00 04 fa fa 00 04
>   0x0c047fff9de0: fa fa 00 04 fa fa 00 04 fa fa 00 04 fa fa 00 04
>   0x0c047fff9df0: fa fa 00 04 fa fa 00 04 fa fa 00 04 fa fa fd fa
>   0x0c047fff9e00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
> Shadow byte legend (one shadow byte represents 8 application bytes):
>   Addressable:           00
>   Partially addressable: 01 02 03 04 05 06 07
>   Heap left redzone:       fa
>   Heap right redzone:      fb
>   Freed heap region:       fd
>   Stack left redzone:      f1
>   Stack mid redzone:       f2
>   Stack right redzone:     f3
>   Stack partial redzone:   f4
>   Stack after return:      f5
>   Stack use after scope:   f8
>   Global redzone:          f9
>   Global init order:       f6
>   Poisoned by user:        f7
>   Contiguous container OOB:fc
>   ASan internal:           fe
> ==5480==ABORTING
>
>
> This issue was found using QuickFuzz.
>
> Regards,
> Gus.
>
>

--001a114023c06db5b8052b932496--
