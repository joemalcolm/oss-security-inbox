X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/28/2
Message-ID: <CABcHV3xszyuauXtLayGq7SiipJxG2OS3YXVgBNuhXgP-hR6EUg@mail.gmail.com>
Date: Thu, 28 Apr 2016 15:12:21 +0700
From: Luật Nguyễn <manhluat93.php@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE Requests] PHP issues
Content-Type: text/plain; charset=utf-8

Hi folks,

There are flaws which are various type (heap corruption, heap
overflow, Uninitialized pointer)  in PHP from previous version we
might miss.

1. Heap corruption in tar/zip/phar parser
https://bugs.php.net/bug.php?id=71354

2. Uninitialized pointer in phar_make_dirstream()
https://bugs.php.net/bug.php?id=71331

3. Multiple Heap Overflow due to integer overflows | xml/filter_url/addcslashes
https://bugs.php.net/bug.php?id=71637


Those 2nd, 3rd may let attackers with crafted PHAR file could
potentially remote code execute without specific PHP script.

Could we assign CVE for these ? :)


References:
http://php.net/ChangeLog-7.php
http://php.net/ChangeLog-5.php



Thank you && Regards.
Luat.
