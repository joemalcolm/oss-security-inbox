X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7737" "Wednesday" "27" "July" "2016" "17:05:25" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160727150525.GA9279@eldamar.local>" "155" "[oss-security] CVE Request: DBD-mysql: use-after-free in mysql_dr_error" nil nil nil "7" "2016072715:05:25" "[oss-security] CVE Request: DBD-mysql: use-after-free in mysql_dr_error" (number mark "U       carnil@debia Jul 27  155/7737  " thread-indent "\"[oss-security] CVE Request: DBD-mysql: use-after-free in mysql_dr_error\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9988 invoked by uid 550); 27 Jul 2016 15:05:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9970 invoked from network); 27 Jul 2016 15:05:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gSbOxmyFPeqcMkatrLyKR5vgN1Gy5pZonZX6FE2AZpI=;
        b=f58CFqY86yvYIpYpza5eWj5vAygD/1zLXpfsad3RUCbmCJ56VFwPon84yTitPWx8xZ
         ABiqDs2lszWKoLjJD402UW5PC1LNoGduEa4S7eYNFqua7SwT1gk6wyPOT8OL3jNhiGBz
         MYQ0xtJbWdPystgKVD3tjhptKdj1Ke9XoxmCaHXwsO2eCQLHyL4Mr79SNigHfs7/5Ya2
         E19yoQJJ4endX50oS6/1W6rfq8kIUdGXJBkt2jsnHVVSkp4rdwsKDlZdGLIh06uBwW6h
         Tjrddb04C9vTVif+V2IuwL3tIaqEZtkncfHwsC+lqXIcimRX8wci3+FZ+uLpKsY2fn2A
         woEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=gSbOxmyFPeqcMkatrLyKR5vgN1Gy5pZonZX6FE2AZpI=;
        b=j/LDaZF1THEQgXR3fK/+f/uVR6cS+rfp9ymNwdJd9WCDkV3dMAmXm6jH/um3+wGMu2
         rJsvkFjVFfDUT15LczwICs/Rfd9b9eQsDZ0fQEg6OAFvEgtWpKuNBSeER9y314CzYim8
         Qs0V+wyG89szuNiBJdMQY3FDWLGVI1TtTtTtGwvd23v1XkXjlFsyFDUt7R/RxnepF5yk
         FS/0Yeg3b2HHXf8xa5fUESILY/7nYZMEFOC9bECZvDmJYDjMK9h1YX0Hv8/n6PpyceeX
         2h/CG6dTBQq1/FQK5QUxSEJibJEq87+lNxy7AfpZFINZEjldMZyAF18bV4SIvJAKbrGH
         gbsw==
X-Gm-Message-State: AEkooutETJSUlEetXATjwPVBN2KCh1t7dIFMP/qVW7V01vbVeRjDTuySnwNpxSXN8KcWfA==
X-Received: by 10.28.103.6 with SMTP id b6mr34639108wmc.89.1469631933422;
        Wed, 27 Jul 2016 08:05:33 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 27 Jul 2016 17:05:25 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160727150525.GA9279@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: DBD-mysql: use-after-free in mysql_dr_error

Hi

While looking at the fix for CVE-2015-8949 in DBD-mysql, I noticed
upstream ticket at:

https://rt.cpan.org/Public/Bug/Display.html?id=97625
https://github.com/perl5-dbi/DBD-mysql/pull/27

> On exceptions (usually dr_error) valgrind and -faddress-sanitizer find
> use-after-free in mysql_dr_error at sv_setpv(errstr, what) as errstr
> and errstate below was already freed.
> 
> I'm working on a patch.
> 
> repro with asan or valgrind, eg like this:
> 
> perl5.14.4d-nt Makefile --testuser=nosuchuser
> make
> valgrind perl5.14.4d-nt -Iblib/arch -Iblib/lib t/30insertfetch.t 
> 
> valgrind sample:
> 
> this one accesses MYSQL* sock in mysql_db_login after being freed in
> mysql_dr_connect
> 
> ==13578== Invalid read of size 4
> ==13578==    at 0x6C1C9B5: mysql_errno (in /usr/lib/x86_64-linux-gnu/libmysqlclient.so.18.0.0)
> ==13578==    by 0x69C8001: mysql_db_login (dbdimp.c:2099)
> ==13578==    by 0x69D2E3F: XS_DBD__mysql__db__login (mysql.xsi:104)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578==    by 0x44CC3F: Perl_call_sv (perl.c:2648)
> ==13578==    by 0x6165339: XS_DBI_dispatch (DBI.xs:3765)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578==    by 0x44BB39: S_run_body (perl.c:2366)
> ==13578==    by 0x44AF02: perl_run (perl.c:2284)
> ==13578==    by 0x41C4BC: main (perlmain.c:120)
> ==13578==  Address 0x6833c10 is 144 bytes inside a block of size 1,272 free'd
> ==13578==    at 0x40282F4: free (vg_replace_malloc.c:446)
> ==13578==    by 0x51172F: Perl_safesysfree (util.c:284)
> ==13578==    by 0x69C7AD0: mysql_dr_connect (dbdimp.c:1959)
> ==13578==    by 0x69C7E9D: my_login (dbdimp.c:2046)
> ==13578==    by 0x69C7FBE: mysql_db_login (dbdimp.c:2097)
> ==13578==    by 0x69D2E3F: XS_DBD__mysql__db__login (mysql.xsi:104)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578==    by 0x44CC3F: Perl_call_sv (perl.c:2648)
> ==13578==    by 0x6165339: XS_DBI_dispatch (DBI.xs:3765)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578== 
> 
> this one accesses imp_xxh->com.attr.Errstr in mysql_db_login after
> being freed in mysql_dr_connect.
> 
> ==13578== Invalid read of size 1
> ==13578==    at 0x402A062: strlen (mc_replace_strmem.c:399)
> ==13578==    by 0x5B0F38: Perl_sv_setpv (sv.c:4568)
> ==13578==    by 0x69C4C5C: mysql_dr_error (dbdimp.c:1441)
> ==13578==    by 0x69C8015: mysql_db_login (dbdimp.c:2099)
> ==13578==    by 0x69D2E3F: XS_DBD__mysql__db__login (mysql.xsi:104)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578==    by 0x44CC3F: Perl_call_sv (perl.c:2648)
> ==13578==    by 0x6165339: XS_DBI_dispatch (DBI.xs:3765)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578==    by 0x44BB39: S_run_body (perl.c:2366)
> ==13578==  Address 0x6833c17 is 151 bytes inside a block of size 1,272 free'd
> ==13578==    at 0x40282F4: free (vg_replace_malloc.c:446)
> ==13578==    by 0x51172F: Perl_safesysfree (util.c:284)
> ==13578==    by 0x69C7AD0: mysql_dr_connect (dbdimp.c:1959)
> ==13578==    by 0x69C7E9D: my_login (dbdimp.c:2046)
> ==13578==    by 0x69C7FBE: mysql_db_login (dbdimp.c:2097)
> ==13578==    by 0x69D2E3F: XS_DBD__mysql__db__login (mysql.xsi:104)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ==13578==    by 0x44CC3F: Perl_call_sv (perl.c:2648)
> ==13578==    by 0x6165339: XS_DBI_dispatch (DBI.xs:3765)
> ==13578==    by 0x57C4AB: Perl_pp_entersub (pp_hot.c:3046)
> ==13578==    by 0x510BC2: Perl_runops_debug (dump.c:2266)
> ...
> 
> 
> asan sample:
> 
> =================================================================
> ==19289==ERROR: AddressSanitizer: heap-use-after-free on address 0x61a000017517 at pc 0x4566a6 bp 0x7fffa3b3c6b0 sp 0x7fffa3b3c688
> READ of size 69 at 0x61a000017517 thread T0
>     #0 0x4566a5 in __interceptor_strlen (/usr/local/bin/perl5.21.2d-nt-asan@ed9113fa+0x4566a5)
>     #1 0x7fc292e0fbe1 in Perl_sv_setpv /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/sv.c:4772
>     #2 0x7fc28de0fe96 in mysql_dr_error /home/rurban/Perl/DBD-mysql/dbdimp.c:1441
>     #3 0x7fc28de2f2f6 in mysql_db_login /home/rurban/Perl/DBD-mysql/dbdimp.c:2099
>     #4 0x7fc28de91793 in XS_DBD__mysql__db__login /home/rurban/Perl/DBD-mysql/./mysql.xsi:104
>     #5 0x7fc292cbdf03 in Perl_pp_entersub /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/pp_hot.c:2784
>     #6 0x7fc2929b16ba in Perl_runops_debug /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/dump.c:2361
>     #7 0x7fc29230b117 in Perl_call_sv /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/perl.c:2707
>     #8 0x7fc28e406455 in XS_DBI_dispatch /home/rurban/.cpan/build/DBI-1.631-PzCBar/DBI.xs:3765
>     #9 0x7fc292cbdf03 in Perl_pp_entersub /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/pp_hot.c:2784
>     #10 0x7fc2929b16ba in Perl_runops_debug /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/dump.c:2361
>     #11 0x7fc292301a85 in S_run_body /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/perl.c:2408
>     #12 0x7fc2922fd5a2 in perl_run /home/rurban/Perl/src/build-5.21.2d-nt-asan@ed9113fa/perl.c:2331
>     #13 0x47b95f in main /usr/src/perl/build-5.21.2d-nt-asan@ed9113fa/perlmain.c:114
>     #14 0x7fc291147b44 (/lib/x86_64-linux-gnu/libc.so.6+0x21b44)
>     #15 0x47b2dc in _start (/usr/local/bin/perl5.21.2d-nt-asan@ed9113fa+0x47b2dc)
> 
> 0x61a000017517 is located 151 bytes inside of 1272-byte region [0x61a000017480,0x61a000017978)
> freed by thread T0 here:
>     #0 0x465079 in __interceptor_free (/usr/local/bin/perl5.21.2d-nt-asan@ed9113fa+0x465079)
> 
> previously allocated by thread T0 here:
>     #0 0x4652c9 in calloc (/usr/local/bin/perl5.21.2d-nt-asan@ed9113fa+0x4652c9)
> 
> SUMMARY: AddressSanitizer: heap-use-after-free ??:0 __interceptor_strlen
> Shadow bytes around the buggy address:
>   0x0c347fffae50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   0x0c347fffae60: 00 00 00 00 02 fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffae70: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffae80: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c347fffae90: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
> =>0x0c347fffaea0: fd fd[fd]fd fd fd fd fd fd fd fd fd fd fd fd fd
>   0x0c347fffaeb0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
>   0x0c347fffaec0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
>   0x0c347fffaed0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
>   0x0c347fffaee0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
>   0x0c347fffaef0: fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd fd
> Shadow byte legend (one shadow byte represents 8 application bytes):
>   Addressable:           00
>   Partially addressable: 01 02 03 04 05 06 07 
>   Heap left redzone:     fa
>   Heap right redzone:    fb
>   Freed heap region:     fd
>   Stack left redzone:    f1
>   Stack mid redzone:     f2
>   Stack right redzone:   f3
>   Stack partial redzone: f4
>   Stack after return:    f5
>   Stack use after scope: f8
>   Global redzone:        f9
>   Global init order:     f6
>   Poisoned by user:      f7
>   ASan internal:         fe
> ==19289==ABORTING

addressed with commit:

https://github.com/perl5-dbi/DBD-mysql/commit/a56ae87a4c1c1fead7d09c3653905841ccccf1cc

and included in 4.029.

Can this get a separate CVE?

Regards,
Salvatore
