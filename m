X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/03/5
Message-ID: <1415009028.3552.40.camel@juliet.mcarpenter.org>
Date: Mon, 03 Nov 2014 11:03:48 +0100
From: Martin Carpenter <mcarpenter@...e.fr>
To: oss-security@...ts.openwall.com
Subject: unzip -l crasher
Content-Type: text/plain; charset=utf-8

[For symmetry with Jakub's post; NB not the same flag]

There is a BO in "unzip -l" via list_files() in list.c:

342                 sprintf(&methbuf[4], "%03u",
G.crec.compression_method);

("apt-get source unzip" on Ubuntu 14.04).

methbuf is an auto 8 char array:

118     min_info info;
119     char methbuf[8];
120     static ZCONST char dtype[]="NXFS";  /* see zi_short() */

*printf() field-width format specifiers don't restrict the length of the
output so you can probably affect other local variables with this.
min_info's first field is "offset" which sounds promising modulo
compiler choices/stack ordering/..., and max [probably] 6 bytes (length
of MAX_INT - 4) in just 0x30..0x39 available. I have a few reproducer
zips but I have not looked further at exploiting this. Fortify catches
this crash on both Red Hat and Ubuntu.

Although this is in the same area (compression) as the "unzip -t" thread
I don't think they are directly related: mancha's patch doesn't solve
this problem and "unzip -l unzip_t_malloc.zip" doesn't crash.

I'll drop a line to the InfoZip guys via their web interface so that
they see these two conversations.


Martin.

ps. found by "collateral damage" fuzzing dash(1) post shellshock :-7


