X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1432" "Monday" "6" "March" "2017" "09:06:00" "+0100" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<57f09f12-2cf9-a77b-86d9-1f981fc10930@gmail.com>" "35" "Re: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" nil nil nil "3" "2017030608:06:00" "[oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" (number mark "U       pochu27@gmai Mar  6   35/1432  " thread-indent "\"Re: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)\"\n") "<CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>" ("<CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17648 invoked by uid 550); 6 Mar 2017 08:39:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26006 invoked from network); 6 Mar 2017 08:06:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=jKIa9x8ai5N1F6gtDes5P6KoTjlc1cMVLQOk5gT7dNI=;
        b=E413kYw9nMAOewCjjIzo7UoCQzuAHxQ/0/9igCawP8DvNULhmBamGVElmNK44EkSjW
         eQNbqaA1ZYim69pf4Hv9q3HlfEuo7Lyd6mzice13eydm9zs160OCGoq4UoEC/8O/TFkR
         tOv1Ctz07UciIPE5AoWUHFMsbVa1fC1OKaySwwsgKQCFUPxGyOdEpQHRg8Lk6xxSWmX9
         ldsPHNwcUqDHLakwj8EQVa2oWjSI5FY89IG8YF3sLESNlbYK7qmQwiIvtGQJlDNe/xzn
         6wXp0ooLVL4f/L/eTIxgJXL8kNKC/tCPyxdFZdMdYRPCmyguKM1H4Kn06jOXv2M5v0b/
         ob/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=jKIa9x8ai5N1F6gtDes5P6KoTjlc1cMVLQOk5gT7dNI=;
        b=g97CVNVUxE/swhJ3EX48tAwbk1aTU/o3PXaGIanM2tRNRcTJqe5KY6PRFrsfAC+rXm
         n2SsvLX+U6NDm+MP8+R2sEfgZIvz6fnCuRm42dYPwmHk3WEnD5OmgpG7K3/db1HvC2Jz
         JSjVTqDlK5cOiDjFkXmhVK4696+kQxIf9067dpK1jKsmkwWlWxz3lgJF1u3KgI3dH9tK
         LS8jIza1sr11glr4w38T+ORrT2elEbIOODLX1C6ANOsAtHaJGqa+xzo8xeVldm9GDwVo
         rOiVVIMoGSHdeeXKeL+9g4qKEpbIz17j/aDfDPrh4BX06jX2aPCmLUbjO7B7mlLVH2BU
         QUiA==
X-Gm-Message-State: AMke39nQXKc6LixIQ3srLCUZotX5SH7zzksTuGaA8Jjsc8N4NiPwVmRJtAzFVd53eym4jw==
X-Received: by 10.223.151.217 with SMTP id t25mr14809499wrb.95.1488787562361;
        Mon, 06 Mar 2017 00:06:02 -0800 (PST)
To: oss-security@lists.openwall.com
References: <CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Message-ID: <57f09f12-2cf9-a77b-86d9-1f981fc10930@gmail.com>
Date: Mon, 6 Mar 2017 09:06:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference
 jp2_encode (jp2_enc.c)

On 06/03/17 03:16, Anthony Sasadeusz wrote:
> admin@ip-172-31-13-10:~/jasper/build-asan/src/appl$ ./jasper --input
> ../../../build-afl/src/appl/findings/crashes/id\:000000\,sig\:11\,src\:000002\,op\:havoc\,rep\:16
> --output /dev/null --output-format jp2
> ASAN:SIGSEGV
> =================================================================
> ==16088==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
> (pc 0x7f45f3104fe6 sp 0x7ffcd24052c0 bp 0x7ffcd24063d0 T0)
>     #0 0x7f45f3104fe5 in jp2_encode
> /home/admin/jasper/src/libjasper/jp2/jp2_enc.c:119
>     #1 0x7f45f30de187 in jas_image_encode
> /home/admin/jasper/src/libjasper/base/jas_image.c:471
>     #2 0x402494 in main /home/admin/jasper/src/appl/jasper.c:277
>     #3 0x7f45f2a1eb44 in __libc_start_main
> (/lib/x86_64-linux-gnu/libc.so.6+0x21b44)
>     #4 0x401908 (/home/admin/jasper/build-asan/src/appl/jasper+0x401908)
> 
> AddressSanitizer can not provide additional info.
> SUMMARY: AddressSanitizer: SEGV
> /home/admin/jasper/src/libjasper/jp2/jp2_enc.c:119 jp2_encode
> ==16088==ABORTING
> 
> 
> This also happens on the latest master branch.
> The repo: https://github.com/mdadams/jasper
> 
> Crashing inputs found with afl:
> https://github.com/nullsector/jasper-fuzz/tree/master/testcases/crashes

You should request CVEs at http://cveform.mitre.org/ these days.

Also it'd be good if you opened an upstream bug report about this.

Cheers,
Emilio
