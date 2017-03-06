X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1290" "Sunday" "5" "March" "2017" "21:16:22" "-0500" "Anthony Sasadeusz" "sasadeu1@umbc.edu" "<CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>" "32" "[oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" nil nil nil "3" "2017030602:16:22" "[oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)" (number mark "U       sasadeu1@umb Mar  5   32/1290  " thread-indent "\"[oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11487 invoked by uid 550); 6 Mar 2017 04:16:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19896 invoked from network); 6 Mar 2017 02:16:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umbc-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=dY8oTkUFTVXM5sVI0p6vhWe8Z8oMoWtzJv2ErDhGEkE=;
        b=jphGmTotpzV26U+owDPvemxQoE9CIs3QA3J73smcLZ3Hvulk2CD/f2iyPOhzX4d43Q
         SKcMdulb3qDXJqoAAMflN2uHIU/rSkbtkGgxDio2WF+xdN5agcO4YT6ulMjr3LscibzV
         AK4lflszGkNVTeRkrKqPTf4rBfR7aaVvQugPmPJqIAorNTaGCtBN+nlnGer59aZFKQDh
         Vvoh7iaNceAV8nu3mnxHuM7w4Y87rVOWKfzzc/FCyNF9WkQUTdro8U2/UNrJ0leWTkeX
         32RC9/Xk4VJ/aKVL5GwhYavI9SQ8ktkQZjP927yHSiAcSORx/E2/9xH4NsGfnXvSpNv7
         LjtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dY8oTkUFTVXM5sVI0p6vhWe8Z8oMoWtzJv2ErDhGEkE=;
        b=LDqpv9tTE/SsKmG3mliBPy4pjBHkcwOHXBn4KUPd+z5SCDhv9ukMVIwY9X+OKxmkHE
         hx9A9sqEVlVlvdsgov1tAcAMpjEfa+XZ5aYkZNLucia5/jathctCbTvDheop1l4D0bqy
         EUzxEadjfmZvF2rhcpYagcFHNIAV/HuMVdlCfTD7XrOIgldF7QVLJWEPPJsPxGZldFQW
         1AWI7su2tef4HeP4CKaRVqqomPQlbPcEbUHWGVFc46kZT9m9+c5rzugNgA4xUtJ78NKx
         nBoc2wU2hCc3C7ohrSH4KIbWf/AZUL7t4Pfat/7/M4Eu3E0jmVGSaYfm3NpX8bP5BbFA
         894A==
X-Gm-Message-State: AMke39mKj/vCZQioDL7VrgAQjVjI1CrBJ0pOslCkgEp/zwyKwOrJbvTJHF/eeKp+vlHt+zlfmDKZPFFsk3ZqY4Bc
X-Received: by 10.31.148.71 with SMTP id w68mr4503983vkd.87.1488766582767;
 Sun, 05 Mar 2017 18:16:22 -0800 (PST)
MIME-Version: 1.0
From: Anthony Sasadeusz <sasadeu1@umbc.edu>
Date: Sun, 5 Mar 2017 21:16:22 -0500
Message-ID: <CAH468doehvXuMkgF3caMFmia4K+dXJp5=6JFRTrkNGkHFiNoow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1142619051f50f054a067bc4
Subject: [oss-security] CVE-Request JasPer 2.0.12 NULL Pointer Dereference jp2_encode (jp2_enc.c)

--001a1142619051f50f054a067bc4
Content-Type: text/plain; charset=UTF-8

admin@ip-172-31-13-10:~/jasper/build-asan/src/appl$ ./jasper --input
../../../build-afl/src/appl/findings/crashes/id\:000000\,sig\:11\,src\:000002\,op\:havoc\,rep\:16
--output /dev/null --output-format jp2
ASAN:SIGSEGV
=================================================================
==16088==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
(pc 0x7f45f3104fe6 sp 0x7ffcd24052c0 bp 0x7ffcd24063d0 T0)
    #0 0x7f45f3104fe5 in jp2_encode
/home/admin/jasper/src/libjasper/jp2/jp2_enc.c:119
    #1 0x7f45f30de187 in jas_image_encode
/home/admin/jasper/src/libjasper/base/jas_image.c:471
    #2 0x402494 in main /home/admin/jasper/src/appl/jasper.c:277
    #3 0x7f45f2a1eb44 in __libc_start_main
(/lib/x86_64-linux-gnu/libc.so.6+0x21b44)
    #4 0x401908 (/home/admin/jasper/build-asan/src/appl/jasper+0x401908)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV
/home/admin/jasper/src/libjasper/jp2/jp2_enc.c:119 jp2_encode
==16088==ABORTING


This also happens on the latest master branch.
The repo: https://github.com/mdadams/jasper

Crashing inputs found with afl:
https://github.com/nullsector/jasper-fuzz/tree/master/testcases/crashes

--001a1142619051f50f054a067bc4--
