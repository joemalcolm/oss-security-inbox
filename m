X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5944" "Friday" "22" "April" "2016" "00:41:15" "+0700" "Hans Jerry Illikainen" "hji@dyntopia.com" "<m1eg9yx3k4.darpa@darpa.mil>" "243" "[oss-security] CVE-2016-3074: libgd: signedness vulnerability" nil nil nil "4" "2016042117:41:15" "[oss-security] CVE-2016-3074: libgd: signedness vulnerability" (number mark "U       hji@dyntopia Apr 22  243/5944  " thread-indent "\"[oss-security] CVE-2016-3074: libgd: signedness vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28103 invoked by uid 550); 21 Apr 2016 17:40:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28085 invoked from network); 21 Apr 2016 17:40:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version;
        bh=yqBHFxF+jTL6yjxgfwBSdv3pKUrOd5QMFFL4LGAyzos=;
        b=fh9/U0arBSAqubgTTGfOAdWtESCB4SktmAV4W7/nAYdIuJnUTS4mIuc26rnqOZzyB8
         i0tyNLx9kZ7RmaC6ACK9EuD3zZcX8AWa2iQW34d7hbR8CBSeelVzy99d/b3KURQl48+D
         jrtrNhMJ1ejfPQ91UVZbm9C04KohfiOYEor3tjfHyF0qRGOKcVuEu0RIx1bp3qx4NlUg
         iilyPhwvkdjBF2mbvGr9PlfYyyLiPgaMZIr9lm2C2aN8VArTD1ZpIiuw3B9vV5fkSCBG
         8OnzmpuVuUi4vhJ3Ezr29/dJz/6Kdbp8YXBRAKb61bPv/3aICbqcJB8gw4exUzEUNs6y
         EEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
        bh=yqBHFxF+jTL6yjxgfwBSdv3pKUrOd5QMFFL4LGAyzos=;
        b=OnodHg3eaWL/qvaEdGBI1ZWltSH5N99/V5Rd+Rshy2bbMdNwBHVVZrS7NQ3oEDs4lM
         qclHClaZiIXUly7QgEpPAraxh0TCi5Lxo0Fp/Ds5pmNe5/tU3b0q1ogdZlkWuwkxqXUn
         i1wHsgJt25/xJcYg1Bre192YkUtDb/68BI7326CnJFjGyfEvtNwrwesvIrpzFsgV5Q2V
         xgXHzh9LV98hynsu58KhcCM8Mvb9os9QtONGG87svJcJIgUNFCIlzTwDfAhN2rM7fmSF
         K/T/YdewgkrXCVbGWWupToQ4tHxAub+dc4zCoAzHckkXRU61+ddIAOpkfdLSU94c4+yl
         3D5A==
X-Gm-Message-State: AOPr4FXTGm7Z0VRFsGcGeqZ0aaBBIMcWpk3g7YNvzAr+zt47vm4WdUsI6lpl+vtDclQx3Q==
X-Received: by 10.28.55.139 with SMTP id e133mr16565742wma.98.1461260447697;
        Thu, 21 Apr 2016 10:40:47 -0700 (PDT)
From: Hans Jerry Illikainen <hji@dyntopia.com>
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, oss-security@lists.openwall.com
Date: Fri, 22 Apr 2016 00:41:15 +0700
Message-ID: <m1eg9yx3k4.darpa@darpa.mil>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2016-3074: libgd: signedness vulnerability

Overview
========

libgd [1] is an open-source image library.  It is perhaps primarily used
by the PHP project.  It has been bundled with the default installation
of PHP since version 4.3 [2].

A signedness vulnerability (CVE-2016-3074) exist in libgd 2.1.1 which
may result in a heap overflow when processing compressed gd2 data.


Details
=======

4 bytes representing the chunk index size is stored in a signed integer,
chunkIdx[i].size, by `gdGetInt()' during the parsing of GD2 headers:

libgd-2.1.1/src/gd_gd2.c:
,----
|  53 typedef struct {
|  54     int offset;
|  55     int size;
|  56 }
|  57 t_chunk_info;
`----

libgd-2.1.1/src/gd_gd2.c:
,----
|  65 static int
|  66 _gd2GetHeader (gdIOCtxPtr in, int *sx, int *sy,
|  67                int *cs, int *vers, int *fmt, int *ncx, int *ncy,
|  68                t_chunk_info ** chunkIdx)
|  69 {
| ...
|  73     t_chunk_info *cidx;
| ...
| 155     if (gd2_compressed (*fmt)) {
| ...
| 163         for (i = 0; i < nc; i++) {
| ...
| 167             if (gdGetInt (&cidx[i].size, in) != 1) {
| 168                 goto fail2;
| 169             };
| 170         };
| 171         *chunkIdx = cidx;
| 172     };
| ...
| 181 }
`----

`gdImageCreateFromGd2Ctx()' and `gdImageCreateFromGd2PartCtx()' then
allocates memory for the compressed data based on the value of the
largest chunk size:

libgd-2.1.1/src/gd_gd2.c:
,----
| 371|637     if (gd2_compressed (fmt)) {
| 372|638         /* Find the maximum compressed chunk size. */
| 373|639         compMax = 0;
| 374|640         for (i = 0; (i < nc); i++) {
| 375|641             if (chunkIdx[i].size > compMax) {
| 376|642                 compMax = chunkIdx[i].size;
| 377|643             };
| 378|644         };
| 379|645         compMax++;
| ...|...
| 387|656         compBuf = gdCalloc (compMax, 1);
| ...|...
| 393|661     };
`----

A size of <= 0 results in `compMax' retaining its initial value during
the loop, followed by it being incremented to 1.  Since `compMax' is
used as the nmemb for `gdCalloc()', this leads to a 1*1 byte allocation
for `compBuf'.

This is followed by compressed data being read to `compBuf' based on the
current (potentially negative) chunk size:

libgd-2.1.1/src/gd_gd2.c:
,----
| 339 BGD_DECLARE(gdImagePtr) gdImageCreateFromGd2Ctx (gdIOCtxPtr in)
| 340 {
| ...
| 413         if (gd2_compressed (fmt)) {
| 414
| 415             chunkLen = chunkMax;
| 416
| 417             if (!_gd2ReadChunk (chunkIdx[chunkNum].offset,
| 418                                 compBuf,
| 419                                 chunkIdx[chunkNum].size,
| 420                                 (char *) chunkBuf, &chunkLen, in)) {
| 421                 GD2_DBG (printf ("Error reading comproessed chunk\n"));
| 422                 goto fail;
| 423             };
| 424
| 425             chunkPos = 0;
| 426         };
| ...
| 501 }
`----


libgd-2.1.1/src/gd_gd2.c:
,----
| 585 BGD_DECLARE(gdImagePtr) gdImageCreateFromGd2PartCtx (gdIOCtx * in, int srcx, int srcy, int w, int h)
| 586 {
| ...
| 713         if (!gd2_compressed (fmt)) {
| ...
| 731         } else {
| 732             chunkNum = cx + cy * ncx;
| 733
| 734             chunkLen = chunkMax;
| 735             if (!_gd2ReadChunk (chunkIdx[chunkNum].offset,
| 736                                 compBuf,
| 737                                 chunkIdx[chunkNum].size,
| 738                                 (char *) chunkBuf, &chunkLen, in)) {
| 739                 printf ("Error reading comproessed chunk\n");
| 740                 goto fail2;
| 741             };
| ...
| 746         };
| ...
| 815 }
`----

The size is subsequently interpreted as a size_t by `fread()' or
`memcpy()', depending on how the image is read:

libgd-2.1.1/src/gd_gd2.c:
,----
| 221 static int
| 222 _gd2ReadChunk (int offset, char *compBuf, int compSize, char *chunkBuf,
| 223            uLongf * chunkLen, gdIOCtx * in)
| 224 {
| ...
| 236     if (gdGetBuf (compBuf, compSize, in) != compSize) {
| 237         return FALSE;
| 238     };
| ...
| 251 }
`----

libgd-2.1.1/src/gd_io.c:
,----
| 211 int gdGetBuf(void *buf, int size, gdIOCtx *ctx)
| 212 {
| 213     return (ctx->getBuf)(ctx, buf, size);
| 214 }
`----


For file contexts:

libgd-2.1.1/src/gd_io_file.c:
,----
|  52 BGD_DECLARE(gdIOCtx *) gdNewFileCtx(FILE *f)
|  53 {
| ...
|  67     ctx->ctx.getBuf = fileGetbuf;
| ...
|  76 }
| ...
|  92 static int fileGetbuf(gdIOCtx *ctx, void *buf, int size)
|  93 {
|  94     fileIOCtx *fctx;
|  95     fctx = (fileIOCtx *)ctx;
|  96
|  97     return (fread(buf, 1, size, fctx->f));
|  98 }
`----


And for dynamic contexts:

libgd-2.1.1/src/gd_io_dp.c:
,----
|  74 BGD_DECLARE(gdIOCtx *) gdNewDynamicCtxEx(int initialSize, void *data, int freeOKFlag)
|  75 {
| ...
|  95     ctx->ctx.getBuf = dynamicGetbuf;
| ...
| 104 }
| ...
| 256 static int dynamicGetbuf(gdIOCtxPtr ctx, void *buf, int len)
| 257 {
| ...
| 280     memcpy(buf, (void *) ((char *)dp->data + dp->pos), rlen);
| ...
| 284 }
`----


PoC
===

Against Ubuntu 15.10 amd64 running nginx with php5-fpm and php5-gd [3]:

,----
| $ python exploit.py --bind-port 5555 http://1.2.3.4/upload.php
| [*] this may take a while
| [*] offset 912 of 10000...
| [+] connected to 1.2.3.4:5555
| id
| uid=33(www-data) gid=33(www-data) groups=33(www-data)
| 
| uname -a
| Linux wily64 4.2.0-35-generic #40-Ubuntu SMP Tue Mar 15 22:15:45 UTC
| 2016 x86_64 x86_64 x86_64 GNU/Linux
| 
| dpkg -l|grep -E "php5-(fpm|gd)"
| ii  php5-fpm       5.6.11+dfsg-1ubuntu3.1 ...
| ii  php5-gd        5.6.11+dfsg-1ubuntu3.1 ...
| 
| cat upload.php
| <?php
|     imagecreatefromgd2($_FILES["file"]["tmp_name"]);
| ?>
`----


Solution
========

This bug has been fixed in git HEAD [4].



Footnotes
_________

[1] [http://libgd.org/]

[2] [https://en.wikipedia.org/wiki/Libgd]

[3] [https://github.com/dyntopia/exploits/tree/master/CVE-2016-3074]

[4] [https://github.com/libgd/libgd/commit/2bb97f407c1145c850416a3bfbcc8cf124e68a19]


-- 
Hans Jerry Illikainen
