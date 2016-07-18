X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2277" "Monday" "18" "July" "2016" "10:38:22" "-0700" "akuster" "akuster@mvista.com" "<578D140E.1040206@mvista.com>" "53" "Re: [oss-security] CVE-2016-5321: libtiff 4.0.6 DumpModeDecode(): Ddos" nil nil nil "7" "2016071817:38:22" "[oss-security] CVE-2016-5321: libtiff 4.0.6 DumpModeDecode(): Ddos" (number mark "U       akuster@mvis Jul 18   53/2277  " thread-indent "\"Re: [oss-security] CVE-2016-5321: libtiff 4.0.6 DumpModeDecode(): Ddos\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0BB629A@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0BB629A@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30028 invoked by uid 550); 18 Jul 2016 17:38:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30007 invoked from network); 18 Jul 2016 17:38:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=g9SltnhHYok4hQGoQqJKWR2WaFFqrthCyfzu/4XUyhc=;
        b=zqu2hn2a6QLPYFD3puPtuA+fNZv3anepXsUMclcEbtdoSlbRVfdbChaDrRMZpD1CLD
         huu/8ve0U5x7E0ThaMxircefkrTVJP2YO3B00/iu3fs02d+1iAkfiwDOphiBImy8IWBX
         J3xjDphZKicLkDs1VFzV6wiamWDhNKF3wtVp0B2do+f/keR3uIqzPR/nTn2S/hoTEE4M
         FmSmRhgFEyV3Yuhq7sk1ZRKTb2sEwpNuR0ED0kShOS4oaldXBzW5k/qE6isVpekkLXB9
         VmdpMYhgebWH9b+sY7s39b/pr+pqSVhxoAVyomlRnj/y5rlqvvNAvfjQAOvhrF2oPBIm
         Mw4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=g9SltnhHYok4hQGoQqJKWR2WaFFqrthCyfzu/4XUyhc=;
        b=Zowsn9Uudzo42xr+vFypIT1TnJN8S7XHHyanYqLx5ZwAWEXBgWSekWWUTtUqYitgvK
         6d6GYE0MDw37dRLwZ+TCJiV0IU+Eoo+nIyQkYOjdzeqO1u/BDUL8DKT8AXH8iXeHDkpO
         9oDqVeB3rJeXjSsuSyC5Plt8TIqxKAQgvZmLqivuPrdiGGtYWTC+n3L8lnRkynnB6R+n
         PEsF7+0qiBIJRdJov0KtOYl2kdN/0Wrm05esBoeBQflwDeKNiPVFJXLC3cyOD3BtK6Xk
         MBUGoaquwallt9DLnfG2rcgqoU7anq5opPBzG6vYlMOGTFY3OCFF0BawnF4uGuh+ENyw
         b+YQ==
X-Gm-Message-State: ALyK8tL8lbXNcqvL2WEYyKQu7UYOFVEWERYg5AqW1Rtx/fAsKpaXjzbwbnjztWwIBO1ROgai
X-Received: by 10.98.200.142 with SMTP id i14mr48003792pfk.136.1468863505346;
        Mon, 18 Jul 2016 10:38:25 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <5EDB84F4B23F5B4DB6500A89258280E0BB629A@EX02.corp.qihoo.net>
From: akuster <akuster@mvista.com>
Message-ID: <578D140E.1040206@mvista.com>
Date: Mon, 18 Jul 2016 10:38:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0BB629A@EX02.corp.qihoo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2016-5321: libtiff 4.0.6 DumpModeDecode():
 Ddos


Hello,

If I am not mistaken, this maybe the fix for this CVE.

https://github.com/vadz/libtiff/commit/d9783e4a1476b6787a51c5ae9e9b3156527589f0

can someone confirm

regards,
Armin

On 06/14/2016 07:35 PM, 张开翔 wrote:
> Details
> =======
> 
> Product: libtiff
> Affected Versions: <= 4.0.6
> Vulnerability Type: illegel read
> Vendor URL: http://www.remotesensing.org/libtiff/
> Credit: Kaixiang Zhang of the Cloud Security Team, Qihoo 360
> CVE ID: CVE-2016-5321
> Tested system version:
>        fedora23 32bit
>        fedora23 64bit
>        CentOS Linux release 7.1.1503 64bit
> 
> 
> Introduction
> =======
> 
> It was always corrupted when I use tiffcrop command followed by a crafted TIFF image.The vulnerbility exists in fuction DumpModeDecode() whitout checking the value of output parameters, Attackers could exploit this issue to cause denial-of-service.
> 
> 
> Here is the stack info:
> gdb –args ./tiffcrop DumpModeDecode.tif tmpout.tif
> --- ---
> __memcpy_ssse3_back () at ../sysdeps/x86_64/multiarch/memcpy-ssse3-back.S:2709
> 2709                   movdqu    %xmm0, 36(%rdi)
> Program received signal SIGSEGV, Segmentation fault.
> __memcpy_ssse3_back () at ../sysdeps/x86_64/multiarch/memcpy-ssse3-back.S:2709
> 2709                   movdqu    %xmm0, 36(%rdi)
> (gdb) bt
> #0  __memcpy_ssse3_back () at ../sysdeps/x86_64/multiarch/memcpy-ssse3-back.S:2709
> #1  0x00007ffff7ad6a79 in DumpModeDecode (tif=0x662010, buf=<optimized out>, cc=52, s=<optimized out>) at tif_dumpmode.c:103
> #2  0x00007ffff7ba3739 in TIFFReadEncodedTile (tif=tif@entry=0x662010, tile=8, buf=0x0, size=52, size@entry=-1) at tif_read.c:668
> #3  0x00007ffff7ba3a01 in TIFFReadTile (tif=tif@entry=0x662010, buf=<optimized out>, x=x@entry=0, y=y@entry=0, z=z@entry=0, s=s@entry=8) at tif_read.c:641
> #4  0x0000000000443e41 in readSeparateTilesIntoBuffer (bps=208, spp=9, tl=1, tw=2, imagewidth=2, imagelength=1, obuf=0x662ce0 "\200\177\335\367\377\177", in=0x662010) at tiffcrop.c:994
> #5  loadImage (in=in@entry=0x662010, image=image@entry=0x7fffffff7960, dump=dump@entry=0x7fffffffc270, read_ptr=read_ptr@entry=0x7fffffff7920) at tiffcrop.c:6079
> #6  0x0000000000403209 in main (argc=<optimized out>, argv=<optimized out>) at tiffcrop.c:2278
> (gdb) p buf
> $6 = 0x0
> 
